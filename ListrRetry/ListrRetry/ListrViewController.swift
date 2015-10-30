//
//  ListrViewController.swift
//  ListrRetry
//
//  Created by Cina Mehrvar on 2015-10-28.
//  Copyright © 2015 DormRoom. All rights reserved.
//

import UIKit

class ListrViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
   
    @IBOutlet weak var myTableView: UITableView!
    
    var countries = ["USA", "Russia", "China", "France", "England"]
   
    
   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath)
        cell.textLabel?.text = countries[indexPath.row]
        return cell
    }
    
    // ASK KWAME or JAMES TOMORROW!!!!!!!
/*
        // added delegate method for didSelectRowAtIndexPath
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Row Selected", message: "You've selected a row", preferredStyle: .Alert)
        
        alertController.addAction(UIAlertAction(title: "Okay", style: .Cancel, handler: { (alert: UIAlertAction) in alertController
            print("Cancel Was selected")
        }))
        
        presentViewController(alertController, animated: true) { () -> Void in
            alertController
            print("was presented")
        }
    }
*/
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTableView.reloadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "listrSegue"
        {
            if let bitmakerLogo = segue.destinationViewController as? ViewController {
                print(bitmakerLogo.view)
                //bitmakerLogo.bitmaker.image = UIImage(named: "dope")
                bitmakerLogo.myTitle.text = "succesfull segue"
                bitmakerLogo.myDescription.text = "this text has been updated from code"
                bitmakerLogo.bitmaker.image = UIImage(named: "toronto")
                
            }
                // Do something cool. Like pass data from one view controller to another.
                print("Let's do something cool")
            }
        }

    }
