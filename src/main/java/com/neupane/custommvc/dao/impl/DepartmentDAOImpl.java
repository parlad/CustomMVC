/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neupane.custommvc.dao.impl;


import com.neupane.custommvc.controller.dbutil.DbConnection;
import com.neupane.custommvc.dao.DepartmentDAO;
import com.neupane.custommvc.entity.Department;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author parlad
 */
public class DepartmentDAOImpl implements DepartmentDAO {

    private DbConnection conn = new DbConnection();

    @Override
    public int insert(Department d) throws ClassNotFoundException, SQLException {
        
        conn.open();
        String sql = "INSERT INTO tbl_department(department_name,description,status) VALUES(?,?,?)";
        PreparedStatement stmt = conn.initStatement(sql);
        
        stmt.setString(1, d.getDepartmentName());
        stmt.setString(2, d.getDescription());
        stmt.setBoolean(3, d.isStatus());
        int result = conn.executeUpdate();
        conn.close();
        return result;
    }

    @Override
    public List<Department> getAll() throws ClassNotFoundException, SQLException {
        List<Department> deptList = new ArrayList<>();
        String sql = "SELECT * FROM tbl_department";
        conn.open();
        conn.initStatement(sql);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            deptList.add(mapData(rs));
        }
        conn.close();
        return deptList;
    }

    private Department mapData(ResultSet rs) throws SQLException {
        Department dept = new Department();
        dept.setId(rs.getInt("id"));
        dept.setDepartmentName(rs.getString("department_name"));
        dept.setDescription(rs.getString("description"));
        dept.setAddedDate(rs.getDate("added_date"));
        if (rs.getDate("modified_date") != null) {
            dept.setModifiedDate(rs.getDate("modified_date"));
        }
        dept.setStatus(rs.getBoolean("status"));
        return dept;
    }

    @Override
    public Department getById(int id) throws ClassNotFoundException, SQLException {
        Department dept = null;
        String sql = "SELECT * FROM tbl_department WHERE id = ?";
        conn.open();
        PreparedStatement stmt = conn.initStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            dept = mapData(rs);
        }
        conn.close();
        return dept;
    }

    @Override
    public int update(Department d) throws ClassNotFoundException, SQLException {
        String sql = "UPDATE tbl_department set department_name=?,description=?,modified_date=?,status=? WHERE id=?";
        conn.open();
        PreparedStatement stmt = conn.initStatement(sql);
        stmt.setString(1, d.getDepartmentName());
        stmt.setString(2, d.getDescription());
        stmt.setDate(3, new Date(d.getModifiedDate().getTime()));
        stmt.setBoolean(4, d.isStatus());
        stmt.setInt(5, d.getId());
        int result = conn.executeUpdate();
        conn.close();
        return result;
    }

}
