//
//  sidequest_2_0App.swift
//  sidequest_2.0
//
//  Created by Denisa Kršková on 21/03/2024.
//
import SwiftData
import SwiftUI

@main
struct sidequest_2_0App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Task_ToDo.self)
    }
}
