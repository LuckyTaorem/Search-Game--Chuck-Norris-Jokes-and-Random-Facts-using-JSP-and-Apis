<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Import necessary packages -->
<%@ page import="org.apache.http.client.HttpClient" %>
<%@ page import="org.apache.http.client.methods.HttpGet" %>
<%@ page import="org.apache.http.impl.client.HttpClients" %>
<%@ page import="org.apache.http.util.EntityUtils" %>
<%@ page import="org.apache.http.HttpResponse" %>
<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.parser.JSONParser" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Free Game Search</title>
<style>
	span{
		margin:5px;
		float:left;
		font-size:20px;
	}
	img{
		margin: 50px 0px 5px 200px;
		border:1px solid white;
		width:400px;
	}
	#elements p{
		margin-left:30px;
	}
	#elements{
	font-family:sans-serif;
	padding-right:20px;
		margin-top:20px;
		padding-bottom:20px;
	}
	nav ul li{
		display:inline;
		list-style-type: none;
		padding:10px 60px;
	}
	nav a{
		text-decoration:none;
		color:white;
	}
	nav ul li:hover{
		background-color:rgba(255,255,255,0.2);
	}
</style>
</head>
<body style="background-image:url('background.jpg'); background-attachment:fixed;color:white; font-family:san-serif;">
	<form action="" method="get">
	<div style="width:800px;margin:auto;background-color:rgba(0,0,0,0.5);padding:20px;">
	<nav>
	<ul>
		<a href="index.jsp"><li style="border-right:1px solid white;">Game Search</li></a>
		<a href="chuck.jsp"><li style="border-right:1px solid white;">Chuck Norris Joke</li></a>
		<a href="useless.jsp"><li>Useless Random Facts</li></a>
	</ul>
</nav>
<hr style="width:730px;">
	<h1 style="text-align:center">Free Game Search</h1>
	<!-- mmorpg.shooter.strategy.racing.sports.social.sandbox.open-world.survival.pvp.pve.pixel.voxel.zombie.turn-based.first-person.third-Person.top-down.tank.space.sailing.side-scroller.superhero.permadeath.card.battle-royale.mmo.mmofps.mmotps.3d.2d.anime.fantasy.sci-fi.fighting.action-rpg.action.military.martial-arts.flight.low-spec.tower-defense.horror.mmorts -->
		<div style="margin-top:30px;">
			<p>Tag List: </p>
			<span><input type="checkbox" id="mmorpg" name="tag" value="mmorpg">mmorpg</span>
			<span><input type="checkbox" id="shooter" name="tag" value="shooter">shooter</span>
			<span><input type="checkbox" id="strategy" name="tag" value="strategy">strategy</span>
			<span><input type="checkbox" id="racing" name="tag" value="racing">racing</span>
			<span><input type="checkbox" id="sports" name="tag" value="sports">sports</span>
			<span><input type="checkbox" id="social" name="tag" value="social">social</span>
			<span><input type="checkbox" id="sandbox" name="tag" value="sandbox">sandbox</span>
			<span><input type="checkbox" id="open-world" name="tag" value="open-world">open-world</span>
			<span><input type="checkbox" id="survival" name="tag" value="survival">survival</span>
			<span><input type="checkbox" id="pvp" name="tag" value="pvp">pvp</span>
			<span><input type="checkbox" id="pve" name="tag" value="pve">pve</span>
			<span><input type="checkbox" id="pixel" name="tag" value="pixel">pixel</span>
			<span><input type="checkbox" id="voxel" name="tag" value="voxel">voxel</span>
			<span><input type="checkbox" id="zombie" name="tag" value="zombie">zombie</span>
			<span><input type="checkbox" id="turn-based" name="tag" value="turn-based">turn-based</span>
			<span><input type="checkbox" id="first-person" name="tag" value="first-person">first-person</span>
			<span><input type="checkbox" id="third-Person" name="tag" value="third-Person">third-Person</span>
			<span><input type="checkbox" id="top-down" name="tag" value="top-down">top-down</span>
			<span><input type="checkbox" id="tank" name="tag" value="tank">tank</span>
			<span><input type="checkbox" id="space" name="tag" value="space">space</span>
			<span><input type="checkbox" id="sailing" name="tag" value="sailing">sailing</span>
			<span><input type="checkbox" id="side-scroller" name="tag" value="side-scroller">side-scroller</span>
			<span><input type="checkbox" id="superhero" name="tag" value="superhero">superhero</span>
			<span><input type="checkbox" id="permadeath" name="tag" value="permadeath">permadeath</span>
			<span><input type="checkbox" id="card" name="tag" value="card">card</span>
			<span><input type="checkbox" id="battle-royale" name="tag" value="battle-royale">battle-royale</span>
			<span><input type="checkbox" id="mmo" name="tag" value="mmo">mmo</span>
			<span><input type="checkbox" id="mmofps" name="tag" value="mmofps">mmofps</span>
			<span><input type="checkbox" id="mmotps" name="tag" value="mmotps">mmotps</span>
			<span><input type="checkbox" id="3d" name="tag" value="3d">3d</span>
			<span><input type="checkbox" id="2d" name="tag" value="2d">2d</span>
			<span><input type="checkbox" id="anime" name="tag" value="anime">anime</span>
			<span><input type="checkbox" id="fantasy" name="tag" value="fantasy">fantasy</span>
			<span><input type="checkbox" id="sci-fi" name="tag" value="sci-fi">sci-fi</span>
			<span><input type="checkbox" id="fighting" name="tag" value="fighting">fighting</span>
			<span><input type="checkbox" id="action-rpg" name="tag" value="action-rpg">action-rpg</span>
			<span><input type="checkbox" id="action" name="tag" value="action">action</span>
			<span><input type="checkbox" id="military" name="tag" value="military">military</span>
			<span><input type="checkbox" id="martial-arts" name="tag" value="martial-arts">martial-arts</span>
			<span><input type="checkbox" id="flight" name="tag" value="flight">flight</span>
			<span><input type="checkbox" id="low-spec" name="tag" value="low-spec">low-spec</span>
			<span><input type="checkbox" id="tower-defense" name="tag" value="tower-defense">tower-defense</span>
			<span><input type="checkbox" id="horror" name="tag" value="horror">horror</span>
			<span><input type="checkbox" id="mmorts" name="tag" value="mmorts">mmorts</span>
		</div>
		<div style="height:200px;">
		<div style="float:left;height:30px;margin-top:30px;margin-left:-415px;">
			<p style="display:inline-block;">Platform:</p>
			<select name="platform">
			<%
			String p="all";
			if(request.getParameter("platform")!=null){
			p = request.getParameter("platform");
			switch(p){
				case "all":
			%>
					<option value="all" selected>All</option>
					<option value="pc">PC</option>
					<option value="browser">browser</option>
			<%
				break;
				case "pc":
					%>
							<option value="all">All</option>
							<option value="pc"selected>PC</option>
							<option value="browser">browser</option>
					<%
						break;
				case "browser":
					%>
							<option value="all">All</option>
							<option value="pc">PC</option>
							<option value="browser"selected>browser</option>
					<%
						break;
			} 
			}else{
				%>
				<option value="all"selected>All</option>
				<option value="pc">PC</option>
				<option value="browser">browser</option>
				<%
			}
			%>
			</select>
		</div>
		<div style="float:left;margin-top:30px;margin-left:-260px;">
			<p style="display:inline-block;">Sort By:</p>
			<select name="sort">
			<%
			String s="popularity";
			if(request.getParameter("sort")!=null){
			s = request.getParameter("sort");
			switch(s){
				case "alphabetical":
			%>
					<option value="relevance">relevance</option>
					<option value="alphabetical"selected>alphabetical</option>
					<option value="release-date">release-date</option>
					<option value="popularity">popularity</option>
			<%
				break;
				case "relevance":
					%>
					<option value="relevance" selected>relevance</option>
					<option value="alphabetical">alphabetical</option>
					<option value="release-date">release-date</option>
					<option value="popularity">popularity</option>
					<%
						break;
				case "release-date":
					%>
					<option value="relevance">relevance</option>
					<option value="alphabetical">alphabetical</option>
					<option value="release-date"selected>release-date</option>
					<option value="popularity">popularity</option>
					<%
						break;
				case "popularity":
					%>
					<option value="relevance">relevance</option>
					<option value="alphabetical">alphabetical</option>
					<option value="release-date">release-date</option>
					<option value="popularity"selected>popularity</option>
					<%
						break;
			} 
			}else{
				%>
				<option value="relevance" selected>relevance</option>
				<option value="alphabetical">alphabetical</option>
				<option value="release-date">release-date</option>
				<option value="popularity">popularity</option>
				<%
			}
			%>
			</select>
			<input type="button" value="clear" onclick="UncheckAll()">
		</div>
		</div>
		<br>
		<br>
		<input type="submit" value="Search" style="display:inline; font-size:20px;padding:5px 20px;background:linear-gradient(90deg,blue,red);color:white;">
		<br>
	<% 
	String checkbox="";
	String query="";
	String genre="";
	String[] tags = {};
	String apiUrl="";
	if(request.getParameter("tag")!=null){
		tags = request.getParameterValues("tag");
		for(int i=0;i<tags.length-1;i++) {
			query+=tags[i]+".";
			checkbox+="&tag="+tags[i];
			genre+=tags[i]+", ";
		}
		query+=tags[tags.length-1];
		checkbox+="&tag="+tags[tags.length-1];
		genre +=tags[tags.length-1];
		String platform = request.getParameter("platform");
		String sort = request.getParameter("sort");
		String tag=request.getParameter("tag");
		if(tags.length==1){
			apiUrl = "https://www.freetogame.com/api/games?category="+tag+"&platform="+platform+"&sort-by="+sort;
		}
		else{
		apiUrl = "https://www.freetogame.com/api/filter?tag="+query+"&platform="+platform+"&sort-by="+sort;
		}
	}else{
		//apiUrl = "https://www.freetogame.com/api/filter?tag=mmorpg.shooter.strategy.racing.sports.social.sandbox.open-world.survival.pvp.pve.pixel.voxel.zombie.turn-based.first-person.third-Person.top-down.tank.space.sailing.side-scroller.superhero.permadeath.card.battle-royale.mmo.mmofps.mmotps.3d.2d.anime.fantasy.sci-fi.fighting.action-rpg.action.military.martial-arts.flight.low-spec.tower-defense.horror.mmorts"+"&platform="+p+"&sort-by="+s;
		apiUrl = "https://www.freetogame.com/api/games?category=mmorpg";
	}
	
	try{
	HttpClient httpClient = HttpClients.createDefault();
	
	//create an http get request
	HttpGet getRequest = new HttpGet(apiUrl);
		
	//now execute the request
	HttpResponse response1 = httpClient.execute(getRequest);
		
	//parse the json object
	JSONParser parser = new JSONParser();
		
	JSONArray arr = (JSONArray)parser.parse(EntityUtils.toString(response1.getEntity()));
	JSONObject jobj;
	
	String imgURL="";
	String title="";
	String desc="";
	
	String plat="";
	String pub="";
	String dev="";
	String date="";
	String game_url="";
	
		//get the image url from json response
	int size = arr.size();
	if(size>30)
		size=30;
	for(int i=0;i<size;i++){
	jobj = (JSONObject)arr.get(i);
	imgURL = (String) jobj.get("thumbnail");
	title = (String) jobj.get("title");
	desc = (String) jobj.get("short_description");
	if(tags.length==1){
		genre = (String) jobj.get("genre");
	}
	plat = (String) jobj.get("platform");
	pub = (String) jobj.get("publisher");
	dev = (String) jobj.get("developer");
	date = (String) jobj.get("release_date");
	game_url = (String) jobj.get("game_url");
	%>
	<div id="elements" style="background-color:rgba(255,255,255,0.3);border-radius:30px;">
	<a href="<%= game_url %>"target="_blank"><img src="<%= imgURL %>"></a>
	<p style="text-align:center;"><font size="20px"><%= title %></font></p>
	<p>Description: <%= desc %></p>
	<p>Genre: <%= genre %></p>
	<p>Platform: <%= plat %></p>
	<p>Publisher: <%= pub %></p>
	<p>Developer: <%= dev %></p>
	<p>Release Date: <%= date %></p>
	</div>
	<%} 
	}
	catch(Exception e){
		out.println("<h1>No Result Found.</h1>");
	}
	%>
	</div>
	</form>
	<script type="text/javascript">
	let QueryString = "<%=checkbox %>";
	let searchParms = new URLSearchParams(QueryString);

	for(const [key,val] of searchParms)
	  document.getElementById(val).checked = true;
	
	function UncheckAll(){
		var items = document.getElementsByName('tag');
        for (var i = 0; i < items.length; i++) {
            if (items[i].type == 'checkbox')
                items[i].checked = false;
        }
	}
	</script>

</body>
</html>