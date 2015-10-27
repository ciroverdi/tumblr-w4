//
//  TabBarViewController.swift
//  tumblr-w4
//
//  Created by cverdi on 10/27/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var tabView: UIView!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabView.backgroundColor = UIColorFromRGB(0x33465D)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
