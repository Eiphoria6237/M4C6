//
//  DataService.swift
//  M4.c5
//
//  Created by LIU SHURUI on 2021/03/16.
//

import Foundation

class DataService {
    
    static func getLocalData() ->[People] {
        
        let pathString = Bundle.main.path(forResource: "people", ofType: "json")
        
        let url = URL(fileURLWithPath: pathString!)
        
        guard pathString != nil else{
            return [People]()
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let peopleData = try decoder.decode([People].self, from:data)
                
                return peopleData
            }
            catch {
                print(error)
            }
           
        }
        catch {
            print(error)
        }
        
        return [People]()
        
    }
}
