//
//  People.swift
//  M4.c5
//
//  Created by LIU SHURUI on 2021/03/16.
//

import Foundation

class People: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var address:String
    var company:String
    var yearsOfExperience:Int
}

