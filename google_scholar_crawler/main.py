import json
import os
import sys
from datetime import datetime

from scholarly import scholarly


def fetch_author(author_id: str):
    """Fetch author data from Google Scholar in a safe way.

    Returns the author dict on success, or None on any error.
    """
    try:
        if not author_id:
            print("GOOGLE_SCHOLAR_ID is not set; skip citation update.", file=sys.stderr)
            return None

        author = scholarly.search_author_id(author_id)
        if not author:
            print(f"No author found for ID '{author_id}'; skip citation update.", file=sys.stderr)
            return None

        # This is where the library often breaks when Google changes HTML.
        # Wrap it so that any parsing error doesn't fail the whole workflow.
        scholarly.fill(author, sections=["basics", "indices", "counts", "publications"])
        return author
    except Exception as exc:
        print(f"Error while fetching Google Scholar data: {exc}", file=sys.stderr)
        return None


def main():
    author_id = os.environ.get("GOOGLE_SCHOLAR_ID", "").strip()
    author = fetch_author(author_id)

    # If anything went wrong, just exit successfully without updating files
    # so that the GitHub Action does not turn red every day.
    if not author:
        return

    author["updated"] = str(datetime.now())
    # Re‑index publications by id (the rest of the site expects this format)
    author["publications"] = {v["author_pub_id"]: v for v in author.get("publications", [])}

    print(json.dumps(author, indent=2, ensure_ascii=False))

    os.makedirs("results", exist_ok=True)

    with open("results/gs_data.json", "w", encoding="utf-8") as outfile:
        json.dump(author, outfile, ensure_ascii=False)

    shieldio_data = {
        "schemaVersion": 1,
        "label": "citations",
        "message": f"{author.get('citedby', 0)}",
    }
    with open("results/gs_data_shieldsio.json", "w", encoding="utf-8") as outfile:
        json.dump(shieldio_data, outfile, ensure_ascii=False)


if __name__ == "__main__":
    main()

