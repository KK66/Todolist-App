//
//  TodoTableViewController.swift
//  Todolist
//
//  Created by Kilian Kellermann on 20.02.17.
//  Copyright © 2017 Kilian Kellermann. All rights reserved.
//

import UIKit

class TodoTableViewController: UITableViewController {

    // Referenz auf die Daten erstellen.
    // - lazy hilft die Performance zu verbessern, da die Daten erst erstellt
    //   werden, wenn dieser Punkt erreicht wird.
    lazy var todoResource = TodoResource()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Standard: 1
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Gibt die Anzahl der Elemente für die Tabelle zurück.
        return todoResource.getTodoItems().count
    }

    // Methode um die TableViewCell mit Daten zu füllen.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Bestimmte Informationen aus den Resourcen holen, die in der Cell dargestellt werden sollen.
        let item = todoResource.getItem(forIndex: indexPath.row)
        
        // Neues Element für die Cell erstellen, die auch zurückgegeben wird.
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! TodoTableViewCell

        // Das Label in der UITableViewCell mit Daten füllen.
        cell.titleLabel?.text = item.title

        // Wurd der Todo-Punkt erledigt?
        if item.isDone {
            // Dementsprechend das Bild für erledigt laden und in der Cell anzeigen.
            cell.statusImageView.image = UIImage(named: "done")
            
            // Die Schriftart af dickgedruckt ändern.
            cell.titleLabel.font = UIFont(name: "Oxygen-Bold", size: 14)
        } else {
            // Bild für nicht erledigt laden und darstellen.
            cell.statusImageView.image = UIImage(named: "do")
            
            // Schriftart auf normal setzen.
            cell.titleLabel.font = UIFont(name: "Oxygen-Regular", size: 14)
        }
        
        return cell
    }
    
    // Die für eine Row in der UITableView ändern.
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    // Methode implementieren, falls eine Row betätigt wurde.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Daten aus den Resourcen laden und aktualisieren.
        let item = todoResource.getItem(forIndex: indexPath.row)
        item.isDone = !item.isDone
        
        // Betroffene Row neuladen mit einem speziellen Efekt.
        tableView.reloadRows(at: [indexPath], with: .fade)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
