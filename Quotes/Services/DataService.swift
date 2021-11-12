//
//  DataService.swift
//  Quotes
//
//  Created by Chris Lang on 11/10/21.
//

import Foundation
import SwiftUI

class DataService {
    
    static func parseJsonFiles() -> [Quotes] {
        
        // code for parsing the json files
        
        // Get the path to the local json file
        let pathString = Bundle.main.path(forResource: "QuotesData", ofType: "json")
        
        guard pathString != nil else {
            return [Quotes]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let decodedData = try decoder.decode([Quotes].self, from: data)
                for r in decodedData {
                    r.id = UUID()
                }
                return decodedData
            }
            catch{
                print(error)
            }
        }
        catch {
            print(error)
        }
        
        return [Quotes]()
    }
}
