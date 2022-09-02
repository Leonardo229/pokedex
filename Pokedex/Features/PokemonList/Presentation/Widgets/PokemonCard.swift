//
//  PokemonCard.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 09/08/22.
//

import Foundation
import SwiftUI


struct PokemonCard: View {
    

    
    @State var pokemon: Pokemon
    var body: some View {
        VStack {
            ZStack(alignment: .trailing) {
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    Text("#\(pokemon.pokedexNumber)")
                        .font(Font.system(size: 16))
                        .fontWeight(.bold)
                    Spacer()
                    Text(pokemon.name)
                        .font(Font.system(size: 24))
                    Spacer()

                }

            }
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: 104)
            .background(pokemon.mainColor)
            .cornerRadius(APP_THEME.shapes.large)
            .shadow(color: .black.opacity(0.25), radius: 2, y: 4)
            .padding(.horizontal)

                AsyncImage(url: URL(string: pokemon.mainImageUrl ?? ""), scale: 2) { image in
                            image
                              .resizable()
                        } placeholder: {
                            ProgressView()
                                .progressViewStyle(.circular)
                        }
                        .frame(width: 132, height: 132)
                        .padding(.trailing)
                        .padding(.bottom, 32)

                    
            }
            .opacity(pokemon.mainColor == nil ? 0 : 1)
            .animation(.easeInOut, value: pokemon.mainColor)
            .offset(x: pokemon.mainColor == nil ? UIScreen.main.bounds.size.width : 0)
            .animation(.easeInOut, value: pokemon.mainColor)
        }.onAppear {
            DispatchQueue.global().async {
                       if let data = try? Data(contentsOf: URL(string:pokemon.mainImageUrl ?? "")!) {
                           if let image = UIImage(data: data) {
                               image.getColors(quality: .minimum) {
                                   colors in
                                   DispatchQueue.main.async {
                                       self.pokemon.mainColor = Color(colors.background)
                                   }
                                   
                               }
                           }
                       }
                   }

            
        }
        }
       
}
