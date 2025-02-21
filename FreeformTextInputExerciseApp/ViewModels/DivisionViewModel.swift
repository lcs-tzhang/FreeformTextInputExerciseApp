//
//  DivisionViewModel.swift
//  FreeformTextInputExerciseApp
//
//  Created by xinyu zhang on 2025-02-21.
//

import Foundation
@Observable

class DivisionViewModel{
    
    //MARK: Stored Properties
    var providedDividend: String
    var providedDivisor: String
    var recoverySuggestion : String
    
    //MARK: Computed Properties
    var division: Division? {
        //Check that the string in providedDividend can be converted into Int
        guard let dividend = Int(providedDividend) else{
            recoverySuggestion = "Please enter an integer for the dividend"
            return nil
        }
        guard let divisor = Int(providedDivisor) else {
            recoverySuggestion = "Please enter an integer for the divisor"
            return nil
        }
        
        
    //Return an instance of the model
        recoverySuggestion = ""
        return Division(dividend: dividend, divisor: divisor)
        
    }
    
    
    //MARK: Initializer
    init(
        dividend: String = "",
        divisor: String = "",
        recoverySuggestion: String = ""
    )
    {
        self.providedDivisor = dividend
        self.providedDividend = divisor
        self.recoverySuggestion = recoverySuggestion
    
    }
}
