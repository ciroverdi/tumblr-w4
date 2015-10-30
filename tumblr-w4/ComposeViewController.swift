//
//  ComposeViewController.swift
//  tumblr-w4
//
//  Created by cverdi on 10/27/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var textImageView: UIImageView!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var quoteImageView: UIImageView!
    @IBOutlet weak var linkImageView: UIImageView!
    @IBOutlet weak var chatImageView: UIImageView!
    @IBOutlet weak var videoImageView: UIImageView!
    
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = UIColorFromRGB(0x33465D)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        textImageView.frame = CGRect(x: 20, y: 174, width: 80, height: 90)
        photoImageView.frame = CGRect(x: 120, y: 174, width: 80, height: 90)
        quoteImageView.frame = CGRect(x: 220, y: 174, width: 80, height: 90)
        linkImageView.frame = CGRect(x: 20, y: 294, width: 80, height: 90)
        chatImageView.frame = CGRect(x: 120, y: 294, width: 80, height: 90)
        videoImageView.frame = CGRect(x: 220, y: 294, width: 80, height: 90)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        textImageView.frame = CGRect(x: 20, y: 174, width: 80, height: 90)
        photoImageView.frame = CGRect(x: 120, y: 174, width: 80, height: 90)
        quoteImageView.frame = CGRect(x: 220, y: 174, width: 80, height: 90)
        linkImageView.frame = CGRect(x: 20, y: 294, width: 80, height: 90)
        chatImageView.frame = CGRect(x: 120, y: 294, width: 80, height: 90)
        videoImageView.frame = CGRect(x: 220, y: 294, width: 80, height: 90)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func goBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        var destinationViewController = segue.destinationViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.0
    }
}
