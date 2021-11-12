//
//  MainQuoteView.swift
//  Quotes
//
//  Created by Chris Lang on 11/10/21.
//

import SwiftUI

struct MainQuoteView: View {
    
    @ObservedObject var quotesListArray = QuotesModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(quotesListArray.quotesArray) { r in
                        NavigationLink(destination: {
                            QuoteDetailView(quotes: r)
                        }, label: {
                            ZStack{
                                Image(r.image)
                                    .resizable()
                                    .frame(width: 350, height: 250)
                                    .scaledToFit()
                                    .cornerRadius(25)
                                    .opacity(0.75)
                                    .padding(.vertical, 10)
                                VStack{
                                    Text(r.author)
                                        .font(.title)
                                        .padding(.bottom, 5)
                                    Text(r.mainQuote)
                                        .font(.headline)
                                        .frame(width: 350)
                                }
                                .foregroundColor(.white)
                            }
                            
                        })
                        
                        
                    }
                }
                .navigationTitle("All Quotes")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainQuoteView()
    }
}
