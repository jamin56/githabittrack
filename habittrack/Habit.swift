//
//  Habit.swift
//  habittrack
//
//  Created by Ben Gibson on 7/7/17.
//  Copyright © 2017 Wabi Sabi. All rights reserved.
//

import UIKit

class Habit {
    
    // MARK: Properties
    var name: String
    
    // MARK: Initialization
    
    // Prepares an instance of a class for use, sets an initial value and any other required setup
    init?(name: String) {
        
        // Initialization should fail if there is no name
        guard !name.isEmpty else {
            return nil
        }
        
        // Initialize stored properties
        self.name = name
    }
}
