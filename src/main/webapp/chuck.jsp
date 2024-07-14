<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Import necessary packages -->
<%@ page import="java.util.*" %>
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
<title>Chuck Norris Joke</title>
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
	<h1 style="text-align:center">Chuck Norris Joke</h1>
	<!-- mmorpg.shooter.strategy.racing.sports.social.sandbox.open-world.survival.pvp.pve.pixel.voxel.zombie.turn-based.first-person.third-Person.top-down.tank.space.sailing.side-scroller.superhero.permadeath.card.battle-royale.mmo.mmofps.mmotps.3d.2d.anime.fantasy.sci-fi.fighting.action-rpg.action.military.martial-arts.flight.low-spec.tower-defense.horror.mmorts -->
		<%
		String[] categories = {"animal",
			    "career",
			    "celebrity",
			    "dev",
			    "fashion",
			    "food",
			    "history",
			    "money",
			    "movie",
			    "music",
			    "political",
			    "religion",
			    "science",
			    "sport",
			    "travel"};
		Random random = new Random();
		int index = random.nextInt(categories.length);
		
		String apiUrl="https://api.chucknorris.io/jokes/random?category="+categories[index];
		HttpClient httpClient = HttpClients.createDefault();
		
		//create an http get request
		HttpGet getRequest = new HttpGet(apiUrl);
			
		//now execute the request
		HttpResponse response1 = httpClient.execute(getRequest);
			
		//parse the json object
		JSONParser parser = new JSONParser();
			
		JSONObject jobj = (JSONObject)parser.parse(EntityUtils.toString(response1.getEntity()));
		String value =(String) jobj.get("value");
		%>
		<div style="margin-top:30px;padding:0 100px;text-align:center;">
			<p style="font-size:20px;">Category: <%=categories[index] %></p>
			<p style="font-size:20px;line-height:30px;">
				<%=value %>
			</p>
			<input style="padding:5px 20px;" type="submit" value="Random">
		</div>
		</div>
	</form>
</body>
</html>