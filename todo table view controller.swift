//
//  todo table view controller.swift
//  todo list
//
//  Created by Scholar on 6/27/22.
//

import UIKit

class todo_table_view_controller: UITableViewController {

    var todos : [Todo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todos = createTodos()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    } // END OF VIEWDIDLOAD FUNCTION
    
    func createTodos() -> [Todo] {
        let swift = Todo()
        swift.name = "Show everyone we know swift"
        swift.important = true
    
        let dog = Todo()
        dog.name = "Walk Sammy"
        dog.important = true
    
        
        return [swift, dog]
}
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return todos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//////////////// ****************** need to put the "reuseIdentifier" somewhere from the "main" view but idk where
     
        let todo = todos[indexPath.row]
        
        if todo.important{
            cell.textLabel?.text = "🐶" + todo.name
        }else{
            cell.textLabel?.text = todo.name
        }
      return cell
    }
    
}
