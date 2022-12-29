//
//  Patient.swift
//  #3homeWork2M
//
//  Created by Нурлан on 30/12/22.
//

import Foundation

class Patient{
    var name: String
    var surName: String
    var date: Double
    
    init() {
        self.name = ""
        self.surName = ""
        self.date = 0.0
    }
    init(name: String, surName: String, date: Double){
        self.name = name
        self.surName = surName
        self.date = date
    }
}

