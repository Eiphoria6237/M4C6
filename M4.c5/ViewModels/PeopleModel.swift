//
//  PeopleModel.swift
//  M4.c5
//
//  Created by LIU SHURUI on 2021/03/16.
//

import Foundation

class PeopleModel:ObservableObject {
    
    @Published var people = [People]()
   
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showYearsOfExperience = true
    
    init() {
        self.people = DataService.getLocalData()
    }
}
