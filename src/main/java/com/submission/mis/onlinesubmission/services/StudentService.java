package com.submission.mis.onlinesubmission.services;

import com.submission.mis.onlinesubmission.models.Student;
import com.submission.mis.onlinesubmission.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class StudentService {
    protected static SessionFactory sessionFactory= HibernateUtil.getSessionFactory();


    protected static Session session;
    protected static StudentService studentService;

    public static StudentService getInstance() {
        if (studentService == null) {
            studentService = new StudentService();
            return studentService;
        }
        return studentService;
    }

    private StudentService(){}

    public void addStudent(Student student) {
        session = sessionFactory.openSession();
        session.beginTransaction();
        session.persist(student);
        session.getTransaction().commit();
    }
}