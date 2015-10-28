//
//  TrendingViewController.swift
//  tumblr-w4
//
//  Created by cverdi on 10/28/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var trendingScrollView: UIScrollView!
    @IBOutlet weak var trendingImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trendingScrollView.delegate = self
        trendingScrollView.contentSize = trendingImageView.image!.size
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
