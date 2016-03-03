//
//  ViewController.swift
//  ticTacToe
//
//  Created by Christos Manolis on 2/25/16.
//  Copyright © 2016 Christos Manolis. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var box1: UIButton!
    @IBOutlet weak var box2: UIButton!
    @IBOutlet weak var box3: UIButton!
    @IBOutlet weak var box4: UIButton!
    @IBOutlet weak var box5: UIButton!
    @IBOutlet weak var box6: UIButton!
    @IBOutlet weak var box7: UIButton!
    @IBOutlet weak var box8: UIButton!
    @IBOutlet weak var box9: UIButton!


    var box1State = 0
    var box2State = 0
    var box3State = 0
    var box4State = 0
    var box5State = 0
    var box6State = 0
    var box7State = 0
    var box8State = 0
    var box9State = 0

    override func viewDidLoad()
    {
       
        super.viewDidLoad()
        let defaultImage = UIImage(named: "Empty")
        box1.setImage(defaultImage, forState: .Normal)
        box2.setImage(defaultImage, forState: .Normal)
        box3.setImage(defaultImage, forState: .Normal)
        box4.setImage(defaultImage, forState: .Normal)
        box5.setImage(defaultImage, forState: .Normal)
        box6.setImage(defaultImage, forState: .Normal)
        box7.setImage(defaultImage, forState: .Normal)
        box8.setImage(defaultImage, forState: .Normal)
        box9.setImage(defaultImage, forState: .Normal)
        
      

    }
    @IBAction func onBox1Tapped(sender: AnyObject)
    {
        if box1State == 0
        {
            let defaultImage = UIImage(named: "Empty")
            box1.setImage(defaultImage, forState: .Normal)
        }
        else if box1State == 1
        {
            let image = UIImage(named: "Cyrillic-O")
            box1.setImage(image, forState: .Normal)
            box1State = 2
            victoryCheck()
        }
        else if box1State == 2
        {
            let image = UIImage(named: "X")
            box1.setImage(image, forState: .Normal)
            box1State = 1
            victoryCheck()
        }
        print("Box 1 Tapped")
    }
    @IBAction func onBox2Tapped(sender: AnyObject)
    {
        
        if box2State == 0
        {
            let defaultImage = UIImage(named: "Empty")
            box2.setImage(defaultImage, forState: .Normal)
        }
        else if box2State == 1
        {
            let image = UIImage(named: "Cyrillic-O")
            box2.setImage(image, forState: .Normal)
            box2State = 2
            victoryCheck()
        }
        else if box2State == 2
        {
            let image = UIImage(named: "X")
            box2.setImage(image, forState: .Normal)
            box2State = 1
            victoryCheck()
        }
        print("Box 2 Tapped")

    }
    
    @IBAction func onBox3Tapped(sender: AnyObject)
    {
        if box3State == 0
        {
            let defaultImage = UIImage(named: "Empty")
            box3.setImage(defaultImage, forState: .Normal)
        }
        else if box3State == 1
        {
            let image = UIImage(named: "Cyrillic-O")
            box3.setImage(image, forState: .Normal)
            box3State = 2
            victoryCheck()
        }
        else if box3State == 2
        {
            let image = UIImage(named: "X")
            box3.setImage(image, forState: .Normal)
            box3State = 1
            victoryCheck()
        }
        print("Box 3 Tapped")

    }
    
    @IBAction func onBox4Tapped(sender: AnyObject)
    {

        if box4State == 0
        {
            let defaultImage = UIImage(named: "Empty")
            box4.setImage(defaultImage, forState: .Normal)
        }
        else if box4State == 1
        {
            let image = UIImage(named: "Cyrillic-O")
            box4.setImage(image, forState: .Normal)
            box4State = 2
            victoryCheck()
        }
        else if box4State == 2
        {
            let image = UIImage(named: "X")
            box4.setImage(image, forState: .Normal)
            box4State = 1
            victoryCheck()
        }
        print("Box 4 Tapped")


    }
   
    @IBAction func onBox5Tapped(sender: AnyObject)
    {
        if box5State == 0
        {
            let defaultImage = UIImage(named: "Empty")
            box5.setImage(defaultImage, forState: .Normal)
        }
        else if box5State == 1
        {
            let image = UIImage(named: "Cyrillic-O")
            box5.setImage(image, forState: .Normal)
            box5State = 2
            victoryCheck()
        }
        else if box5State == 2
        {
            let image = UIImage(named: "X")
            box5.setImage(image, forState: .Normal)
            box5State = 1
            victoryCheck()
        }
        print("Box 5 Tapped")

    }
    
    @IBAction func onBox6Tapped(sender: AnyObject)
    {
        
        if box6State == 0
        {
            let defaultImage = UIImage(named: "Empty")
            box6.setImage(defaultImage, forState: .Normal)
        }
        else if box6State == 1
        {
            let image = UIImage(named: "Cyrillic-O")
            box6.setImage(image, forState: .Normal)
            box6State = 2
            victoryCheck()
        }
        else if box6State == 2
        {
            let image = UIImage(named: "X")
            box6.setImage(image, forState: .Normal)
            box6State = 1
            victoryCheck()
        }
        print("Box 6 Tapped")

    }
   
    @IBAction func onBox7Tapped(sender: AnyObject)
    {
        if box7State == 0
        {
            let defaultImage = UIImage(named: "Empty")
            box7.setImage(defaultImage, forState: .Normal)
        }
        else if box7State == 1
        {
            let image = UIImage(named: "Cyrillic-O")
            box7.setImage(image, forState: .Normal)
            box7State = 2
            victoryCheck()
        }
        else if box7State == 2
        {
            let image = UIImage(named: "X")
            box7.setImage(image, forState: .Normal)
            box7State = 1
            victoryCheck()
        }
        print("Box 7 Tapped")


    }
    
    @IBAction func onBox8Tapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func onBox9Tapped(sender: AnyObject)
    {
        if box9State == 0
        {
            let defaultImage = UIImage(named: "Empty")
            box7.setImage(defaultImage, forState: .Normal)
        }
        else if box7State == 1
        {
            let image = UIImage(named: "Cyrillic-O")
            box7.setImage(image, forState: .Normal)
            box7State = 2
            victoryCheck()
        }
        else if box7State == 2
        {
            let image = UIImage(named: "X")
            box7.setImage(image, forState: .Normal)
            box7State = 1
            victoryCheck()
        }
        print("Box 7 Tapped")

    }
    @IBAction func onBox8Pan(sender: UIPanGestureRecognizer)
    {
        let point = sender.locationInView(view)
        box8.center = point

    }
   
        func victoryCheck()
    {

        if isBox1AnX == true && isBox2AnX == true && isBox3AnX == true
        {
            let alertController1 = UIAlertController(title: "Player 1 Wins!", message: "", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler:
                {
                    (action) -> Void in
                    print("Cancel button pressed")
                    
            })
            let OKAction = UIAlertAction(title: "OK", style: .Default, handler:
                {
                    (action) -> Void in
                    print("OK Button Pressed")
                    
            })
            alertController1.addAction(cancelAction)
            alertController1.addAction(OKAction)
            self.presentViewController(alertController1, animated: true, completion: nil)
        }
    }
}

