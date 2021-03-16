//
//  ContentView.swift
//  M4.c5
//
//  Created by LIU SHURUI on 2021/03/16.
//

import SwiftUI

struct PeopleListView: View {
    
    @EnvironmentObject var model:PeopleModel
   
    var body: some View {
        
        NavigationView {
            List(model.people) { p in
                
                VStack(alignment: .leading) {
                    if model.showName{
                        Text("Name: \(p.name)")
                    }
                    if model.showAddress{
                        Text("Address: \(p.address)")
                    }
                    if model.showCompany{
                        Text("Company: \(p.company)")
                    }
                    if model.showYearsOfExperience{
                        Text("Years of Experience: \(String(p.yearsOfExperience))")
                    }
                }
                    
                
            }
            .navigationBarTitle("Staff", displayMode: .automatic)
            
        }
    }
}

struct PeopleListView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleListView()
            .environmentObject(PeopleModel())
    }
}
