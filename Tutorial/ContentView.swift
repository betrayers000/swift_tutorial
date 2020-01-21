//
//  ContentView.swift
//  Tutorial
//
//  Created by 박정우 on 16/01/2020.
//  Copyright © 2020 박정우. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // struct value can't change in inner method
    // struct value can change using @state
    @State var touchedCount = 0
    @State var name = ""
    @State var age = ""
    
    var body: some View {
        NavigationView{
            Form{
                Text("Hello, World! click count:\(touchedCount)")
                Button("Button"){
                    
                    // button click event callback
                    self.touchedCount += 1
                }
                Section{
                    // TextField use for input string, text attr bind value
                    TextField("input name", text: $name)
                    Text("My name is \(name)")
                }
                
                Section{
                    // Using keyboardType for select keyboardType eg.numberkeypad
                    TextField("input your age", text: $age)
                        .keyboardType(.numberPad)
                }
                Section{
                    // push SingUp view but bug.... 
                    NavigationLink(destination: SignUp()){
                        Text("signup")
                    }
                }
            }.navigationBarTitle("Todo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
