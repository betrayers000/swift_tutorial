//
//  SignUp.swift
//  Tutorial
//
//  Created by 박정우 on 2020/01/20.
//  Copyright © 2020 박정우. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    
    // load Todo dummy data
    let todos = Todo.all()
    
    var body: some View {
        NavigationView{
            List(self.todos, id:\.title){Todo in
                NavigationLink(destination: Text(Todo.title)){
                    TodoCell(Todo: Todo)
                }
            }
        }.navigationBarTitle("TodoList!")
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}

struct TodoCell:View {
    let Todo: Todo
    var body: some View{
        HStack{
            VStack{
                Text(Todo.title).font(.largeTitle)
                Text(Todo.content)
            }
        }
    }
}
