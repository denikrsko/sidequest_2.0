//
//  AddView_ToDo.swift
//  sidequest_2.0
//
//  Created by Denisa Kršková on 21/03/2024.
//
import SwiftData
import SwiftUI

struct AddView_ToDo: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var deadline = Date.now
    
    var deadlineShort : String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.mm hh:ss"
        return formatter.string(from: deadline)
    }

    
    var body: some View {
        NavigationStack{
            Form {
                Section{
                    TextField ("Name of to-do task", text: $name)
                    
                    DatePicker("Choose a deadline", selection: $deadline, in:Date.now...)
                        .labelsHidden()
                }
                Button("Save") {
                    let newtask = Task_ToDo(name: name, deadline: deadline)
                    modelContext.insert(newtask)
                    dismiss()
                }
            .navigationTitle("Add new task")
            }
        }
    }
}

#Preview {
    AddView_ToDo()
}
