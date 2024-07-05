//
//  ContentView.swift
//  MyCard
//
//  Created by hverda on 02/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(content: {
            Color(red: 0.1, green: 0.6, blue: 0.5)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("Foto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/.stroke(Color.white, lineWidth: 4))
                Text("Victoria Nasonova")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS Developer")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "https://www.linkedin.com/in/nasoviva/", imageName: "Linkedin")
                    
                InfoView(text: "nasoviva@gmail.com", imageName: "Mail")
            }
        })
    }
}

#Preview {
    ContentView()
}

