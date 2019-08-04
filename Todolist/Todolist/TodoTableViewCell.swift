//
//  TodoTableViewCell.swift
//  Todolist
//
//  Created by Kilian Kellermann on 20.02.17.
//  Copyright © 2017 Kilian Kellermann. All rights reserved.
//

import UIKit

// Klasse für die einzelnen UITableViewCells.
// Diese beinhalten die Labels sowie die Images, die
// angezeigt werden sollen.
class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var statusImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
}
