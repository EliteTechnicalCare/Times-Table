//
//  ViewController.swift
//  Times Table
//
//  Created by David-Daoud Hakki on 9/2/15.
//  Copyright © 2015 Elite Technical Care LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var table: UITableView!
    
    var count = 51 //number of items on the times table
    var currentPage = 1
    @IBOutlet weak var currentTableLabel: UILabel!
   
    @IBAction func changeTable(sender: UISlider) {
        currentPage = Int(sliderValue.value)
        currentTableLabel.text = "Current times table: \(currentPage)"
        table.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count;
    }
    
   func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = "\(currentPage) X \(indexPath.row) = \(currentPage * indexPath.row)"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

