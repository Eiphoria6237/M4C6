//
//  PeopleDetailView.swift
//  M4.c5
//
//  Created by LIU SHURUI on 2021/03/16.
//

import SwiftUI

struct PeopleDetailView: View {
   
    
    @EnvironmentObject var model:PeopleModel
    
    var body: some View {
        
        List {
            Toggle("Show name:",isOn:$model.showName)
          
            Toggle("Show address:",isOn: $model.showAddress)
           
            Toggle("Show company:",isOn: $model.showCompany)

            Toggle("Show years of experience:",isOn: $model.showYearsOfExperience)
        }
        
    }
}

struct PeopleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleDetailView()
    }
}
