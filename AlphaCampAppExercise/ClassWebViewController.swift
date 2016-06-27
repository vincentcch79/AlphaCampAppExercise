//
//  ClassWebViewController.swift
//  AlphaCampAppExercise
//
//  Created by 張智涵 on 2016/6/27.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit
import WebKit

class ClassWebViewController: UIViewController {

    var classWebPage: classCell!
    var webView: WKWebView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView(frame: UIScreen.mainScreen().bounds)
        
        self.view.addSubview(webView)
        let url = NSURL(string: classWebPage.page)
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
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
