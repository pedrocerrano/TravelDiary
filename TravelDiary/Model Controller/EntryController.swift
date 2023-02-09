//
//  EntryController.swift
//  TravelDiary
//
//  Created by iMac Pro on 2/9/23.
//

import Foundation

class EntryController {
    
    //MARK: - SINGLETON
    static let sharedInstance = EntryController()
    
    //MARK: - SOURCE OF TRUTH
    var entries: [Entry] = []
    
    // CRUD FUNCTIONS
    //MARK: - CREATE
    func createEntry(title: String, address: String, body: String) {
        let newEntry = Entry(title: title, address: address, body: body)
        entries.append(newEntry)
        save()
    } //: CREATE
    
    
    //MARK: - UPDATE
    func update() {
        
        save()
    } //: UPDATE
    
    
    //MARK: - DELETE
    func delete() {
        
        save()
    } //: DELETE
    
    
    // PERSISTENCE
    //MARK: - SAVE
    func save() {
        
    } //: SAVE
    
    
    //MARK: - LOAD
    func load() {
        
    } //: LOAD
    
} //: CLASS
