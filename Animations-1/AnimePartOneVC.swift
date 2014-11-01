//
//  AnimePartOneVC.swift
//  Animations-1
//
//  Created by alex livenson on 10/30/14.
//  Copyright (c) 2014 alex.livenson. All rights reserved.
//

import UIKit

class AnimePartOneVC: UIViewController {

    @IBOutlet weak var numberOfFishSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func animateBttn(sender: UIButton) {
        //        setupMovingSquare()
        setupSwimmingFish()
    }
    
    func setupSwimmingFish() {
        let numOfFish = Int(self.numberOfFishSlider.value)
        for loopNumber in 1...numOfFish {
            let duration: NSTimeInterval = 1.0
            let delay: NSTimeInterval = NSTimeInterval((Int(arc4random()) % 900) + 100) / 1000.0
            let options = UIViewAnimationOptions.CurveLinear
            
            let size: CGFloat = CGFloat( Int(rand()) % 40 + 20)
            let yPos: CGFloat = CGFloat( Int(rand()) % 200 + 20)
            
            // create fish image
            let fish = UIImageView()
            fish.image = UIImage(named: "blue-fish.png")
            fish.frame = CGRectMake(0 - size, yPos, size, size)
            self.view.addSubview(fish)
            
            // define animation
            UIView.animateWithDuration(duration, delay: delay, options: options,
                animations: {
                    fish.frame = CGRectMake(320, yPos, size, size)
                }, completion: { finished in
                    fish.removeFromSuperview()
                    
            })
        }
    }
    
    func setupMovingSquare() {
        let coloredSquare = UIView()
        let size : CGFloat = CGFloat(Int(rand()) % 40 + 20)
        let yPos : CGFloat = CGFloat(Int(rand()) % 200 + 20)
        coloredSquare.backgroundColor = UIColor.blueColor()
        coloredSquare.frame = CGRect(x: 0, y: yPos, width: size, height: size)
        self.view.addSubview(coloredSquare)
        
        // add animation
        let duration = 1.0
        let delay = 0.0
        //        let options = UIViewAnimationOptions.Autoreverse |
        //            UIViewAnimationOptions.Repeat |
        //            UIViewAnimationOptions.CurveEaseInOut
        let options = UIViewAnimationOptions.CurveLinear
        
        UIView.animateWithDuration(duration, delay:delay, options: options,
            animations: {
                coloredSquare.backgroundColor = UIColor.redColor()
                coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
            }, completion: { finished in
                coloredSquare.removeFromSuperview()
        });
        
    }

}
