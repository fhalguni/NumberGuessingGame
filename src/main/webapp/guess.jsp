<%@page import="org.project.NumberGuessingGame"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 //input
 	String guessStr=request.getParameter("guess");
 	NumberGuessingGame guess=new NumberGuessingGame(Integer.parseInt(guessStr));
 	
 	String minStr=request.getParameter("minimum");
 	NumberGuessingGame minimum=new NumberGuessingGame(Integer.parseInt(minStr));
 	
 	String maxStr=request.getParameter("maximum");
 	NumberGuessingGame maximum=new NumberGuessingGame(Integer.parseInt(minStr));
 	
 	String tarStr=request.getParameter("target");
 	NumberGuessingGame target=new NumberGuessingGame(Integer.parseInt(tarStr));
 	
 	NumberGuessingGame guesses=new NumberGuessingGame(Integer.parseInt(request.getParameter("guesses")));
 	
 	String msg="";//variable to hold the message to the user
 	
 	if(guess.getValue()==target.getValue()){
 		//the guess is correct;
 		msg="Congrats! You got the answer in "+guesses.getValue()+"guesses";
 	}else{
 		//the guess is incorrect
 		guesses.increment();
 		if(guess.getValue()<target.getValue()){
 			//guess is low
 			msg="The number is greater than your guess";
 		}else{
 			//guess is too high
 			msg="The number is lower than your guess";
 		}
 	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Number Guessing Game</title>
</head>
<style>
body{
    background: url('guessing.jpeg');
    background-size: cover;
}
.form{
	background-color: black;
    padding: 40px 30px;
    border-radius: 20px;
    opacity: 0.7;
    border: 2px solid burlywood;
    width: 350px;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    position: absolute;
    color: #fff;
}
a{
	text-decoration: none;
	color:blue;
	background-color:white;
	padding:10px;
	border-radius:12px;
	
}

</style>
<body>
<p>
<div class="form">
<h1>Number Guessing Game</h1>
<p>Welcome! We hope you enjoy guessing game!</p>
<%=msg %>
</p>

<%
	if(guess.getValue()==target.getValue()){
		//the guess is correct;
		msg="Congrats! You got the answer in "+guesses.getValue()+" "+" guesses";
	
%>
	<a href="index.jsp">Play Again</a>
	
<% 
	}else{
		//the guess is incorrect

		
%>




	<form action="guess.jsp" name="guessForm" method="post">
<label>
	Guess <%=guesses.getValue() %>:
</label>
<input type="text" name="guess" value="0" />
<br>
<input type="submit" name="guessButton" value="GO"/>

<input type="hidden" name="minimum" value="<%=minimum.getValue() %>"/>
<input type="hidden" name="maximum" value="<%=maximum.getValue() %>"/>
<input type="hidden" name="target" value="<%=target.getValue() %>"/>
<input type="hidden" name="guesses" value="<%=guesses.getValue() %>"/>
</form>
</div>
<%
	}
%>
</body>
</html>