//
//  main.swift
//  #3homeWork2M
//
//  Created by Нурлан on 29/12/22.
//

import Foundation

print("Hello, World!")


//месяц. Инкапсуляция ДЗ #3

//#1. Создать класс DataBase.

//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса(модели), потом использовать)

//Должны быть методы для удаления, добавления и считывания учеников/учителей.(возвращеное модели по параметрам)

//Другими способами ничего изменяться не должно

//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.

//Пример:

//#1 - Имя Фамилия - Возраст - Класс - Средний балл


var database = DataBase()
var student1 = Student(name: "Нурлан", surName: "Таласбеков", course: "5 - курс" )
var student2 = Student(name: "Нурдин", surName: "Султанов", course: "5 - курс")
var student3 = Student(name: "Рауль", surName: "Карянов", course: "1 - курс")
var student4 = Student(name: "Бектур", surName: "Каримов", course: "11 Б класс")
var student5 = Student(name: "Темир", surName: "Сыдыков", course: "1 - курс")
var teacher = Teachers(teacherName: "Руслан", teacherSurName: "Шаршенов", status: "Midle")

database.addStudent(add: student1)
database.addStudent(add: student2)
database.addStudent(add: student3)
database.addStudent(add: student4)
database.addStudent(add: student5)
database.addTeachers(add: teacher)
database.removeStudents(remove: student4)
database.showInfo()


var hospital = Hospital()
hospital.addList(add: Patient(name: "Ford", surName: "Mustang", date: 1970.04))
hospital.addList(add: Patient(name: "Ferrari", surName: "Enzo", date: 1970.04))
hospital.showInfo(name: "", surName: "", date: 0.0)




