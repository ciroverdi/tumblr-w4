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
    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var buttons: [UIButton]!
    
    var viewControllers: [UIViewController]!
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var tabIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarView.backgroundColor = UIColorFromRGB(0x334256)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[tabIndex].selected = true
        didPressTab(buttons[tabIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = tabIndex
        
        tabIndex = sender.tag

        buttons[previousIndex].selected = false
        
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        
        let vc = viewControllers[tabIndex]
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        vc.didMoveToParentViewController(self)
    }
}
