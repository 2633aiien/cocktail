//
//  DetailSwiftUIView.swift
//  Cocktail_SwiftUI
//
//  Created by allen on 2023/3/10.
//

import SwiftUI

struct DetailSwiftUIView: View {
    var name: String
    var introduce: String

        var body: some View {
            Text(name)
            Text(introduce)
        }
}

