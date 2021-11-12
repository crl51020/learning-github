//
//  QuotesModel.swift
//  Quotes
//
//  Created by Chris Lang on 11/10/21.
//

import Foundation
import SwiftUI


class QuotesModel: ObservableObject {
    
    @Published var quotesArray = [Quotes]()
    
    init() {
        self.quotesArray = DataService.parseJsonFiles()
    }
}
