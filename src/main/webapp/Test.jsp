<%--
  Created by IntelliJ IDEA.
  User: SeoMinjung
  Date: 2022-05-31
  Time: 오후 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type">
    <title>Title</title>
</head>
<body>
<h1>comment</h1>
<div class="col-sm-4">
    <form id="frmaccount">
        <div align="left">
            <label>Name</label>
            <input type="text" class="form-control" id="name" name="name" size="30px" required>
        </div>

        <div align="left">
            <label>Comment</label>
            <textarea class="form-control", id="comment" name="comment" size="30px" required> </textarea>
        </div>
    </form>
</div>
</body>
</html>
