//
//  TodoItem.swift
//  Todolist
//
//  Created by Kilian Kellermann on 20.02.17.
//  Copyright © 2017 Kilian Kellermann. All rights reserved.
//

import Foundation

/*   
 *   Klasse für die Definition der Items.
 *   - isDone -> Erledigt oder nicht erledigt.
 *   - title -> Der Text für das Label.
 *   Info: TodoItem ist eine Klasse damit später im
 *         Code mit der Referenz gearbeitet werden kann.
 *         Falls irgendwo Daten geädenrt werden, passiert
 *         dies ebenfalls in dieser Klasse. Bei einer
 *         Struktur würde nur die Kopie geändert werden.
 */
class TodoItem {
    var isDone: Bool
    let title: String
    
    init(title: String, isDone: Bool) {
        self.title = title
        self.isDone = isDone
    }
}
