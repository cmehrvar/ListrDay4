//
//  ViewController.swift
//  ListrRetry
//
//  Created by Cina Mehrvar on 2015-10-26.
//  Copyright © 2015 DormRoom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bitmaker: UIImageView!
    
    
    @IBOutlet weak var myTitle: UILabel!

    @IBOutlet weak var myDescription: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "presentation"
        {
            if let destinationVC = segue.destinationViewController as? ViewController {
               
                // Do something cool. Like pass data from one view controller to another.
                
                print("Let's do something cool")
            }
        }
    }

*/

}

