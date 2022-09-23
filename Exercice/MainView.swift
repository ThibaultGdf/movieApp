//
//  MainView.swift
//  Exercice
//
//  Created by Thibault GODEFROY on 22/09/2022.
//

import Foundation
import SwiftUI


struct MainView: View {
    var body: some View {
        
        TabView {
            MovieList()
                .tabItem {
                   Text("Films")
                    Image(systemName: "film.circle")
                        .foregroundColor(.red)
                }

            ProfileView()
                .tabItem {
                    Text("Profil")
                    Image(systemName: "person.circle")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
