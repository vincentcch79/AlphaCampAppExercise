//
//  EventTableViewController.swift
//  AlphaCampAppExercise
//
//  Created by 張智涵 on 2016/6/26.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {
    
    
    var eventCell: [eventDetail] = [
        eventDetail(name: "Global Minds Series #1：Growth Hacker", description: "GMS 系列講座第一場邀請了美國知名成長駭客 Morgan Brown，以其輔導 startup 制定成長策略的豐富經驗，分享他在美國所觀察到 Growth Hack 洞見及趨勢，並教授 startup 早期開發用戶的成長心法。", date: "2016/04/19 10:00–11:30", page: "https://www.alphacamp.co/global-minds-series/#GMS1"),
        eventDetail(name: "Bootcamp #8 Demo Day", description: "Bootcamp #8 Demo Day 由 41 位學員、共 7 個團隊輪番展現他們的學習成果，當日也有許多校友團隊設置攤位，分享產品服務。此外，我們特別邀請到前 Yahoo! 台灣區董事總經理，現任 AdGeek 執行長陳建銘 Frank Chen 和學員熱情分享他二十多年的職涯歷練。", date: "2016/05/11 19:00-21:30", page: "https://blog.alphacamp.co/2016/05/13/bootcamp-8-demo-day/?_ga=1.66946862.1862057431.1463204158"),
        eventDetail(name: "Global Minds Series #2：Public Relationship", description: "GMS #2 由矽谷科技作家 Myriam Joire 分享「亞洲新創公司的國際公關策略」，協助新創公司在不同階段訂定 PR 策略，並解析亞洲新創團隊於建立國際媒體關係上的秘訣。", date: "2016/05/20 16:00-17:30", page: "https://www.alphacamp.co/global-minds-series/#GMS2"),
        eventDetail(name: "Global Minds Series #3：Sales Acceleration", description: "本次系列講座邀請到 Hubspot 首席營收長、同時為美國哈佛大學教授的 Mark Roberge ，以其協助 Hubspot 營收增加超過 6000% 的經驗，分享「加速營收成長的秘訣」。", date: "2016/07/07 9:00-10:30", page: "https://www.alphacamp.co/global-minds-series/#GMS3")
    ]
    
    let customCellIdentifier = "CustomEventTableViewCell"
    let logoPic = UIImage(named: "alpha-logo-titleview.png")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = 100
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.registerNib(UINib(nibName: "CustomEventTableViewCell", bundle: nil), forCellReuseIdentifier: customCellIdentifier)
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
        return eventCell.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomEventTableViewCell", forIndexPath: indexPath) as! CustomEventTableViewCell
        // Configure the cell...
        cell.eventTitle.text = eventCell[indexPath.row].name
        cell.eventDate.text = eventCell[indexPath.row].date
        cell.eventDescription.text = eventCell[indexPath.row].description

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
        if segue.identifier == "eventWebSegue"{
            
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationViewController = segue.destinationViewController as! EventWebViewController
                destinationViewController.eventWebPage = eventCell[indexPath.row]
            }
        }
        
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("eventWebSegue", sender: eventCell[indexPath.row])
    }
    


}
