//
//  TodoResource.swift
//  Todolist
//
//  Created by Kilian Kellermann on 20.02.17.
//  Copyright © 2017 Kilian Kellermann. All rights reserved.
//

import Foundation

// Klasse, die die Daten verwaltet. Diese besitzt ein Array mit der
// Referenz auf die Klasse TodoItem. 
class TodoResource {
    
    private var items = [TodoItem]()
    
    init() {
        items.append(TodoItem(title: "Projekt erstellen", isDone: true))
        items.append(TodoItem(title: "Controller erstellen", isDone: false))
        items.append(TodoItem(title: "Data Model vorbereiten", isDone: true))
        items.append(TodoItem(title: "Eigene TableViewCell erstellen", isDone: false))
        items.append(TodoItem(title: "Design anpassen", isDone: false))
    }
    
    // Methode gibt das ganze Array zurück.
    func getTodoItems() -> [TodoItem] {
        return items
    }
    
    // Gibt nur das Element für den Index zurück.
    func getItem(forIndex index: Int) -> TodoItem {
        return items[index]
    }
}
