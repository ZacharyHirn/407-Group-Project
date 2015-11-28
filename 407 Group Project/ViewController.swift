//
//  ViewController.swift
//  407 Group Project
//
//  Created by Zachary Hirn on 11/27/15.
//  Copyright © 2015 Zachary Hirn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var location = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var Person: UIImageView!

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //var touch : UITouch! = touches.anyObject() as UITouch
        
        let touch = touches.first! as UITouch
        
        location = touch.locationInView(self.view)
        
        Person.center = location
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //var touch : UITouch! = touches.anyObject() as UITouch
        
        let touch = touches.first! as UITouch
        
        location = touch.locationInView(self.view)
        
        Person.center = location
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Person.center = CGPointMake(160, 330)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

