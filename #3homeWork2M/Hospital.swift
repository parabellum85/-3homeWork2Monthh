//
//  Hospital.swift
//  #3homeWork2M
//
//  Created by Нурлан on 30/12/22.
//

import Foundation

//№2.
//Создать класс Больница
//Создать класс пациент
//Добавить массив пациентов в больницу
//Создать приватную функцию поиска по фамилии и имени, функцию для отобржения заболевания пациента по фамилии и имени, добавление(с учетом что такого человека еще нет) и удаление с учетом если есть
//В main создать объект Больницы и протестировать ваш код разными кейсами


class Hospital{
    private var patient = [Patient] ()
    private func addPatient (name: String , surName: String , date: Double) ->Bool{
        var bool = false
        for i in patient{
            if i.name == name && i.surName == surName && i.date == date{
                bool = true
                break
            }
        }
        return bool
    }
    func addList (add: Patient){
        patient.append(add)
    }
    func showInfo(name: String , surName: String , date: Double){
        if addPatient(name: name, surName: surName, date: date){
            print("Пациент найден: Недавно был выписан")
            for i in 0..<patient.count{
                if patient[i].name == name && patient[i].surName == surName && patient[i].date == date {
                    patient.remove(at: i)
                }
                    
            }
        } else {
            print("пациент не найден")
            patient.append(Patient(name: name, surName: surName, date: date))
        }
        for patients in patient {
            print(patients.name)
            print(patients.surName)
            print(patients.date)
            
        }
    }
}


