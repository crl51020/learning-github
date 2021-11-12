//
//  Quotes.swift
//  Quotes
//
//  Created by Chris Lang on 11/10/21.
//

import Foundation
import SwiftUI


class Quotes: Decodable, Identifiable {
    
    var id:UUID?
    var author:String
    var image:String
    var mainQuote:String
    var quotes:[String]
    
}
