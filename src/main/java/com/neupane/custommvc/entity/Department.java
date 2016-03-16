/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neupane.custommvc.entity;

import java.util.Date;

/**
 *
 * @author parlad
 */
public class Department {

    private int id;
    private String departmentName;
    private String description;
    private Date addedDate;
    private Date modifiedDate;
    private boolean status;

    public Department() {
    }

    public Department(int id, String departmentName, String description, boolean status) {
        this.id = id;
        this.departmentName = departmentName;
        this.description = description;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Department{" + "id=" + id + ", departmentName=" + departmentName + ", description=" + description + ", addedDate=" + addedDate + ", modifiedDate=" + modifiedDate + ", status=" + status + '}';
    }

}
