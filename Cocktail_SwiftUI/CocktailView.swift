//
//  CocktailView.swift
//  Cocktail_SwiftUI
//
//  Created by allen on 2023/3/13.
//

import SwiftUI

struct CocktailView: View {
    @ObservedObject var fetcher = CocktailFetcher()
    @StateObject var viewModel = ImageProvider()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(fetcher.cocktails) { cocktail in
                    HStack {
                        Image(cocktail.name).resizable().aspectRatio(contentMode: .fit).frame(width: 50)
                        Text(cocktail.name).font(.system(size: 24))
                        NavigationLink(destination: DetailSwiftUIView(name: cocktail.name, introduce: cocktail.introduce, recipe: cocktail.recipe, review: cocktail.review)) {
                            Text("")
                        }
                    }
                }.navigationTitle("調酒").frame(alignment: .center)
            }
        }.accentColor(.white)
    }
}

struct CocktailView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailView()
    }
}
