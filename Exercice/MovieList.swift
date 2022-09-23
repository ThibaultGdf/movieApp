//
//  MoviesView.swift
//  Exercice
//
//  Created by Thibault GODEFROY on 20/09/2022.
//

import SwiftUI

struct MovieList: View {
    @State var addMovieView: Bool = false
    @State private var searchText = ""
    @State var updatedMovies = movies
    var body: some View {
        
        
        NavigationView {
            
            VStack {
                
                List(updatedMovies) { movie in
                    NavigationLink {
                        MovieDetailView(movie: movie)
                    } label: {
                        MovieRow(title: movie.title, year: movie.year)
                    }
                }
                .searchable(text: $searchText)
                .navigationTitle("Movies")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing:
                                        
                                        Button(action: {
                    addMovieView = true
                    
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.red)
                })
                ) .sheet(isPresented: $addMovieView) {
                    AddMovieView(updatedMovies: $updatedMovies)
                }
            }
        }
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}

struct MovieRow: View {
    let title: String
    let year: Int
    var body: some View {
        HStack{
            Image(systemName: "film")
                .foregroundColor(.red)
            Text(title)
            Text(String(year))
                .font(.subheadline)
        }
    }
}


