---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<head>
    <link rel="stylesheet" href="bootstrap.min.css">
    <style>
	:root {
	  --theme-color: #EC707D; /* 确保这是一个有效的颜色 */
	  --venue-bg-color: rgb(108, 149, 181);
	}
	    
	g {
		color: #aaaaaa
	}

	 pt {
		/* color:chocolate; */
		/* color:#c50e0e; */
		color: var(--title-color);
		/* color:tomato; */
		font-weight: 500;
	}

	 em {
		font-style: italic;
	}

	 venue {
		/* background-color:royalblue; */
		/* background-color:rgb(80, 80, 80); */
		/* background-color: #d1a7a7; */
		/* background-color: #ca3737; */
		background-color: #EC707D;
		/* background-color: rgb(217, 229, 244); */
		/* color: rgb(16, 68, 158); */
		color: #ffffff;
		/* font-family: 'Nunito'; */
		font-size: 70%;
		font-weight: bold;
		line-height: 170%;
		/* padding-left: 1em;
		padding-right: 1em; */
		margin-right: 0.25em;
		width: 5em;
		display:inline-block;
		text-align: center;
		/* border-color: #ffffff; */
		border-width: 0px;
		border-style: none;
		border-radius: 0.1rem;
		/* -webkit-box-shadow:0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
		box-shadow:0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12); */
		/* border-radius: 4px; */
		/* -webkit-box-shadow:inset 0px 0px 0px 0.25em #fff;
	    -moz-box-shadow:inset 0px 0px 0px 0.25em #fff;
	    box-shadow:inset 0px 0px 0px 0.25em #fff; */
		/* border: #ffffff; */
		height: 1.7em;
		vertical-align:text-bottom;
		margin-bottom: 0.1em;
		/* letter-spacing: 0.1cap; */
	}

	 venue1 {
		/* background-color:royalblue; */
		/* background-color:rgb(80, 80, 80); */
		/* background-color: #d1a7a7; */
		/* background-color: #ca3737; */
		background-color: var(--venue-bg-color);
		/* background-color: rgb(217, 229, 244); */
		/* color: rgb(16, 68, 158); */
		color: #ffffff;
		/* font-family: 'Nunito'; */
		font-size: 70%;
		font-weight: bold;
		line-height: 170%;
		/* padding-left: 1em;
		padding-right: 1em; */
		margin-right: 0.25em;
		width: 5em;
		display:inline-block;
		text-align: center;
		/* border-color: #ffffff; */
		border-width: 0px;
		border-style: none;
		border-radius: 0.1rem;
		/* -webkit-box-shadow:0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
		box-shadow:0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12); */
		/* border-radius: 4px; */
		/* -webkit-box-shadow:inset 0px 0px 0px 0.25em #fff;
	    -moz-box-shadow:inset 0px 0px 0px 0.25em #fff;
	    box-shadow:inset 0px 0px 0px 0.25em #fff; */
		/* border: #ffffff; */
		height: 1.7em;
		vertical-align:text-bottom;
		margin-bottom: 0.1em;
		/* letter-spacing: 0.1cap; */
	}
 
	.filter {
		color: var(--color);
		background-color: #fff;
		border: var(--border);
		border-style: solid;
		border-radius: 0.2rem;
		border-width: 1.5px;
		transition: all .3s;
		touch-action: manipulation;
		font-size: 80%;
		line-height: 120%;
		/* width: 5em; */
	}
	
	.filter:focus {
		color: #171e29;
	}
	  
	  .filter:hover {
		border-color: var(--theme-color);
		color: white;
		background-color: var(--theme-color);
		fill: var(--theme-color);
	  }
	  
	  .filter:active {
		border-color: var(--theme-color);
		color: var(--theme-color);
		fill: var(--theme-color);
	  }
	  
	.button-59 {
	  align-items: center;
	  background-color: #fff;
	  border: 1px solid #dadada;
	  box-sizing: border-box;
	  color: #000000;
	  cursor: pointer;
	  display: inline-block; /* 修改为 inline-block */
	  fill: #000;
	  font-family: 'Nunito';
	  font-size: 0.7rem;
	  height: 1.1rem;
	  justify-content: center;
	  line-height: 1.3;
	  min-width: 60px; /* 增加最小宽度 */
	  outline: 0;
	  padding: 0 10px; /* 增加左右内边距 */
	  text-align: center;
	  text-decoration: none;
	  transition: color .3s, background-color .3s, border-color .3s; /* 限制过渡范围 */
	  user-select: none;
	  -webkit-user-select: none;
	  touch-action: manipulation;
	  margin-right: 0.2em;
	  border-radius: 0.2rem;
	}
	
	.button-59:hover {
	  border-color: var(--theme-color);
	  color: #fff;
	  fill: var(--theme-color);
	  background-color: var(--theme-color);
	  text-decoration: none;
	}
	
	.button-59:active {
	  border-color: var(--theme-color);
	  color: #fff;
	  fill: var(--theme-color);
	  background-color: var(--theme-color);
	}
	
	@media (min-width: 768px) {
	  .button-59 {
	    padding-left: 5px;
	    padding-right: 5px;
	  }
	}
    </style>
    <script>
        try{
            if (window.screen.width < 700) {
                setActiveStyleSheet("jemdoc_mobile.css"); 
            } 
            else if(/iPad/i.test(navigator.userAgent)){ 
                setActiveStyleSheet("jemdoc.css"); 
            } 
            else{
                setActiveStyleSheet("jemdoc.css"); 
            } 
        } 
        catch(e){} 
	
        function setActiveStyleSheet(filename){
            document.write("<link href="+filename+" rel=stylesheet>");
        }

        function checkFilter(type, li) {
            if (type == "All") {
                return true
            }
            else if (type == "First-authored") {
                res = li.getAttribute("first_authored")
                return res
            }
            else {
                cate = li.getAttribute("category")
                if (!cate) {
                    return false
                }
                items = cate.split(',')
                for (j = 0; j < items.length; j++) {
                    console.log(items[j])
                    if (type.toUpperCase() == items[j].toUpperCase()) {
                        return true
                    }
                }
                return false
            }
        }

        function filterPub(type) {
            ul = document.getElementById("publications")
            li = ul.getElementsByTagName("li")
            for (i = 0; i < li.length; i++) {
                if (!checkFilter(type, li[i])) {
                    li[i].style.display = "none";
                }
                else {
                    li[i].style.display = ""
                }
            }
            // change the button color
            bts = document.getElementsByClassName("filter")
            for (k = 0; k < bts.length; k++) {
                if (bts[k].textContent == type) {
                    bts[k].style.setProperty("--color", "#000")
                    bts[k].style.setProperty("--border", "#000")
                    // bts[k].style.color = "#000"
                }
                else {
                    bts[k].style.setProperty("--color", "#a0a0a0")
                    bts[k].style.setProperty("--border", "#d3d3d3")
                    // bts[k].style.color = "#a0a0a0"
                }
            }
        }

    </script>

    <script>
        // import data from './bibtex.json' assert { type: 'json' };

        function getBibTex(key) {
            prompt("You can copy the text manually.", data[key]);
        }
    </script>
</head>

<span class='anchor' id='about-me'></span>

# 👤 Biography

我是**刘启慧**，[**中国科学院上海微系统与信息技术研究所**](http://www.sim.ac.cn/)（SIMIT）**传感器技术全国重点实验室** **特别研究助理**（上海市“超级博士后”）。合作导师[**武震宇**](https://people.ucas.ac.cn/~zwu)研究员、[**陈浩**](https://sim.cas.cn/dwjs2016/zgjrc/cgqjs/202601/t20260123_8118370.html)研究员，博士导师[**程建功**](https://sim.cas.cn/dwjs2016/zgjrc/cgqjs/202505/t20250509_7648124.html)研究员。研究方向为**先进电磁传感器及应用**，专业为**微电子学与固体电子学**。欢迎通过邮件或侧栏链接与我联系。

I am **Liu Qihui** (刘启慧), a **Special Research Assistant** (Shanghai "Super Postdoc") at the **National Key Laboratory of Sensor Technology**, [**Shanghai Institute of Microsystem and Information Technology (SIMIT)**](http://www.sim.ac.cn/), Chinese Academy of Sciences. My research focuses on **advanced electromagnetic sensors and applications** (Microelectronics and Solid-State Electronics). Please feel free to reach out via email or the links in the sidebar.

<div class="highlight-blocks">
  <div class="highlight-block">
    <h3>🔬 Research Interests</h3>
    <ul>
      <li><strong>先进电磁传感器及应用</strong> / Advanced electromagnetic sensors and applications</li>
      <li>钻石量子传感器、量子电流/磁场测量、MEMS 磁测量、光纤集成传感</li>
	  <li>应用：全球首套±800kV特高压量子电流传感器</li>
    </ul>
  </div>

  <div class="highlight-block">
    <h3>☎️ Contact</h3>
    <ul>
      <li><strong>单位:</strong> 中国科学院上海微系统与信息技术研究所，传感器技术全国重点实验室，上海</li>
      <li><strong>Email:</strong> <a href="mailto:liuqihui@mail.sim.ac.cn">liuqihui@mail.sim.ac.cn</a></li>
      <li><strong>手机:</strong> 151-7391-6476</li>
      <li><strong>籍贯:</strong> 湖南</li>
    </ul>
  </div>
</div>

<span class='anchor' id='-教育经历--education'></span>
<span class='anchor' id='-教育及工作经历--education--experience'></span>

# 🎓 Education & Experience

- **2025.07–至今** &nbsp; [**中科院上海微系统与信息技术研究所**](http://www.sim.ac.cn/) · 传感器技术全国重点实验室 · **特别研究助理**（上海市“超级博士后”、制造业智能化解决方案创新大赛技术创新奖）
- **2021.09–2025.06** &nbsp; 中科院上海微系统与信息技术研究所 · 微电子学与固体电子学 · **工学博士**（国家奖学金（博士）、三好学生、上海市优秀毕业生、中国科学院院长优秀奖）
- **2016.09–2020.07** &nbsp; **湖南大学** · 电子科学与技术 · **工学学士**（国家奖学金、学生会主席）

<br>

<span class='anchor' id='-动态--news'></span>

# 🔥 News

<div id="news" class="w3-container w3-margin-top-2 w3-cursive">
  <div style="height:200px; width:100%; overflow:auto;">
    <p>[2026.01] 一篇论文被 **TRANSDUCERS 2025** 接收，在美国奥兰多作会议 **Oral** 报告。</p>
    <p>[2025.12] 获第二届制造业智能化解决方案创新大赛**技术创新奖**。</p>
    <p>[2025.12] 获上海市「**超级博士后**」资助。</p>
	<p>[2025.08] 获“上海市优秀毕业生”荣誉。</p>
    <p>[2025.07] 入职中科院上海微系统与信息技术研究所，任传感器技术全国重点实验室特别研究助理。</p>
    <p>[2025.06] 于中科院上海微系统与信息技术研究所获工学博士学位。</p>
    
  </div>
</div>

<br>

<span class='anchor' id='-发表论文--publications'></span>

# 📝 Publications

## Journal Papers

<ul id="publications">
  <li category="Journal" first_authored="true">Wang N, Xue W, Peng X, Zhu Y, Xu C, Hu Y, Chen D, Su Y, Wang L, Liu Y, <u><strong>Liu Q</strong></u>*, Wu Z, Chen H. Closed-loop Laser Noise Suppression with a Variable Optical Attenuator for Fiber-integrated Diamond Quantum Sensor. <em>Journal of Physics D: Applied Physics</em>, 2026.</li>
  <li category="Journal" first_authored="true"><u><strong>Liu Q</strong></u>, Nie S, Peng X, Zhu Y, Wang N, Hu Y, Luo X, Li C, Jing M, Zhang C, Liu W, Chen H, Cheng J, Wu Z. Fiber‐Integrated Diamond Quantum Sensor for High‐Voltage Current Measurements. <em>Advanced Sensor Research</em>, 2025, 4(1): 2400106.</li>
  <li category="Journal">Wang N, Liu Y, Su Y, Peng X, Hu Y, <u><strong>Liu Q</strong></u>, Xie F, Zhu Y, Chen X, Luo X, Zhang Y. Microfabricated Active Laser Noise Suppression Device for a High-Sensitivity Diamond Quantum Magnetometer. <em>ACS Photonics</em>, 2025, 12(2): 828-838.</li>
  <li category="Journal">Peng X, Xie F, Zhu Y, Luo X, <u><strong>Liu Q</strong></u>, Wang D, Hu Y, Han J, Li L, Liu J, Chen H, Cheng J, Wu Z. A highly integrated three-axis vector diamond quantum magnetometer with a compact electrical package. <em>Applied Physics Letters</em>, 2025, 126(8).</li>
  <li category="Journal" first_authored="true"><u><strong>Liu Q</strong></u>, Xie F, Peng X, Zhang Y, Wang N, Hu Y, Wang L, Liu Y, Wang Y, Nie S, Chen H, Cheng J, Wu Z. Closed-loop diamond quantum sensor for large range and high precision current measurement. <em>IEEE Sensors Journal</em>, 2024, 24(4): 4356-4364.</li>
  <li category="Journal">Hu Y, Cao L, Nie S, <u><strong>Liu Q</strong></u>, Xie F, Peng X, Zhu Y, Han J, Chen X, Wang L, Liu Y, Liu T, Chen H, Wu Z. MEMS Fabry-Perot sensor for accurate high pressure measurement up to 10 MPa. <em>Optics Express</em>, 2024, 32(21): 37059-37072.</li>
  <li category="Journal" first_authored="true"><u><strong>Liu Q</strong></u>, Xie F, Peng X, Hu Y, Wang N, Zhang Y, Wang Y, Li L, Chen H, Cheng J, Wu Z. Millimeter‐Scale Temperature Self‐Calibrated Diamond‐Based Quantum Sensor for High‐Precision Current Sensing. <em>Advanced Quantum Technologies</em>, 2023, 6(11): 2300210.</li>
  <li category="Journal">Wang C, <u><strong>Liu Q</strong></u>, Hu Y, Xie F, Krishna K, Wang N, Wang L, Wang Y, Toussaint K C Jr, Cheng J, Chen H, Wu Z. Realization of high-dynamic-range broadband magnetic-field sensing with ensemble nitrogen-vacancy centers in diamond. <em>Review of Scientific Instruments</em>, 2023, 94(1).</li>
  <li category="Journal">Hu Y, Xie F, <u><strong>Liu Q</strong></u>, Wang N, Zhang J, Liu Y, Su Y, Wang Y, Chen H, Wu Z. Microfabricated sensor device for CW and pulsed laser power measurements. <em>Optics Express</em>, 2023, 31(2): 2330-2344.</li>
  <li category="Journal">Xie F, Hu Y, Li L, Wang C, <u><strong>Liu Q</strong></u>, Wang N, Wang L, Wang S, Cheng J, Chen H, Wu Z. A microfabricated fiber-integrated diamond magnetometer with ensemble nitrogen-vacancy centers. <em>Applied Physics Letters</em>, 2022, 120(19).</li>
  <li category="Journal" first_authored="true"><strong>刘启慧</strong>, 汪洋, 李凌云, 武震宇. 用于钻石磁传感器量子态操控的微波谐振器. <em>功能材料与器件学报</em>, 2021, 27(3): 153-164.</li>
  <li category="Journal" first_authored="true"><u><strong>Liu Q</strong></u>, Yan B, Liu J. U-shaped photonic quasi-crystal fiber sensor with high sensitivity based on surface plasmon resonance. <em>Applied Physics Express</em>, 2019, 12(5): 052014.</li>
</ul>

## Conference Papers

- **TRANSDUCERS 2025**, Orlando, USA — **Oral**
- **TRANSDUCERS 2023**, Kyoto, Japan — Poster

## Patents

1. 高速大动态范围磁场测量系统，授权，专利号：ZL202210110472.7  
2. 一种基于钻石NV色心的量子电流传感器，授权，专利号：ZL20221955451.7  
3. 量子电流传感器及电流测量方法，申请，公开号：CN117129738A  
4. 一种量子电流传感器及电流测量方法，申请，申请号：202411289863.5

<span class='anchor' id='-荣誉与奖励--honors-and-awards'></span>

# 🥇 Honors and Awards

- **工作期间：** 上海市“超级博士后”；制造业智能化解决方案创新大赛技术创新奖  
- **博士期间：** 国家奖学金（博士）；三好学生；上海市优秀毕业生；中国科学院院长优秀奖  
- **本科期间：** 校园杯辩论赛季军；优秀团员；优秀学生干部；三好学生；学生会主席
