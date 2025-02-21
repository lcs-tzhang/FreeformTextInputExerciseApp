//
//  Division.swift
//  FreeformTextInputExerciseApp
//
//  Created by xinyu zhang on 2025-02-21.
//

import Foundation


struct Division{
    
    //MARK : Stored properties
    
    var dividend : Int
    var divisor : Int
    
    // MARK : Computed Properties
    var quotient : Int {
        return dividend / divisor
    }
    var remainder : Int {
        return dividend % divisor
    }
}
