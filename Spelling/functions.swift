//
//  Functions.swift
//  Spelling
//
//  Created by Justin Hui on 30/10/2023.
//

import Foundation

//Inputs:
//      - the orginal list
//      - what outcome does the user want included (undetermined, incorrect or correct)
//Outputs:
//      - the filtered list

func filtering(originalList: [Result], on desiredOutcome: Outcome) -> [Result] {
    
    //When the desired outcome is undetermined, just stop and return the original list
    if desiredOutcome == .undetermined{
        return originalList
    }
    
    //Create an empty list to opoulate before returning
    var filteredResults: [Result] = []
    
    //Iterate over the entire original list
    for result in originalList {
        
        
        //Copy any results that match the desired outcome to the new list
        if result.outcome == desiredOutcome {
            filteredResults.append(result)
        }
    }
    
    //Return only the filtered list
    return filteredResults
    
}
