//
//  Student.swift
//  #3homeWork2M
//
//  Created by Нурлан on 29/12/22.
//

import Foundation

class Student{
    var name: String
    var surName: String
    var course: String
   
    init(name: String, surName: String, course: String) {
        self.name = name
        self.surName = surName
        self.course = course
    }
    func showInfo(){
        print("\(name) , \(surName) , \(course)")
    }
}
