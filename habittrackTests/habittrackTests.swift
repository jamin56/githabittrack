//
//  habittrackTests.swift
//  habittrackTests
//
//  Created by Ben Gibson on 7/7/17.
//  Copyright © 2017 Wabi Sabi. All rights reserved.
//

import XCTest
@testable import habittrack

class habittrackTests: XCTestCase {
    
    
    // MARK: Habit Class Tests
    
    // If I update data model, I have to update these tests
    
    // Confirm the Habit initializer returns an object when passed valid parameters
    func testHabitInitializationSucceeds() {
        // Normal string name
        let goodName = Habit.init(name: "Meditation")
        XCTAssertNotNil(goodName)
        
        // A space for a name
        let spaceForName = Habit.init(name: " ")
        XCTAssertNotNil(spaceForName)
    }
    
    // Confirm Habit Initializer returns nill when passed invalid parameters
    func testHabitInitializationFails() {
        // Empty string for habit name
        let emptyName = Habit.init(name: "")
        XCTAssertNil(emptyName)
    }
    
}
