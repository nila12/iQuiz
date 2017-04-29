//
//  TableViewController.swift
//  iQuiz
//
//  Created by iGuest on 4/28/17.
//  Copyright © 2017 iGuest. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBAction func SettingsPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Settings", message: "Settings go here", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            //print("Handle Ok logic here")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            //print("Handle Cancel Logic here")
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    var images = [String]()
    var subjects = [String]()
    var descrips = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = ["mathematics.jpg",
                  "marvelicon.png",
                  "scienceicon.jpeg"]
        
        subjects = ["Mathematics",
                    "Marvel Super Heroes",
                    "Science"]
        
        descrips = ["some math descrip",
                    "some marvel thing",
                    "some damn science thing"]
        
        tableView.estimatedRowHeight = 50
        
        //firstCellContent.subviews[0].

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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return subjects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "mathcell", for: indexPath) as! TableViewCell
        
        let row = indexPath.row
        cell.mathlabel.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        cell.mathlabel.text = subjects[row]
        cell.mathimg.image = UIImage(named: images[row])
        cell.mathdesclabel.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        cell.mathdesclabel.text = descrips[row]

        // Configure the cell...
     
        // each time the table VC needs a new cell to display, it will call this method and pass through
            // an index value indicating the row for which a cell object is required
     
        // this method is supposed to return an instance of the tableviewcell class and extract correct subject and img file names from the data arrays based on the index value passed through to the method

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

}
