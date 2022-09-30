/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package com.sg.classroster.dao;

import com.sg.classroster.dto.Course;
import com.sg.classroster.dto.Student;
import com.sg.classroster.dto.Teacher;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 *
 * @author abekoppal
 */
@SpringBootTest
public class TeacherDaoDBTest {
    
    @Autowired
    TeacherDao teacherDao;
    
    @Autowired
    StudentDao studentDao;
    
    @Autowired
    CourseDao courseDao;
    
    
    public TeacherDaoDBTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
        List<Teacher> teachers = teacherDao.getAllTeachers();
        for(Teacher teacher : teachers) {
            teacherDao.deleteTeacherById(teacher.getId());
        }
        
        List<Student> students = studentDao.getAllStudents();
        for(Student student : students) {
            studentDao.deleteStudentById(student.getId());
        }
        
        List<Course> courses = courseDao.getAllCourses();
        for(Course course : courses) {
            courseDao.deleteCourseById(course.getId());
        }
    }
    
    @After
    public void tearDown() {
    }

    @Test
    public void testSomeMethod() {
        fail("The test case is a prototype.");
    }
    
    @Test
    public void testAddAndGetTeacher(){
        Teacher teacher = new Teacher();
        teacher.setFirstName("Test First");
        teacher.setLastName("Test Last");
        teacher.setSpecialty("Test Specialty");
        teacher = teacherDao.addTeacher(teacher);
        
        Teacher fromDao = teacherDao.getTeacherById(teacher.getId());
        
        assertEquals(teacher, fromDao);
    }
    
    
    
}
