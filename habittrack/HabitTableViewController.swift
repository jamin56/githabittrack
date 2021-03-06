//
//  HabitTableViewController.swift
//  habittrack
//
//  Created by Ben Gibson on 7/8/17.
//  Copyright © 2017 Wabi Sabi. All rights reserved.
//

import UIKit

class HabitTableViewController: UITableViewController {
    
    // MARK: Properties
    var habits = [Habit]()
    
    var status = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load sample data
        loadSampleHabits()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // we are using a small number of rows so group everything into 1 section
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // create a row for each object in habits array
        return habits.count
    }

    
    // Populates the rows in table view with cells, as far as I understand it
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // TableViewCells are reused and should be dequeued using a cell identifier
        let cellIdentifier = "HabitTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HabitTableViewCell else {
            fatalError("The dequeued cell is not an instance of HabitTableViewCell")
        }
        
        // Fetches the appropriate meal for the data source layout
        let habit = habits[indexPath.row]
        
        // Set Label text in cells
        cell.nameLabel.text = habit.name
        cell.goalLabel.text = "Current Streak: "
        
        // Set button image
        let btnImage = UIImage(named: "unknownPhoto")
        let successImage = UIImage(named: "successPhoto")
        cell.statusButton.setImage(btnImage, for: UIControlState.normal)
        cell.statusButton.setImage(successImage, for: UIControlState.selected)
        
        // tag to identify row number, used in button function
        cell.statusButton.tag = indexPath.row
        
        
        // Add Functionality to button
        cell.statusButton.addTarget(self, action: #selector(statusButtonTapped), for: UIControlEvents.touchUpInside)
        
        
        
        return cell
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
    
    // MARK: Private Methods
    
    func loadSampleHabits() {
        
        // Create 3 sample habits
        guard let habit1 = Habit(name: "Meditation") else {
            fatalError("Unable to instantiate habit1")
        }
        guard let habit2 = Habit(name: "Exercise") else {
            fatalError("Unable to instantiate habit2")
        }
        guard let habit3 = Habit(name: "Japanese") else {
            fatalError("Unable to instantiate habit3")
        }
        
        habits += [habit1, habit2, habit3]
        
    }
    
    //MARK: Actions
    
    func statusButtonTapped(sender: UIButton) {
        
        let buttonRow = sender.tag
        print(buttonRow, "button tapped")
        
        // Update button state
        sender.isSelected = true
        
    }
    
}
