//
//  PeopleTabView.swift
//  M4.c5
//
//  Created by LIU SHURUI on 2021/03/16.
//

import SwiftUI

struct PeopleTabView: View {
    
    var body: some View {
        
        TabView {
            PeopleListView()
                .tabItem {
                    VStack {
                        Image(systemName:"list.bullet")
                        Text("Staff")
                    }
                }
            PeopleDetailView()
                .tabItem {
                    VStack {
                        Image(systemName:"lightbulb.slash")
                        Text("Infomation")
                    }
                }
        }
        
    }
}

struct PeopleTabView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleTabView()
            .environmentObject(PeopleModel())
    }
}
