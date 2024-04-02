//
//  DetailView_ToDo.swift
//  sidequest_2.0
//
//  Created by Denisa Kršková on 24/03/2024.
//
import SwiftData
import SwiftUI

struct DetailView_ToDo: View {
    let task: Task_ToDo
    
    var body: some View {
        VStack{
            Text(task.name.uppercased())
            
        }
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Task_ToDo.self, configurations: config)
        let example = Task_ToDo(name: "take out tash", deadline: .now)
        
       return DetailView_ToDo(task: example)
            .modelContainer(container)
    } catch {
        return Text("Failed to create preview: \(error.localizedDescription)")
    }
}
