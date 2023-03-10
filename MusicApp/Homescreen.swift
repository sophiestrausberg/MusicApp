//
//  Homescreen.swift
//  MusicApp
//
//  Created by Alyssa Feinberg on 2/17/23.
//

import SwiftUI

struct Homescreen: View {
    @State var show = true


    @State private var showPopUp: Bool = false
    init() {
        UINavigationBar.appearance().barTintColor = UIColor(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1))
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
    }
    
    var body: some View {
        let backgroundGradient = LinearGradient(
            gradient: Gradient(colors: [Color.pink, Color.purple, Color.white]),
            startPoint: .top, endPoint: .bottom)
        ZStack {
            backgroundGradient.ignoresSafeArea()
            if show {
                Image("Clouds")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .padding(.top, 300)
                    .transition(.opacity)
                
                Image("Dinosaur") // 1
                    .resizable()
                    .scaledToFill()
                    .frame(width: 700, height: 550)
                    .ignoresSafeArea()
                    .padding(.top, 300)
                    .transition(.opacity)
                VStack {
                    Image("CloudsOne")
                        .resizable()
                    //  .scaledToFill()
                        .ignoresSafeArea()
                        .padding(.top, 790)
                        .padding(.trailing, 130)
                        .transition(.opacity)
                }
                VStack {
                    Image("Clouds")
                        .resizable()
                    //  .scaledToFill()
                        .ignoresSafeArea()
                        .padding(.top, 845)
                        .transition(.opacity)
                }
            }
            VStack {
                    Button {
                        withAnimation(.easeInOut(duration: 30.0).delay(3)) {
                                                self.show.toggle()
                        }
                        
                    } label: {
                        Text("Start")
                            .frame(width: 200, height: 80)
                            .font(.system(size: 30))
                            .background(.pink)
                            .foregroundColor(Color.white)
                    }
                .cornerRadius(8)
                .padding(.top, 870)
            }
        }.accentColor(Color.black)
    }
}


struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen()
    }
}


