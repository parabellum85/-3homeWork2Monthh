//
//  Teacers.swift
//  #3homeWork2M
//
//  Created by Нурлан on 29/12/22.
//

import Foundation

class Teachers {
    var teacherName: String
    var teacherSurName: String
    var status: String
    
    init(teacherName: String, teacherSurName: String, status: String) {
        self.teacherName = teacherName
        self.teacherSurName = teacherSurName
        self.status = status
    }
    func showInfo(){
        print("\(teacherName) , \(teacherSurName) , \(status)")
    }
}
