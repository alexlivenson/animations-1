//
//  AnimatePartTwoVC.swift
//  Animations-1
//
//  Created by alex livenson on 10/31/14.
//  Copyright (c) 2014 alex.livenson. All rights reserved.
//

import UIKit

class AnimatePartTwoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupContainerTransitions()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupContainerTransitions() {
        let container = UIView()
        let redSquare = UIView()
        let blueSquare = UIView()
        
        container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
        redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        blueSquare.frame = redSquare.frame
        
        redSquare.backgroundColor = UIColor.redColor()
        blueSquare.backgroundColor = UIColor.blackColor()
        
        container.addSubview(redSquare)
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
