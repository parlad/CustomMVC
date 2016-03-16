/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neupane.custommvc.controller;

import com.neupane.custommvc.dao.DepartmentDAO;
import com.neupane.custommvc.dao.impl.DepartmentDAOImpl;
import com.neupane.custommvc.entity.Department;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author parlad
 */
@WebServlet(name = "deptController", urlPatterns = "/department/*")
public class DepartmentController extends HttpServlet {

    private DepartmentDAO deptDao = new DepartmentDAOImpl();

    private Department dep = new Department();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String viewPage = "/WEB-INF/view/department/index.jsp";
        boolean redirect = false;

        try {

            String path = request.getRequestURI().toLowerCase();

            if (path.contains("/add")) {
                viewPage = "/WEB-INF/view/department/add.jsp";
            } else if (path.contains("/edit")) {

//                if (request.getParameter("id") != null && !request.getParameter("id").isEmpty()) {
//                    int id = Integer.parseInt(request.getParameter("id"));
//                    Department dept = deptDao.getById(id);
//
//                    if (dept == null) {
//                        redirect = true;
//                        response.sendRedirect(request.getContextPath() + "/department?error");
//
//                    }
//
//                    request.setAttribute("department", dept);
//
//                } else {
//                    redirect = true;
//                    viewPage = "/WEB-INF/view/department/edit.jsp";
//                   // response.sendRedirect(request.getContextPath() + "/department?error");
//                }
//                
                viewPage = "/WEB-INF/view/department/edit.jsp";
                dep = deptDao.getById(Integer.parseInt(request.getParameter("id")));
                System.out.println(dep.getDepartmentName());
                request.setAttribute("department", dep);
                

            } else {

                // this request set the all value from entity getter and setter in departments. which will be call in jsp pages
                request.setAttribute("departments", deptDao.getAll());
            }

        } catch (Exception oo) {
            System.out.println(oo.getMessage());
        }
        if (!redirect) {
            RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
            dispatcher.forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Department dept = new Department();
        dept.setDepartmentName(request.getParameter("dept_name"));
        dept.setDescription(request.getParameter("description"));
        dept.setStatus((request.getParameter("status") != null) ? true : false);
        try {
            deptDao.insert(dept);
            response.sendRedirect(request.getContextPath() + "/department");
        } catch (ClassNotFoundException | SQLException | IOException io) {
        }
    }

}
