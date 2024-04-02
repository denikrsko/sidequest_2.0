//
//  ContentView.swift
//  sidequest_2.0
//
//  Created by Denisa Kršková on 21/03/2024.
//
import SwiftData
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
            NavigationLink(destination: View_ToDo()) {
                Text("to-do")
            }
        }
    }
}

#Preview {
    ContentView()
}
