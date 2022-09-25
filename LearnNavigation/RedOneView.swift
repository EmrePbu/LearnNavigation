//
//  ContentView.swift
//  LearnNavigation
//
//  Created by emre argana on 25.09.2022.
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        NavigationView {
            VStack{
                CircleNumberView(color: .red, number: 1)
                    .navigationBarTitle("Red One", displayMode: .inline)
                    .offset(y: -60)
                
                NavigationLink(destination: OrangeTwoView(color: .orange), label: {
                    NavigateButton(text: "Next Screen")
                })
            }
        }
        .accentColor(Color(.label))
    }
}

struct OrangeTwoView: View {
    var color: Color
    var body: some View {
        VStack{
            CircleNumberView(color: color, number: 2)
                .navigationTitle("Orange Two")
                .offset(y: -60)
            
            NavigationLink(destination: GreenThreeView(color: .green), label: {
                NavigateButton(text: "Next Screen")
                
            })
        }
    }
}

struct GreenThreeView: View {
    var color: Color
    var body: some View {
        VStack{
            CircleNumberView(color: color, number: 3)
                .navigationTitle("Green Three")
                .offset(y: -60)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
            
            
    }
}

struct CircleNumberView: View {
    var color: Color
    var number: Int
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(color)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 60, weight: .bold))
        }
    }
}

struct NavigateButton: View {
    var text: String
    var body: some View {
        Text("\(text)")
            .bold()
            .frame(width: 280, height: 50, alignment: .center)
            .background(Color.blue)
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}
