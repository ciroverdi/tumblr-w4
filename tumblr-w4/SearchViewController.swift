//
//  SearchViewController.swift
//  tumblr-w4
//
//  Created by cverdi on 10/27/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchImageView: UIImageView!
    @IBOutlet weak var bgView: UIImageView!
    @IBOutlet weak var loading1: UIImageView!
    @IBOutlet weak var loading2: UIImageView!
    @IBOutlet weak var loading3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.backgroundColor = UIColorFromRGB(0x33465D)
        loading1.alpha = 0
        loading2.alpha = 0
        loading3.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        searchImageView.hidden = true
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        delay(0.5, closure: { () -> () in
            self.loading1.alpha = 1
            self.loading2.alpha = 0
            self.loading3.alpha = 0
        })

        delay(1.0, closure: { () -> () in
            self.loading1.alpha = 0
            self.loading2.alpha = 1
            self.loading3.alpha = 0
        })
        
        delay(1.5, closure: { () -> () in
            self.loading1.alpha = 0
            self.loading2.alpha = 0
            self.loading3.alpha = 1
        })

        delay(2.0, closure: { () -> () in
            self.loading1.alpha = 0
            self.loading2.alpha = 0
            self.loading3.alpha = 0
            self.searchImageView.hidden = false
        })
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
}
