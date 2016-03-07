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
    @IBOutlet weak var turnLabel: UILabel!

    //State 0 = Empty
    //State 1 = X
    //State 2 = O
    var box1State = 0
    var box2State = 0
    var box3State = 0
    var box4State = 0
    var box5State = 0
    var box6State = 0
    var box7State = 0
    var box8State = 0
    var box9State = 0
    


    //Turn = 1 ; Player 1 turn
    //Turn = 2 ; Player 2 turn
    var turn = 1
    override func viewDidLoad()
    {
       
        super.viewDidLoad()
        
        //Sets all the boxes to empty
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
   
    func SwitchTurnTo1()
    {
        turn = 1
    }
    func SwitchTurnTo2()
    {
        turn = 2
    }
    func SwitchTurn()
    {
    
    }
    
    
    //Box 1 Tapped
   @IBAction func onBox1Tapped(sender: AnyObject)
    {
        
        if turn == 1
        {
                let defaultImage = UIImage(named: "X")
                box1.setImage(defaultImage, forState: .Normal)
                box1State = 1
                victoryCheck()
                SwitchTurnTo2()
            
            
        }
        else if turn == 2
            {
                if box1State == 1
                {
                    let image = UIImage(named: "Cyrillic-O")
                    box1.setImage(image, forState: .Normal)     //O Image
                    box1State = 2
                    victoryCheck()
                    SwitchTurnTo1()
                }

            
        }
        print("Box 1 Tapped")
    }
    @IBAction func onBox2Tapped(sender: AnyObject)
    {
        
        if turn == 1
            {
                let defaultImage = UIImage(named: "X")
                box2.setImage(defaultImage, forState: .Normal)
                box2State = 1
                victoryCheck()
                SwitchTurnTo2()
                
                
        }
        else if turn == 2
        {
           
                let image = UIImage(named: "Cyrillic-O")
                box2.setImage(image, forState: .Normal)     //O Image
                box2State = 2
                victoryCheck()
               SwitchTurnTo1()
            
        }

                print("Box 2 Tapped")

    }
    
    @IBAction func onBox3Tapped(sender: AnyObject)
    {
        if turn == 1
        {
            let defaultImage = UIImage(named: "X")
            box3.setImage(defaultImage, forState: .Normal)
            box3State = 1
            victoryCheck()
            SwitchTurnTo2()
            
            
        }
        else if turn == 2
        {
           
                let image = UIImage(named: "Cyrillic-O")
                box3.setImage(image, forState: .Normal)     //O Image
                box3State = 2
                victoryCheck()
                SwitchTurnTo1()
            
           
        }
        print("Box 3 Tapped")
    }
    
    @IBAction func onBox4Tapped(sender: AnyObject)
    {

        if turn == 1
        {
            let defaultImage = UIImage(named: "X")
            box4.setImage(defaultImage, forState: .Normal)
            box4State = 1
            victoryCheck()
            SwitchTurnTo2()
            
            
        }
        else if turn == 2
        {
            if box1State == 1
            {
                let image = UIImage(named: "Cyrillic-O")
                box4.setImage(image, forState: .Normal)     //O Image
                box4State = 2
                victoryCheck()
                SwitchTurnTo1()
            }
            
        }
    
        print("Box 4 Tapped")
    }


    
   
    @IBAction func onBox5Tapped(sender: AnyObject)
    {
        if turn == 1
    {
        let defaultImage = UIImage(named: "X")
        box5.setImage(defaultImage, forState: .Normal)
        box5State = 1
        victoryCheck()
        SwitchTurnTo2()
        
        
    }
    else if turn == 2
    {
        if box5State == 1
        {
            let image = UIImage(named: "Cyrillic-O")
            box5.setImage(image, forState: .Normal)     //O Image
            box5State = 2
            victoryCheck()
            SwitchTurnTo1()
        }
        
        }
        print("Box 5 Tapped")

    }
    
    @IBAction func onBox6Tapped(sender: AnyObject)
    {
        
        if turn == 1
        {
            let defaultImage = UIImage(named: "X")
            box6.setImage(defaultImage, forState: .Normal)
            box6State = 1
            victoryCheck()
            SwitchTurnTo2()
            
            
        }
        else if turn == 2
        {
            if box6State == 1
            {
                let image = UIImage(named: "Cyrillic-O")
                box6.setImage(image, forState: .Normal)     //O Image
                box6State = 2
                victoryCheck()
                SwitchTurnTo1()
            }
            
        }
        print("Box 6 Tapped")

    }
   
    @IBAction func onBox7Tapped(sender: AnyObject)
    {
        if turn == 1
        {
            let defaultImage = UIImage(named: "X")
            box7.setImage(defaultImage, forState: .Normal)
            box7State = 1
            victoryCheck()
            SwitchTurnTo2()
            
            
        }
        else if turn == 2
        {
            if box7State == 1
            {
                let image = UIImage(named: "Cyrillic-O")
                box7.setImage(image, forState: .Normal)     //O Image
                box7State = 2
                victoryCheck()
                SwitchTurnTo1()
            }
            
        }
        print("Box 7 Tapped")


    }
    
    @IBAction func onBox8Tapped(sender: AnyObject)
    {
        if turn == 1
        {
            let defaultImage = UIImage(named: "X")
            box8.setImage(defaultImage, forState: .Normal)
            box8State = 1
            victoryCheck()
            SwitchTurnTo2()
            
            
        }
        else if turn == 2
        {
            if box8State == 1
            {
                let image = UIImage(named: "Cyrillic-O")
                box8.setImage(image, forState: .Normal)     //O Image
                box8State = 2
                victoryCheck()
                SwitchTurnTo1()
            }
            
        }
        print("Box 8 Tapped")

    }
    
    @IBAction func onBox9Tapped(sender: AnyObject)
    {
        if turn == 1
        {
            let defaultImage = UIImage(named: "X")
            box9.setImage(defaultImage, forState: .Normal)
            box4State = 1
            victoryCheck()
            SwitchTurnTo2()
            
            
        }
        else if turn == 2
        {
            if box9State == 1
            {
                let image = UIImage(named: "Cyrillic-O")
                box9.setImage(image, forState: .Normal)     //O Image
                box9State = 2
                victoryCheck()
                SwitchTurnTo1()
            }
            
        }
        print("Box 9 Tapped")

    }
    @IBAction func onBox8Pan(sender: UIPanGestureRecognizer)
    {
        let point = sender.locationInView(view)
        box8.center = point

    }
   
    func victoryCheck()
    {
        if turn == 1
        {
            if box1State == 1 && box2State == 1 && box3State == 1
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
                box1State = 0
                box2State = 0
                box3State = 0
                box4State = 0
                box5State = 0
                box6State = 0
                box7State = 0
                box8State = 0
                box9State = 0
                
            }
            else if box4State == 1 && box5State == 1 && box6State == 1
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
                box1State = 0
                box2State = 0
                box3State = 0
                box4State = 0
                box5State = 0
                box6State = 0
                box7State = 0
                box8State = 0
                box9State = 0
                
                
            }
            else if box7State == 1 && box8State == 1 && box9State == 1
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
                box1State = 0
                box2State = 0
                box3State = 0
                box4State = 0
                box5State = 0
                box6State = 0
                box7State = 0
                box8State = 0
                box9State = 0
                
                
            }
            else if box1State == 1 && box5State == 1 && box9State == 1
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
                box1State = 0
                box2State = 0
                box3State = 0
                box4State = 0
                box5State = 0
                box6State = 0
                box7State = 0
                box8State = 0
                box9State = 0
                
            }
            else if box3State == 1 && box5State == 1 && box7State == 1
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
                box1State = 0
                box2State = 0
                box3State = 0
                box4State = 0
                box5State = 0
                box6State = 0
                box7State = 0
                box8State = 0
                box9State = 0
                
            }
            else if box1State == 1 && box4State == 1 && box7State == 1
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
                box1State = 0
                box2State = 0
                box3State = 0
                box4State = 0
                box5State = 0
                box6State = 0
                box7State = 0
                box8State = 0
                box9State = 0
                
            }
            else if box2State == 1 && box5State == 1 && box8State == 1
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
                box1State = 0
                box2State = 0
                box3State = 0
                box4State = 0
                box5State = 0
                box6State = 0
                box7State = 0
                box8State = 0
                box9State = 0
                
            }
            else if box3State == 1 && box6State == 1 && box9State == 1
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
                box1State = 0
                box2State = 0
                box3State = 0
                box4State = 0
                box5State = 0
                box6State = 0
                box7State = 0
                box8State = 0
                box9State = 0
                
            }







        }
        else if turn == 2
        {
            
            if box1State == 2 && box2State == 2 && box3State == 2
            {
                let alertController1 = UIAlertController(title: "Player 2 Wins!", message: "", preferredStyle: .Alert)
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
                box1State = 0
                box2State = 0
                box3State = 0
                box4State = 0
                box5State = 0
                box6State = 0
                box7State = 0
                box8State = 0
                box9State = 0
                
            }
        else if box4State == 2 && box5State == 2 && box6State == 2
        {
            let alertController1 = UIAlertController(title: "Player 2 Wins!", message: "", preferredStyle: .Alert)
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
            box1State = 0
            box2State = 0
            box3State = 0
            box4State = 0
            box5State = 0
            box6State = 0
            box7State = 0
            box8State = 0
            box9State = 0
            
            
        }
                else if box7State == 2 && box8State == 2 && box9State == 2
        {
            let alertController1 = UIAlertController(title: "Player 2 Wins!", message: "", preferredStyle: .Alert)
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
            box1State = 0
            box2State = 0
            box3State = 0
            box4State = 0
            box5State = 0
            box6State = 0
            box7State = 0
            box8State = 0
            box9State = 0
            
            
        }
                else if box1State == 2 && box5State == 2 && box9State == 2
        {
            let alertController1 = UIAlertController(title: "Player 2 Wins!", message: "", preferredStyle: .Alert)
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
            box1State = 0
            box2State = 0
            box3State = 0
            box4State = 0
            box5State = 0
            box6State = 0
            box7State = 0
            box8State = 0
            box9State = 0
            
        }
               else if box3State == 2 && box5State == 2 && box7State == 2
        {
            let alertController1 = UIAlertController(title: "Player 2 Wins!", message: "", preferredStyle: .Alert)
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
            box1State = 0
            box2State = 0
            box3State = 0
            box4State = 0
            box5State = 0
            box6State = 0
            box7State = 0
            box8State = 0
            box9State = 0
            
        }
                else if box1State == 2 && box4State == 2 && box7State == 2
        {
            let alertController1 = UIAlertController(title: "Player 2 Wins!", message: "", preferredStyle: .Alert)
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
            box1State = 0
            box2State = 0
            box3State = 0
            box4State = 0
            box5State = 0
            box6State = 0
            box7State = 0
            box8State = 0
            box9State = 0
            
        }
               else if box2State == 2 && box5State == 2 && box8State == 2
        {
            let alertController1 = UIAlertController(title: "Player 2 Wins!", message: "", preferredStyle: .Alert)
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
            box1State = 0
            box2State = 0
            box3State = 0
            box4State = 0
            box5State = 0
            box6State = 0
            box7State = 0
            box8State = 0
            box9State = 0
            
        }
                else if box3State == 2 && box6State == 2 && box9State == 2
        {
            let alertController1 = UIAlertController(title: "Player 2 Wins!", message: "", preferredStyle: .Alert)
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
            box1State = 0
            box2State = 0
            box3State = 0
            box4State = 0
            box5State = 0
            box6State = 0
            box7State = 0
            box8State = 0
            box9State = 0
            
            }
        }
        








        





        
    
        

    }
}