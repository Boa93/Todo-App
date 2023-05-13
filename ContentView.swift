//
//  ContentView.swift
//  TodoApp
//
//  Created by Boa on 13/05/2023.
//

import SwiftUI

struct ContentView: View {
    private var todos = [
    Todo(name: "go to work", catogory: "figure.walk"),
    Todo(name: "watch attack", catogory: "play.rectangle"),
    Todo(name: "slepping", catogory: "bed.double.fill"),
    Todo(name: "play games", catogory: "gamecontroller"),
    Todo(name: "came to doctor", catogory: "cross.case")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(todos,id: \.name) {(todo) in
                    NavigationLink(destination: VStack{
                        
                        Image(systemName: todo.catogory)
                        Text(todo.name)
                    }){
                        HStack {
                            Image(systemName: todo.catogory)
                            Text(todo.name)
                    }
                    }
                }
            }.navigationBarTitle("Todo list")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Todo {
    var name: String
    var catogory: String
}
