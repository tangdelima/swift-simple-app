//
//  DetailsViewController.swift
//  teste
//
//  Created by Andrei on 6/25/17.
//  Copyright © 2017 Andrei. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var imgRanger: UIImageView!
    
    @IBOutlet weak var titleRanger: UILabel!
    
    @IBOutlet weak var rangerName: UILabel!
    
    var humanImg : UIImage?
    var rangerImg : UIImage?
    
    var selectedRanger : Ranger?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.rangerName.text = selectedRanger?.name
        self.titleRanger.text = selectedRanger?.title
        self.humanImg = selectedRanger?.humanImage
        self.rangerImg = selectedRanger?.morphImage
        self.imgRanger.image = self.humanImg

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func timeToMorph(_ sender: Any) {
        self.imgRanger.image = (self.imgRanger.image?.isEqual(self.rangerImg))! ? self.humanImg : self.rangerImg
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
