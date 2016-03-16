<%@include file="../header.jsp" %>
<h1>Edit Department</h1>
<form action="${SITE_URL}/department/edit" method="POST">
    <div class="form-group">
        <label >Name:</label>
        <c:out value="${department.departmentName}"/>
        <input type="text" name="dept_name" required="required" placeholder="Enter department name:" class="form-control" value="${department.departmentName}"/>
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
<%@include file="../footer.jsp" %>
