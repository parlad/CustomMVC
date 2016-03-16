
<%@include file="../header.jsp" %>
<%@page import="com.neupane.custommvc.dao.DepartmentDAO" %>
<%@page import="com.neupane.custommvc.dao.impl.DepartmentDAOImpl" %>
<%@page import="com.neupane.custommvc.entity.Department" %>


<html>
    <head>
        <title>
            <!-- Latest compiled and minified CSS -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

            <!-- Optional theme -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

            <!-- Latest compiled and minified JavaScript -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        </title>
    </head>

    <body>
        <div class="container">
            <h1>Add Department</h1>
            <form action="${SITE_URL}/department/" method="POST">
                <div class="form-group">
                    <label>Name:</label>
                    <input type="text" name="dept_name" required="required" placeholder="Enter department name:" class="form-control"/>
                </div>

                <div class="form-group">
                    <label>Description:</label>
                    <textarea type="text" name="description" required="required" placeholder="Enter department Description" class="form-control" ></textarea>
                </div>

                <div class="checkbox">
                    <label>Status:</label>
                    <label />
                    <input type="checkbox" name="status"/>Active</input>
                    </label>
                </div>

                <div>
                    <button class="btn btn-success" type="submit">Save</button>
                    <a href="${SITE_URL}/department" class="btn btn-danger">Back</a>
                </div>

            </form>
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>