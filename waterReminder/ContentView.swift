//
//  ContentView.swift
//  waterReminder
//
//  Created by Zhou Lucas on 2023/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var isWatered = false
    
    var body: some View {
        VStack {
            ZStack {
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image(systemName: "crown.fill")
                    .font(.system(size: 150))
                    .foregroundColor(isWatered ? .white : .red)
                
            }.frame(minWidth: 600).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Divider()
            Toggle(isOn: $isWatered) {
                Label("睡觉不", systemImage: "drop.fill")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//APPLE
