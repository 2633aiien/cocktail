//
//  CocktailFetcher.swift
//  Cocktail_SwiftUI
//
//  Created by allen on 2023/3/13.
//

import Foundation

public class CocktailFetcher: ObservableObject {
    @Published var cocktails = [Cocktail]()
    init() {
        load()
    }
    func load() {
        let url = URL(string: "http://52.69.190.88/cocktail_mysql/get_cocktail_information.php")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"

        URLSession.shared.dataTask(with: request) { data, response, error in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([Cocktail].self, from: d)
                    DispatchQueue.main.async {
                        self.cocktails = decodedLists
                        print(data!)
                    }
                } else {
                    print("No Data")
                }
            } catch {
                print("error: \(error)")
            }
        }.resume()
    }
}
