//
//  ContentView.swift
//  Cocktail_SwiftUI
//
//  Created by allen on 2023/3/10.
//

import SwiftUI

struct ContentView: View {

    @State private var navigationIsShowing = false

    var body: some View {
        VStack {
            VStack {
                Image(systemName: "globe")
                    .font(.system(size: 26))
                    .foregroundColor(.black)
                Circle()
                    .fill(.red)
                    .frame(width: 52, height: 52)
                    .foregroundColor(.green)
                    .opacity(1)

            }.onTapGesture {
                print("hai fatto tap su camera")
                navigationIsShowing = true
        }
        if navigationIsShowing {
            NavigationView {
                NavigationLink{

                } label: {
                    Text("按鈕")
                }
            }
        }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
