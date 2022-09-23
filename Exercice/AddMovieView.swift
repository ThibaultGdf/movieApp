//
//  AddMovieView.swift
//  Exercice
//
//  Created by Thibault GODEFROY on 21/09/2022.
//

import SwiftUI

struct AddMovieView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var namemovie: String = ""
    @State var creatormovie: String = ""
    @State var yearmovie: String = ""
    @State var pitchmovie: String = ""
    @State private var selectedtype = GenderMovie.Action
    @Binding var updatedMovies : [Movie]
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    
                    Section(header: Text("CARACTERISTIQUES")) {
                        TextField("Titre du film", text: $namemovie)
                        TextField("Réalisateur", text: $creatormovie)
                        TextField("Année de sortie", text: $yearmovie)
                    }
                    
                    Section(header: Text("SYNOSPIS")) {
                        TextField("Pitch", text: $pitchmovie, axis: .vertical)
                            .lineLimit(4, reservesSpace: true)
                    }
                    
                    Section(header: Text("GENRE")) {
                        
                        Picker("", selection: $selectedtype) {
                            ForEach(GenderMovie.allCases, id: \.self) {
                                Text($0.rawValue)
                                    
                            }
                           
                            
                            
                            
                        }
                        .pickerStyle(.menu)
                        .labelsHidden()
                       
                    }
                    
                }
                Button {
                    saveMovie()
                    dismiss()
                    
                } label: {
                    Text("SAUVEGARDER")
                        .foregroundColor(.red)
                }
                
               
                
            }
            .navigationBarTitle("Ajouter un film")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                Button(action: {
                    dismiss()
                }, label: {
                    Text("FERMER")
                        .foregroundColor(.red)
                })
            }
            
        }
    }
    
    func saveMovie() {
        updatedMovies.append(Movie(title: namemovie, director: creatormovie, year: Int(yearmovie) ?? 0, image: "", type: selectedtype, description: pitchmovie))
        

        
    }
}



struct AddMovieView_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieView(updatedMovies: .constant([.preview]))
    }
}
