//
//  ContentView.swift
//  appUIcopy
//
//  Created by User19 on 2023/10/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Image("map")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            user(text: "steve")
            user(text: "cook")
            user(text: "peter")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}

struct user: View {
    let text: String
    let x = CGFloat.random(in: 30...350)
    let y = CGFloat.random(in: 30...380)
    let hour = Int.random(in: 0...24)
    let min = Int.random(in: 0...60)
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.purple)
                .frame(width: 100, height: 100)
                .opacity(0.3)
                .position(x: x, y:  y)
            Circle()
                .foregroundColor(.purple)
                .frame(width: 70, height: 70)
                .position(x: x, y:  y)
            Triangle()
                .foregroundColor(.purple)
                .frame(width: 60, height: 30)
                .rotationEffect(.degrees(180))
                .position(x: x, y:  y+35)
            Image(text)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .position(x: x, y:  y)
            Text("\(hour)h\(min)\'")
                .foregroundColor(.white)
                .bold()
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .background(Color.black)
                .cornerRadius(4)
                .position(x: x, y:  y+65)
        }
        
            
    }
}
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        }
    }
}
