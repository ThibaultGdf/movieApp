//
//  ProfileView.swift
//  Exercice
//
//  Created by Thibault GODEFROY on 22/09/2022.
//

import SwiftUI

struct ProfileView: View {
    @State var profilmovie: String = ""
    var body: some View {
        
        VStack{
            
            
            Text("Profil")
                .fontWeight(.bold)
            
            Image("profil")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 200, height: 200)
            
            Text("@Thomas")
                .font(.title)
                .fontWeight(.bold)
            
            Text("22/02/1996")
                .padding()
            
            Text("Hello, I'm a movie fan and most of all i LOVE Leonardo DiCaprio ")
                .multilineTextAlignment(.center)
            
            List {
                Section(header: Text("Genres préférés")) {
                    Text("Drame, Thriller, Romantique")
                
                }
                .headerProminence(.increased)
                
                Section() {
                    Text("Films préférés")
                        .fontWeight(.semibold)
                    
                           }
                
            } // fin de List
            
            .listStyle(.insetGrouped)
            
        } // fin de VStack
        
    } //fin de var body
    
} //fin de struct ProfileView

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
