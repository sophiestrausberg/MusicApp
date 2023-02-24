//
//  ContentView.swift
//  MusicApp
//
//  Created by Sophie Strausberg on 2/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world! This better work. Or else.")
        }
        .padding()
    }
    
        init() {
            for name in UIFont.familyNames {
                print(name)
                for n in UIFont.fontNames(forFamilyName: name) {
                    print(n)
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
