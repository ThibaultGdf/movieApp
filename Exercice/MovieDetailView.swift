//
//  ContentView.swift
//  Exercice
//
//  Created by Thibault GODEFROY on 20/09/2022.
//

import SwiftUI

struct MovieDetailView: View {
    let movie : Movie
    @State var heart: Bool = false
    
    var body: some View {
        
        
        VStack {
           
            Button {
                heart.toggle()
              //  else
            } label: {
                

                Image(systemName: heart ? "heart.fill" : "heart")
                    .foregroundColor(.red)
                
            
                
            }
            
            
            
            Text(movie.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            
            Text(movie.director)
                .font(.headline)
                .fontWeight(.bold)
                .padding(5)
            
            Text("\(movie.year)")
                .italic()
            
            Image(movie.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(movie.type.rawValue)
                .italic()
                
                .padding(30)
            Text(movie.description)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
            
                .padding()
    Spacer()
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: movies[0])
    }
}
