//
//  QuoteDetailView.swift
//  Quotes
//
//  Created by Chris Lang on 11/10/21.
//

import SwiftUI

struct QuoteDetailView: View {
    
    var quotes:Quotes
    
    var body: some View {
        
        VStack{
            VStack(alignment:.leading){
                ForEach (quotes.quotes, id:\.self) { r in
                    Text("- " + r)
                        .padding(.top, 15)
                        .padding(.horizontal,15)
                }
            }
            Spacer()
        }.navigationTitle(quotes.author)

    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuotesModel()
        QuoteDetailView(quotes: model.quotesArray[0])
    }
}
