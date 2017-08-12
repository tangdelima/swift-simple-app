//
//  Ranger.swift
//  teste
//
//  Created by Andrei on 6/25/17.
//  Copyright © 2017 Andrei. All rights reserved.
//

import Foundation
import UIKit

class Ranger {
    
    var name : String = ""
    var title : String = ""
    var morphImage : UIImage?
    var humanImage : UIImage?
    
    init(name : String, title : String, morphImg : String, humanImg : String) {
        self.name = name
        self.title = title
        self.morphImage = UIImage(named: morphImg)
        self.humanImage = UIImage(named: humanImg)
    }
    
}
