<%@page import="java.util.Calendar"%>
<%@page import="com.neupane.custommvc.entity.Department" %>
<%@page import="com.neupane.custommvc.dao.DepartmentDAO" %>
<%@page import="com.neupane.custommvc.dao.impl.DepartmentDAOImpl" %>



<%
    if (!request.getMethod().equalsIgnoreCase("POST")) {
        response.sendRedirect("index.jsp?error");
    }
    int id = 0;

    DepartmentDAO deptDao = new DepartmentDAOImpl();

    Department d = new Department();
    d.setDepartmentName(request.getParameter("dept_name"));
    d.setDescription(request.getParameter("description"));
    d.setStatus((request.getParameter("status") != null) ? true : false);
    try {
        if (request.getParameter("id") == null && request.getParameter("id").isEmpty()) {

            if (deptDao.insert(d) > 0) {
                response.sendRedirect("index.jsp?Success");
            } else {
                out.println("<h1> Error!!!!</h1 >");
                out.println("<a href = 'javascript:histry.back() '>Something wint wrong</a>");
            }
        } else {
            d.setId(Integer.parseInt(request.getParameter("id")));
            d.setModifiedDate(Calendar.getInstance().getTime());
            if (deptDao.update(d) > 0) {
                response.sendRedirect("index.jsp?Success");
            } else {
                out.println("<h1> Error!!!!</h1 >");
                out.println("<a href = 'javascript:histry.back() '>Something wint wrong</a>");
            }
        }
    } catch (Exception r) {
        out.println(r.getMessage());
    }
%>