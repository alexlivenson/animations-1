//
//  KeyFrameAnimations.swift
//  Animations-1
//
//  Created by alex livenson on 10/31/14.
//  Copyright (c) 2014 alex.livenson. All rights reserved.
//

import UIKit

class KeyFrameAnimations: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        rotateFishInParts()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rotateFishWontWork() {
        let fish = UIImageView()
        fish.image = UIImage(named: "blue-fish.png")
        fish.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        self.view.addSubview(fish)
        
        let fullRotation = CGFloat(M_PI * 2)
        // this wont work because iOS cannot interpolate between the start and end values -> Define rotation in smaller parts
//        UIView.animateWithDuration(2.0, animations: {
//            fish.transform = CGAffineTransformMakeRotation(fullRotation)
//        })
        
    }
    
    func rotateFishInParts() {
        let fish = UIImageView()
        fish.image = UIImage(named: "blue-fish.png")
        fish.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        self.view.addSubview(fish)
        
        let fullRotation = CGFloat(M_PI * 2)
        let duration = 2.0
        let delay = 0.0
//        let options = UIViewKeyframeAnimationOptions.CalculationModeLinear (used in key frame animations)
        let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
        
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options,
            animations: {
                let durOne: Double = 1 / 3
                let durTwo: Double = 2 / 3
                let durThree: Double = 3 / 3
                UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: durOne , animations: {
                    fish.transform = CGAffineTransformMakeRotation(1/3 * fullRotation)
                })
                
                UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: durTwo , animations: {
                    fish.transform = CGAffineTransformMakeRotation(2/3 * fullRotation)
                })
                
                UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: durThree , animations: {
                    fish.transform = CGAffineTransformMakeRotation(3/3 * fullRotation)
                })
        }, completion: nil)
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
