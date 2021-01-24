//
//  Clubs.swift
//  Kyakupi
//
//  Created by 一条和洋 on 2021/01/18.
//

import SwiftUI

struct ClubTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Text("HOME") }
            CustomerView()
                .tabItem { Text("CUSTOMERS") }
            Text("SCHEDULES")
                .tabItem { Text("SCHEDULES") }
            Text("SETTINGS")
                .tabItem { Text("SETTINGS") }
        }
    }
}

struct ClubTabView_Previews: PreviewProvider {
    static var previews: some View {
        ClubTabView()
    }
}
