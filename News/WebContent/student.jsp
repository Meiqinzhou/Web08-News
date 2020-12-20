<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新闻页面</title>

 	<style type="text/css">
 	
 	.left{
 		float:left;
 	}
 	
 	.center{
            margin-left:70px;
            float: left;
        }
 	
 	.right{
 		float:right;
 	}
 	
 	.head{
            padding-top:50px;
            text-align: center;
        }
        
	.a2{
            margin-top: 10px;
            font-size:18px;
            color: black;
            text-decoration:none;
        }
        
        .a1{
        	float:right;
        }
	
	 .sp2{
	 		text-decoration:none;
            background-color: #2aabd2;
            margin:20px;
            padding-left:30px;
            padding-right:30px;
            font-size:20px;
            
        }
        
        .sp3{
            background-color: #2e6da4;
            font-size:20px; 
                
        }
       
       .sp1{
       		padding-top: 20px;
            font-size: 20px;
            border-bottom: 5px solid #2e6da4;
       }
       
       .sp4{
       		color: silver;
            font-size: 20px;
           
       }
       
       .xiahuaxian{
            border-bottom: 3px solid silver;
        }
		
		.img1{
			margin-left:40px;
		}

		.head{
			background-color: #2e6da4;
			height:30px;
			margin-top:40px;
		}
		
		
    </style>
</head>

<body>


	
<div class="div1">


			
            <ul class="left">
                <div class="xiahuaxian">
                
                	<c:forEach items="${students}" var="stu" begin="8" end="8">
                    <span class="sp1">${stu.title}</span>
                    </c:forEach>
                    
                    <c:forEach items="${students}" var="stu" begin="2" end="2">
                    <span class="a1">${stu.title}</span>
                    </c:forEach>
                    
                </div>
                
				<c:forEach items="${students}" var="stu" begin="0" end="5">
                <li><a href="" class="a2">${stu.content}</a><span class="sp4">${stu.time}</span></li>
            	</c:forEach>
            	
            </ul>
			
			
			

			
            <ul class="center">
                <div class="xiahuaxian">
                
                    <c:forEach items="${students}" var="stu" begin="9" end="9">
                    <span class="sp1">${stu.title}</span>
                    </c:forEach>
                    
                    <c:forEach items="${students}" var="stu" begin="2" end="2">
                    <span class="a1">${stu.title}</span>
                    </c:forEach>
                    
                </div>
                
                <c:forEach items="${students}" var="stu" begin="6" end="11">
                <li><a href="" class="a2">${stu.content}</a><span class="sp4">${stu.time}</span></li>
                </c:forEach>
                
            </ul>
			
			
			
			
			
			
            <ul class="right">
                <div class="xiahuaxian">
                
                    <c:forEach items="${students}" var="stu" begin="10" end="10">
                    <span class="sp1">${stu.title}</span>
                    </c:forEach>
                    
					<c:forEach items="${students}" var="stu" begin="2" end="2">
                    <span class="a1">${stu.title}</span>
                    </c:forEach>
                </div>
                
                <c:forEach items="${students}" var="stu" begin="11" end="16">
                <li><a href="" class="a2">${stu.content}</a><span class="sp4">${stu.time}</span></li>
                </c:forEach>
                
            </ul>
     
      
    </div>

<div class="img1">

<c:forEach items="${students}" var="stu" begin="4" end="7">
<img src="${stu.title}" height="150" width="350"/>
</c:forEach>

</div>


<div class="head">

	<c:forEach items="${students}" var="stu" begin="11" end="11">
    <span class="sp3">${stu.title}:</span>
    </c:forEach>
    
    <c:forEach items="${students}" var="stu" begin="12" end="17">
    <a href="" class="sp2">${stu.title}</a>
    </c:forEach>
    
</div>

</body>


<script src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">

    var xhr=new XMLHttpRequest();
    xhr.open("post","TestSverlet");
    xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
    xhr.send("id=2");
</script>

</html>