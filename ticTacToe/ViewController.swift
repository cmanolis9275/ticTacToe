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


    var isBox1AnX = true
    var isBox2AnX = true
    var isBox3AnX = true
    var isBox4AnX = true
    var isBox5AnX = true
    var isBox6AnX = true
    var isBox7AnX = true
    var isBox8AnX = true
    var isBox9AnX = true

    override func viewDidLoad()
    {
       
        super.viewDidLoad()
        let defaultImage = UIImage(named: "Empty")
        box1.setImage(defaultImage, forState: <#T##UIControlState#>)
    }
    @IBAction func onBox1Tapped(sender: AnyObject)
    {
        if isBox1AnX == true
        {
            let image = UIImage(named: "Cyrillic-O")
            box1.setImage(image, forState: .Normal)
            isBox1AnX = false
        }
        else if isBox1AnX == false
        {
            let image = UIImage(named: "X")
            box1.setImage(image, forState: .Normal)
            isBox1AnX = true
        }
        print("Box 1 Tapped")
    }
    @IBAction func onBox2Tapped(sender: AnyObject)
    {
        
        if isBox2AnX == true
        {
            let image = UIImage(named: "Cyrillic-O")
            box2.setImage(image, forState: .Normal)
            isBox2AnX = false
        }
        else if isBox2AnX == false
        {
            let image = UIImage(named: "X")
            box2.setImage(image, forState: .Normal)
            isBox2AnX = true
        }
        print("Box 2 Tapped")
    }
    
    @IBAction func onBox3Tapped(sender: AnyObject)
    {
        if isBox3AnX == true
        {
            let image = UIImage(named: "Cyrillic-O")
            box3.setImage(image, forState: .Normal)
            isBox3AnX = false
        }
        else if isBox3AnX == false
        {
            let image = UIImage(named: "X")
            box3.setImage(image, forState: .Normal)
            isBox3AnX = true
        }
        print("Box 3 Tapped")
    }
    
    @IBAction func onBox4Tapped(sender: AnyObject)
    {
        if isBox4AnX == true
        {
            let image = UIImage(named: "Cyrillic-O")
            box4.setImage(image, forState: .Normal)
            isBox4AnX = false
        }
        else if isBox3AnX == false
        {
            let image = UIImage(named: "X")
            box4.setImage(image, forState: .Normal)
            isBox4AnX = true
        }
        print("Box 4 Tapped")

    }
   
    @IBAction func onBox5Tapped(sender: AnyObject)
    {
        if isBox5AnX == true
        {
            let image = UIImage(named: "Cyrillic-O")
            box5.setImage(image, forState: .Normal)
            isBox5AnX = false
        }
        else if isBox5AnX == false
        {
            let image = UIImage(named: "X")
            box5.setImage(image, forState: .Normal)
            isBox5AnX = true
        }
        print("Box 5 Tapped")

    }
    
    @IBAction func onBox6Tapped(sender: AnyObject)
    {
        if isBox6AnX == true
        {
            let image = UIImage(named: "Cyrillic-O")
            box6.setImage(image, forState: .Normal)
            isBox6AnX = false
        }
        else if isBox6AnX == false
        {
            let image = UIImage(named: "X")
            box6.setImage(image, forState: .Normal)
            isBox6AnX = true
        }
        print("Box 6 Tapped")

    }
   
    @IBAction func onBox7Tapped(sender: AnyObject)
    {
        if isBox7AnX == true
        {
            let image = UIImage(named: "Cyrillic-O")
            box7.setImage(image, forState: .Normal)
            isBox7AnX = false
        }
        else if isBox7AnX == false
        {
            let image = UIImage(named: "X")
            box7.setImage(image, forState: .Normal)
            isBox7AnX = true
        }
        print("Box 7 Tapped")

    }
    
    @IBAction func onBox8Tapped(sender: AnyObject)
    {
        if isBox8AnX == true
        {
            let image = UIImage(named: "Cyrillic-O")
            box8.setImage(image, forState: .Normal)
            isBox8AnX = false
        }
        else if isBox8AnX == false
        {
            let image = UIImage(named: "X")
            box8.setImage(image, forState: .Normal)
            isBox8AnX = true
        }
        print("Box 8 Tapped")
    }
    
    @IBAction func onBox9Tapped(sender: AnyObject)
    {
        if isBox9AnX == true
        {
            let image = UIImage(named: "Cyrillic-O")
            box9.setImage(image, forState: .Normal)
            isBox9AnX = false
        }
        else if isBox9AnX == false
        {
            let image = UIImage(named: "X")
            box9.setImage(image, forState: .Normal)
            isBox9AnX = true
        }
        print("Box 9 Tapped")

    }
    @IBAction func onBox8Pan(sender: UIPanGestureRecognizer)
    {
        let point = sender.locationInView(view)
        box8.center = point

    }

}

