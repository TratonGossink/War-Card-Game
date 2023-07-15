//
//  ContentView.swift
//  War Card Game
//
//  Created by Traton Gossink on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var plyrCard = "card4"
    @State var cpuCard = "card8"
    @State var plyrScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .ignoresSafeArea()
            VStack(alignment: .center
                   , spacing: 30) {
                Image("logo")
                    .padding()
                    .padding(.bottom)
                HStack {
                    Image(cpuCard)
                        .padding(25)
                    Image(plyrCard)
                        .padding()
                }
                .padding(.bottom)
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                HStack(alignment: .center, spacing: 120) {
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                    }
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(plyrScore))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                    }
                }
                .foregroundColor(.white)
            }
                   .offset(y: -30)
                   .padding()
        }
    }
    
    func deal() {
        
        var plyrValue = Int.random(in: 2...14)
        var cpuValue = Int.random(in: 2...14)
        
        plyrCard = "card" + String(plyrValue)
        
        cpuCard = "card" + String(cpuValue)
        
        if plyrValue > cpuValue {
            plyrScore += 1
            
        } else {
            cpuScore += 1
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
