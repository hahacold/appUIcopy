//
//  ContentView.swift
//  appUIcopy
//
//  Created by User19 on 2023/10/2.
//

import SwiftUI


struct ContentView: View {
    @State private var isAble = true
    var body: some View {
        
        ZStack{
            
            Image("map")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            user(text: "steve")
            user(text: "cook")
            user(text: "peter")
            Rectangle()
                .frame(width:370,height: 350)
                .cornerRadius(50.0)
                .offset(x: 0, y: 225)
            ZStack{
                Image(systemName: "bubble.left")
                    .foregroundColor(.white)
            }
            VStack{
                Image("peter")
                    .resizable()
                    .frame(width:85,height: 85)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("Peter")
                    .foregroundColor(.white)
                    .bold()
                Text("apppeterpan@gmail.com")
                    .foregroundColor(.white)
                    .opacity(0.7)
                Text(" ")
                Text("At this place since: 10:20AM")
                    .foregroundColor(.white)
                    .bold()
                Text(" ")
                Text("Last update: Just now")
                    .foregroundColor(.white)
                    .bold()
    
                Text("Share your location for this person")
                    .bold()
                    .foregroundColor(.white)
                    .offset(x: -25, y: 35)
                Toggle(" ", isOn:$isAble)
                    .foregroundColor(.white)
                    .toggleStyle(SwitchToggleStyle(tint: .purple))
                    .offset(x: 140, y:0)
                    .labelsHidden()
                
                ZStack {
                    Text("Direction")
                        .bold()
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 3)
                                .frame(width: 100, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(color: .purple,
                                        radius: 3, x: 3, y: 3)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 20)
                                )
                                .shadow(color: Color.purple, radius: 2, x: -2, y: -2)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 20)
                                )
                        )
                    
                }
                HStack(spacing:30){
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(red: 147/256, green: 112/256, blue: 219/256))
                    Image(systemName: "person.2.fill")
                        .resizable()
                        .frame(width: 40, height: 30)
                        .foregroundColor(Color(red: 147/256, green: 112/256, blue: 219/256))
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(red: 147/256, green: 112/256, blue: 219/256))
                    
                    Image(systemName: "text.alignleft")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                }
                        
                
                
                    
                    
                
               

                
            }
            .offset(x:0, y: 220)
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

struct user: View {
    let text: String
    let x = CGFloat.random(in: 30...350)
    let y = CGFloat.random(in: 30...300)
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
                .frame(width: 55, height: 30)
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
