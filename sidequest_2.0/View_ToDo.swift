//
//  View_ToDo.swift
//  sidequest_2.0
//
//  Created by Denisa Kršková on 24/03/2024.
//
import SwiftData
import SwiftUI

struct View_ToDo: View {
    @Environment(\.modelContext) var modelContext
    @Query var tasks_ToDo: [Task_ToDo]
    
    @State private var showingAddViewToDo = false
    var body: some View {
        NavigationStack{
            List{
                ForEach(tasks_ToDo) { task in
                    NavigationLink(value: task) {
                        VStack(alignment: .leading) {
                            Text(task.name)
                                .font(.headline)
                        }
                    }
                }
            }
            .navigationTitle("To-Do List")
            .navigationDestination(for: Task_ToDo.self) { task1 in
                DetailView_ToDo(task: task1)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add task", systemImage: "plus") {
                        showingAddViewToDo.toggle()
                    }
                }
            }
            .sheet(isPresented: $showingAddViewToDo) {
                AddView_ToDo()
            }
        }
    }
}

#Preview {
    View_ToDo()
}
