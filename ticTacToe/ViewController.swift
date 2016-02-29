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

    @IBOutlet weak var box8: UIButton!

    var isBox8AnX = true
    override func viewDidLoad()
    {
       
        super.viewDidLoad()
    }

    @IBAction func onBox8Tapped(sender: UIButton)
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
    
    @IBAction func onBox8Pan(sender: UIPanGestureRecognizer)
    {
        let point = sender.locationInView(view)
        box8.center = point

    }

}

