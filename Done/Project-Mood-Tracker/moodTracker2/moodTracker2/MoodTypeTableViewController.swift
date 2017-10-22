//
//  MoodTypeTableViewController.swift
//  moodTracker2
//
//  Created by Johnathan Chen on 9/29/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

protocol moodDelegate: class {
    func selectMood(mood: String)
}

class MoodTypeTableViewController: UITableViewController {
    
    weak var delegate: moodDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moodTypeCell", for: indexPath) as! MoodTypeTableViewCell
        
        switch indexPath.row {
        case 0: cell.moodTypeCell.text = moodSelect.happy.rawValue
        case 1: cell.moodTypeCell.text = moodSelect.medium.rawValue
        case 2: cell.moodTypeCell.text = moodSelect.bad.rawValue
        default: break
        }
        
        return cell
    }
 
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //var mood = ""
        
        switch indexPath.row {
        case 0: self.delegate?.selectMood(mood: moodSelect.happy.rawValue)
        case 1: self.delegate?.selectMood(mood: moodSelect.medium.rawValue)
        case 2: self.delegate?.selectMood(mood: moodSelect.bad.rawValue)
        default: 
//            print(moodSelect.bad.r)
//        delegate?.selectMood(mood: moodSelect.bad.rawValue)
            print(self.delegate)
            
    }
        
         navigationController?.popToRootViewController(animated: true)
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
