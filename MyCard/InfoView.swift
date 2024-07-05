//
//  InfoView.swift
//  MyCard
//
//  Created by hverda on 03/07/2024.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundStyle(.white)
            .overlay(HStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
                Text(text)
                    .foregroundStyle(.black)
            })
            .padding(.all)
    }
}

#Preview {
    InfoView(text: "I am", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
}
