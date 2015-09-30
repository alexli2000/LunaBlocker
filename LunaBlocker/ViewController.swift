//
//  ViewController.swift
//  LunaBlocker
//
//  Created by Alexander Li on 2015-09-19.
//  Copyright © 2015 Alexander Li. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        SFContentBlockerManager.reloadContentBlockerWithIdentifier("com.alexli.LunaBlocker.ContentBlocker") { (error) -> Void in
            if error == nil {
                
            }
        }
    }
    @IBAction func openSettingsApp(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: UIApplicationOpenSettingsURLString)!)
    }

    @IBAction func refreshButtonTapped(sender: AnyObject) {
        
        //TODO: - Allow for updated JSON blocker and refresh
        //TODO: - Allow user to input their own blockers and refresh with this
        
        SFContentBlockerManager.reloadContentBlockerWithIdentifier("com.alexli.LunaBlocker.ContentBlocker") { (error) -> Void in
            if error == nil {
                print("Content Blocker Updated")
            }
        }
    }
    
    @IBAction func testButtonTapped(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://engadget.com")!)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

