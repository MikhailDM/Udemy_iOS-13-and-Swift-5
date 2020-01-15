//
//  ContentView.swift
//  Angela Card
//
//  Created by Mike on 15.01.2020.
//  Copyright © 2020 Mike Team. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("mike")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Mikhail Dmitriev")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+44 123 456 789", imageName: "phone.fill")
                InfoView(text: "mike@email.com", imageName: "envelope.fill")                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


