//
//  dateBase.swift
//  #3homeWork2M
//
//  Created by Нурлан on 29/12/22.
//

import Foundation
class DataBase {
    var student = [Student]()
    var teacher = [Teachers]()
    
    init(student: [Student]  = [Student](), teacher: [Teachers] = [Teachers]()) {
        self.student = student
        self.teacher = teacher
    }
    func showInfo(){
        for i in teacher{
            print("Учитель - \(i.teacherName) Фамилия - \(i.teacherSurName) академический уровень - \(i.status)")
        }
        for i in student{
            print("Студент - \(i.name) Фамилия - \(i.surName) ученик \(i.course)")
        }
        print("всего учителей \(teacher.count)")
        print("всего учеников \(student.count)")
    }
    func addTeachers(add:Teachers){
        teacher.append(add)
    }
    func addStudent(add:Student){
        student.append(add)
    }
    func returnStudent(name: String , surName: String, course: String) -> Student{
        var returning = Student(name: name, surName: surName, course: course)
        for i in student{
            if i.name == name && i.surName == surName && i.course == course {
                returning = i
                
            }
        }
        return returning
    }
    func returnTeachers(teacherName: String , teacherSurName: String , status: String ) -> Teachers{
        var returning = Teachers(teacherName: teacherName, teacherSurName: teacherSurName, status: status)
        for i in teacher{
            if  i.teacherName == teacherName && i.teacherSurName == teacherSurName && i.status == status{
                returning = i
            }
        }
        return returning
    }
    func removeTeacher(remove:Teachers){
        for (index,item) in teacher.enumerated(){
            if item.teacherName == remove.teacherName && item.teacherSurName == remove.teacherSurName && item.status == remove.status{
                teacher.remove(at: index)
                print("удален из списка")
            }
            
        }
        
    }
    
    func removeStudents(remove:Student){
        for (index,item) in student.enumerated(){
            if item.name == remove.name && item.surName == remove.surName && item.course == remove.course {
                student.remove(at: index)
                print("удален из списка")
            }
        }
    }
}
