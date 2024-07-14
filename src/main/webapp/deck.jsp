<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
</head>
<body>
<%
String apiUrl = "https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1";
HttpClient httpClient = HttpClients.createDefault();

//create an http get request
HttpGet	getRequest = new HttpGet(apiUrl);
	
//now execute the request
HttpResponse response1 = httpClient.execute(getRequest);
	
//parse the json object
JSONParser parser = new JSONParser();
	
JSONObject	jobj = (JSONObject)parser.parse(EntityUtils.toString(response1.getEntity()));
	
	//get the image url from json response
	//jobj = (JSONObject)arr.get(0);
String imgURL = (String) jobj.get("imageUrl");
%>

</body>
</html>