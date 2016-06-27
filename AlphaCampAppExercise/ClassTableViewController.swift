//
//  ClassTableViewController.swift
//  AlphaCampAppExercise
//
//  Created by 張智涵 on 2016/6/27.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit

class ClassTableViewController: UITableViewController {
    
    var classDetail: [classCell] = [
        
        classCell(name: "網站開發工程師實戰營", page: "https://www.alphacamp.co/bootcamp/web-development-bootcamp/"),
        classCell(name: "IOS APP 開發工程師實戰營", page: "https://www.alphacamp.co/bootcamp/ios-app-dev-bootcamp/"),
        classCell(name: "網路行銷與流量成長實戰營", page: "https://www.alphacamp.co/bootcamp/marketing-and-growth-bootcamp/"),
        classCell(name: "產品 UI/UX 設計實戰營", page: "https://www.alphacamp.co/bootcamp/product-design-bootcamp/")
        
    ]
    
    
    let customCellIdentifier = "CustomClassTableViewCell"
    let logoPic = UIImage(named: "alpha-logo-titleview.png")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = 100
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.registerNib(UINib(nibName: "CustomClassTableViewCell", bundle: nil), forCellReuseIdentifier: customCellIdentifier)
        self.navigationController?.navigationBar.barTintColor = UIColor.blackColor()
        self.navigationItem.titleView = UIImageView(image: logoPic)
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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return classDetail.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomClassTableViewCell", forIndexPath: indexPath) as! CustomClassTableViewCell
        // Configure the cell...
        cell.classLabel.text = classDetail[indexPath.row].name
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "classWebSegue"{
            
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationViewController = segue.destinationViewController as! ClassWebViewController
                destinationViewController.classWebPage = classDetail[indexPath.row]
            }
        }
        
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("classWebSegue", sender: classDetail[indexPath.row])
    }


}
