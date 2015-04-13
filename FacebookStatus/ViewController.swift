//
//  ViewController.swift
//  FacebookStatus
//
//  Created by Gayan on 2015-04-03.
//  Copyright (c) 2015 Gayan. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StatusUpdate(sender: AnyObject) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
            var controller = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            controller.setInitialText("Swift Fb Post Test")
            controller.addImage(UIImage(named: "iphone.JPG"))
            self.presentViewController(controller, animated: true, completion: nil)
        } else{
            println("No Facebook account found on device")
        }
    }

}

