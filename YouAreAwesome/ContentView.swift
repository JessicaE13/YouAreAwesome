//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jessica Estes on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                let imageName1 = "image0"
                let imageName2 = "image1"
                
                message = message == message1 ? message2 : message1
                imageName = imageName == imageName1 ? imageName2 : imageName1
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
