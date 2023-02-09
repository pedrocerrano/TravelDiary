//
//  Entry.swift
//  TravelDiary
//
//  Created by iMac Pro on 2/9/23.
//

import Foundation

class Entry {
    var title: String
    var address: String
    let entryDate: Date
    var body: String
    
    init(title: String, address: String, entryDate: Date = Date(), body: String) {
        self.title = title
        self.address = address
        self.entryDate = entryDate
        self.body = body
    } //: MEMBER-WISE INITIALIZER
    
} //: CLASS


extension Entry: Equatable {
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        return lhs.entryDate == rhs.entryDate
    } //: EQUALtoSELF
    
} //: EXTENSION
