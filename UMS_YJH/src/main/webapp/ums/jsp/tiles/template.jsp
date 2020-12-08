<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-2.2.4.js"></script>
    <title>제목</title>
    <style>
        #header{            
            width:100%;
            height:70px;
            text-align: left;
            background-color: #EAEAEA;
        }
        #left{
            float:left;
             width:10%;
            background-color: gray;
        }
        #main{
            float:left;                                                                                  
             width:90%;
        }
        #footer{
            width: 100%;
            height: 50px;            
            text-align: center;
            color:white;
            background-color: black;
            clear:both;
        }
         #left, #main{ 
               min-height: 600px;
         } 
    </style>
    
</head>
<body>
    <div style="width:100%; height:100%;">
    <div id="header"><tiles:insertAttribute name="header" /></div>
    <div id="left"><tiles:insertAttribute name="left" /></div>
    <div id="main"><tiles:insertAttribute name="body" /></div>
    <div id="footer"><tiles:insertAttribute name="footer" /></div>
    </div>
 
</body>
</html>