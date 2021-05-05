<!DOCTYPE html>
<link rel="stylesheet" href="Main.css">
<meta charset="utf-8">
<head>
	<title> 보라매의, 보라매에 의한, 보라매를 위한 </title>
</head>
<body>
	<div id = "main">		
		<h1> BORAMAE WIKI</h1>
	</div>
	<p>
	<div id = "search">
		<input type="text" id="input" onclick="input()">
      	<input type = "button" id = "output" onclick="output()" value = "double click"></button>
	</div>

    <script type="text/javascript">
 	   let temp;

    	function input(){
			var input = document.getElementById("input").value;
    		temp = input;
    	}

    	function output(){
    		//document.write("location.href='" + document.getElementById("input").value + ".html'");
        	//document.getElementById('output').setAttribute("onclick", "location.href='" + document.getElementById("input").value + ".html'");
        	//document.getElementById('output').setAttribute("onclick", "location.href='" + document.getElementById("input").value + ".html'");
    		document.getElementById('output').setAttribute("onclick", "location.href='a.html'");
    	}	
	</script>	
</body>
<!-- (íì¤í¸ì© a, b), ê°ê°ì í¬, ëìì²´ì¡°, ìë, ìëì , ì ë, í¹ê¸°ìí ë§ë¤ì´ë¨ì  -->