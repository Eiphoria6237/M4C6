//
//  M4_c5App.swift
//  M4.c5
//
//  Created by LIU SHURUI on 2021/03/16.
//

import SwiftUI

@main
struct M4_c5App: App {
    var body: some Scene {
        WindowGroup {
            PeopleTabView()
                .environmentObject(PeopleModel())
        }
    }
}
