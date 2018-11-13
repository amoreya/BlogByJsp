<%--
  Created by IntelliJ IDEA.
  User: Hy
  Date: 2018/3/23
  Time: 3:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>111</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="Addblog" class="model.Addblog"></jsp:useBean>
<jsp:setProperty property="*" name="Addblog" />
<jsp:useBean id="Addblogservice" class="service.Addblogservice"></jsp:useBean>
<%--&lt;%&ndash;测试是否接收到传入的数据&ndash;%&gt;--%>
<%--<%--%>
<%--out.print(Addblog.getcContent());//内容4--%>
<%--out.print(Addblog.getCreat());//1原创 1--%>
<%--out.print(Addblog.getInfo());//描述 3--%>
<%--out.print(Addblog.getTitle());//标题 2--%>
    <%--out.print(Addblog.getTypeblog());//类别3--%>

<%--%>--%>

<%

    if(Addblogservice.addBlog(Addblog)) {

%>

<script type="text/javascript" language="javascript">

    alert("发表成功，返回！！");

    window.location="blogaboutme.jsp" ;

</script>

<%

}

else

{
%>

<script type="text/javascript" language="javascript">

    alert("发表失败，正在返回发表！！");

    window.location="blogwrite.jsp" ;

</script>

<%

    }

%>

</body>
</html>
