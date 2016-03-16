<%@page import="com.neupane.custommvc.entity.Department"%>
<%@include file="../header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous">
    </script>
</div>

<div class="container">
    <div class="pull-right">
        <p>
            <a href="${SITE_URL}/department/add" class="btn btn-primary"><span class="glyphicon-plus"></span>Add</a>
        </p>
    </div>

    <table class="table table-bordered table-hover table-striped">
        <tr>
            <th>ID</th> 
            <th>New ID</th>
            <th>Department_name</th>
            <th>Description</th>
            <th>Added Date</th>
            <th>Modified_date</th>
            <th>Status</th> 
            <th>Action</th>
        </tr>
        
        <c:forEach var="dept" items="${requestScope.departments}">
            <tr>
                <td>${dept.id}</td>
                <td>${dept.id}</td>
                <td>${dept.departmentName}</td>
                <td>${dept.description}</td>
                <td>${dept.addedDate}</td>
                <td>${dept.modifiedDate}</td>
                <td>${dept.status}</td>
                <td>
                    <a href="${SITE_URL}/department/edit.jsp?id=${dept.id}" class="btn btn-success"><span class="glyphicon-pencil"></span></a>
                    <a href="${SITE_URL}/department/delete?id= ${dept.id}" class="btn btn-danger" onclick="return confirm('are you suer')"><span class="glyphicon-trash"></span></a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

<a href="../footer.jsp"></a>