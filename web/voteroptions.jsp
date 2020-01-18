<%-- 
    Document   : adminoptions
    Created on : Dec 23, 2019, 9:58:42 AM
    Author     : Shivin John
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jsscript/jquery.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="jsscript/voteroptions.js"></script>
        <link href="stylesheet/backgroundimage.css" rel="stylesheet">
        <link href="stylesheet/pageheader.css" rel="stylesheet">
        <link href="stylesheet/voter.css" rel="stylesheet">
        <title>Voter Options Page</title>
    </head>
    <body>
        <%
            String userid=(String)session.getAttribute("userid");
            if(userid==null)
            {
                response.sendRedirect("accessdenied.html");
                return;
            }
            StringBuffer displayBlock=new StringBuffer("<div class='sticky'><div class='candidate'>VOTE FOR CHANGE</div><br>"+
            "<div class='subcandidate'>Voter Options Page</div><br><br>"+
                    "<div class='logout'><a href='login.html'>logout</a></div></div>");
            displayBlock.append("<div class='container'>");
            displayBlock.append("<div id='dv1' onclick='redirectseecandidate()'><img src='images/seecandidate.jpg' height='300px' width='300px'><br><h3>See Candidate</h3></div>");
            displayBlock.append("<div id='dv1' onclick='redirectcastvote()'><img src='images/castyourvote.png' height='300px' width='300px'><br><h3>Cast Vote</h3></div>");
            displayBlock.append("<div id='dv1' onclick='redirectseevote()'><img src='images/SeeVote.png' height='300px' width='300px'><br><h3>See Vote</h3></div>");
            displayBlock.append("<div id='dv2' onclick='redirectupdateprofile()'><img src='images/updateprofile.jpg' height='300px' width='300px'><br><h3>Update Profile</h3></div>");
            displayBlock.append("</div>");
            displayBlock.append("<br><br><div align='center' id='result'></div>");
            out.println(displayBlock);
        %>
    </body>
</html>
