//
//  IntroViewController.swift
//  AlphaCampAppExercise
//
//  Created by 張智涵 on 2016/6/26.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    
    let logoPic = UIImage(named: "alpha-logo-titleview.png")

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.blackColor()
        self.navigationItem.titleView = UIImageView(image: logoPic)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
