//
//  ContentView.swift
//  Kyakupi
//
//  Created by 一条和洋 on 2021/01/17.
//

import SwiftUI

struct MainView: View {
    @State var showingClubPage = false
    
    var body: some View {
        VStack {
            Text("MainPage")
                .padding()
            Button(action: {self.showingClubPage.toggle()}) {
                Text("タブへ")
            }.fullScreenCover(isPresented: $showingClubPage, content: {
                ClubTabView()
            })
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
