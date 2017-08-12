//
//  ViewController.swift
//  teste
//
//  Created by Andrei on 6/24/17.
//  Copyright © 2017 Andrei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var rangersTableView: UITableView!

    var rangers : [Ranger] = []
    var selectedRanger : Ranger?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rangersTableView.delegate = self
        rangersTableView.dataSource = self
        
        rangersTableView.allowsSelection = true
        
        rangers = createRangers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createRangers() -> [
        Ranger] {
        var rangers : [Ranger] = []
        
        let red = Ranger(name: "Jason", title: "Red Ranger", morphImg: "red", humanImg: "red_human")
        let green = Ranger(name: "Tommy", title: "Green Ranger", morphImg: "green", humanImg: "green_human")
        let pink = Ranger(name: "Kimberly", title: "Pink Ranger", morphImg: "pink", humanImg: "pink_human")
        
        rangers.append(red)
        rangers.append(green)
        rangers.append(pink)
        
        return rangers
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = rangers[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rangers.count;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if ( segue.identifier == "toDetailsViewController" ) {
          if let detailsViewController = segue.destination as? DetailsViewController {
            detailsViewController.selectedRanger = self.selectedRanger
          }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.selectedRanger = rangers[indexPath.row]
        performSegue(withIdentifier: "toDetailsViewController", sender: nil)
        
    }


}

