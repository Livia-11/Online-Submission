package com.submission.mis.onlinesubmission.controllers;

import java.io.*;
import java.time.LocalDate;

import com.submission.mis.onlinesubmission.models.Student;
import com.submission.mis.onlinesubmission.services.StudentService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

public class StudentRegistration extends HttpServlet {
    StudentService  service = StudentService.getInstance();
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.setAttribute("formName", "Student Registration Form");
        request.getRequestDispatcher("WEB-INF/form.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        Student student = new Student(fname, lname,email, LocalDate.now());
        service.addStudent(student);
        doGet(request, response);

    }

    public void destroy() {
    }
}