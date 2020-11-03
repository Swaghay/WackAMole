//
//  ContentView.swift
//  wackAmole
//
//  Created by 64004046 on 9/14/20.
//  Copyright © 2020 64004046. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 0
    @State var holes: [String] = ["dig", "", "", "", ""]
    @State var button = "Start"
    @State var timeR = 20
    @State var activ = false
    
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        return VStack{
            
            Text("Time: \(timeR)")
            
            Text("Wack a Mole")
                .font(.largeTitle)
                .padding(.bottom, 10)
            
            HStack {
                ZStack{
                    
                    Circle()
                        //.stroke(lineWidth: 4)
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.black, radius: 5)
                    
                    Image(self.holes[0])
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .onTapGesture {
                            
                            if(self.activ == true){
                                
                                
                                if (self.holes[0] == "dig") {
                                    
                                    self.score += 1
                                    
                                    let randomInt = Int.random(in: 0...4)
                                    
                                    for n in 0...4 {
                                        
                                        self.holes[n] = ""
                                        
                                    }
                                    
                                    self.holes[randomInt] = "dig"
                                    
                                }
                            }
                            
                    }
                    
                }
            }
            
            HStack {
                
                ZStack{
                    
                    Circle()
                        //.stroke(lineWidth: 4)
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.black, radius: 5)
                    
                    Image(self.holes[1])
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .onTapGesture {
                            
                            if(self.activ == true){
                                
                                if (self.holes[1] == "dig") {
                                    
                                    self.score += 1
                                    
                                    let randomInt = Int.random(in: 0...4)
                                    
                                    for n in 0...4 {
                                        
                                        self.holes[n] = ""
                                        
                                    }
                                    
                                    self.holes[randomInt] = "dig"
                                    
                                }
                                
                            }
                            
                    }
                }
                
                Spacer()
                
                ZStack{
                    
                    Circle()
                        //.stroke(lineWidth: 4)
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.black, radius: 5)
                    
                    Image(self.holes[2])
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .onTapGesture {
                            
                            if(self.activ == true){
                                
                                if (self.holes[2] == "dig") {
                                    
                                    self.score += 1
                                    
                                    let randomInt = Int.random(in: 0...4)
                                    
                                    for n in 0...4 {
                                        
                                        self.holes[n] = ""
                                        
                                    }
                                    
                                    self.holes[randomInt] = "dig"
                                    
                                }
                                
                            }
                            
                    }
                    
                }
            }
            .padding(.init(top: 10, leading: 30, bottom: 30, trailing: 30))
            
            HStack {
                
                ZStack{
                    
                    Circle()
                        //.stroke(lineWidth: 4)
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.black, radius: 5)
                    
                    Image(self.holes[3])
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .onTapGesture {
                            
                            if(self.activ == true){
                                
                                if (self.holes[3] == "dig") {
                                    
                                    self.score += 1
                                    
                                    let randomInt = Int.random(in: 0...4)
                                    
                                    for n in 0...4 {
                                        
                                        self.holes[n] = ""
                                        
                                    }
                                    
                                    self.holes[randomInt] = "dig"
                                    
                                }
                                
                            }
                            
                    }
                }
                
                Spacer()
                
                ZStack{
                    
                    Circle()
                        //.stroke(lineWidth: 4)
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.black, radius: 5)
                    
                    Image(self.holes[4])
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .onTapGesture {
                            
                            if(self.activ == true){
                                
                                if (self.holes[4] == "dig") {
                                    
                                    self.score += 1
                                    
                                    let randomInt = Int.random(in: 0...4)
                                    
                                    for n in 0...4 {
                                        
                                        self.holes[n] = ""
                                        
                                    }
                                    
                                    self.holes[randomInt] = "dig"
                                    
                                }
                                
                            }
                            
                    }
                    
                }
            }
            .padding(.init(top: 0, leading: 60, bottom: 30, trailing: 60))
            
            Text("Score: " + String(self.score))
                .font(.largeTitle)
                .onReceive(timer) { time in
                    
                    if(self.activ == true){
                        
                        let randomInt = Int.random(in: 0...4)
                        
                        for n in 0...4 {
                            
                            self.holes[n] = ""
                            
                        }
                        
                        self.holes[randomInt] = "dig"
                        
                    }
                    
            }
            
            Button(action: {
                
                if(self.button == "Start"){
                    
                    self.button = "End"
                    self.activ = true
                    self.timeR = 20
                    
                } else if self.button == "End"{
                    
                    self.button = "Reset"
                    self.activ = false
                    
                } else if self.button == "Reset" {
                    
                    self.button = "Start"
                    self.score = 0
                    self.timeR = 20
                    
                }
                
                
            }){
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 100, height: 50)
                        .shadow(color: Color.black, radius: 5)
                    
                    Text(self.button)
                        .foregroundColor(Color.white)
                    
                }
                .onReceive(timer) { time in
                    if(self.activ == true){
                        if self.timeR > 0 {
                            self.timeR -= 1
                        } else if self.timeR == 0 {
                            self.activ = false
                            self.button = "Reset"
                        }
                    }
                    
                }
                
            }
                
            .foregroundColor(Color.black)
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

