<%@page import="com.neupane.custommvc.entity.Department"%>
<a href="../header.jsp"></a>
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
    <form action="" method="POST">
        <div class="input-group input-group-lg">
            <label for ="Email">Email</label>
            <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon1" name="Email">
        </div>

        <div class="input-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" placeholder="password" aria-describedby="sizing-addon2" name="Password">
        </div>

        <button type="submit" class="btn-default">Login</button>
    </form>
</div>
<a href="../footer.jsp"></a>