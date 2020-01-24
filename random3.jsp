<%@ page import = "java.util.*" %>
<%@ page import ="javax.servlet.http.*" %>
<%
try{	
	Integer x;
	//int y;
	if(session.isNew()){
	x= new Integer(new java.util.Random().nextInt(101));
	session.setAttribute("a",x);
	int d1=0;
	session.setAttribute("d",d1);
	}	
%>

<html>
<head><title>Number Guess</title></head>
<body bgcolor="white">
<font size=4>
  Welcome to the Number Guess game.<p>

  I'm thinking of a number between 1 and 100.<p>

  <form action="random3.jsp" method=post>
  What's your guess? <input type=text name=guess>
  <input type=submit value="Submit">
  </form>
</font>
</body>
</html>
<%
	//session.setAttribute("x", x);
	final int y;

	y=(int)session.getAttribute("d");
	int z=y;
	final int y1=(int)session.getAttribute("a");
	//out.println(""+y1);
	int y2 = Integer.parseInt(request.getParameter("guess"));
	session.setAttribute("b",y2);
	if(y2==y1)
	{
		session.invalidate();
		z++;
		out.println("You got it in "+z+" tries");
//		Integer z= new Integer(new java.util.Random().nextInt(101));
		//int z=0;
		//session.setAttribute("a",z);
	}else{
		if(y1>y2){
		z++;
		session.setAttribute("d",z);
		out.println("Enter large Number. You already tried "+z+" times");
		}else{
		z++;
		session.setAttribute("d",z);
		out.println("Enter small Number. You already tried "+z+" times ");
		}
	
	}
}catch(NumberFormatException e){
	e.printStackTrace();
}
%>
