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
    var recipe: String
    var review: String

    

    var body: some View {
        NavigationStack {
            VStack {
                Image(name).resizable()
                    .frame(width: UIScreen.main.bounds.width, height: 300)


                Text(name).font(.system(size: 36)).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets(top: 20, leading: 20, bottom: 10, trailing: 20)).foregroundColor(.white)
                Text(introduce).font(.system(size: 20)).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)).foregroundColor(.white)

                Text("需要的材料有").font(.system(size: 30)).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)).foregroundColor(.white)

                Text(recipe).font(.system(size: 20)).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets(top: 10, leading: 20, bottom: 30, trailing: 20)).foregroundColor(.white)


                Text(review).font(.system(size: 24)).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)).foregroundColor(.white)

                Spacer()
            }.navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(.black, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)

        }.background(Color.black)
    }
}

struct DetailSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSwiftUIView(name: "長島冰茶", introduce: "介紹", recipe: "酒譜", review: "心得")
    }
}


