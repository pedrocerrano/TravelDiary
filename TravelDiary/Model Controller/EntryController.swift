//
//  EntryController.swift
//  TravelDiary
//
//  Created by iMac Pro on 2/9/23.
//

import Foundation

class EntryController {
    
    //MARK: - SINGLETON
    /// Singleton: To ensure that the project interacts with the *SAME* instance of the *entries* array, the specific instance of the **EntryController** is passed around from here
    static let sharedInstance = EntryController()
    
    //MARK: - SOURCE OF TRUTH
    /// Source of Truth: The single location where the **Entry** data will be stored.
    var entries: [Entry] = []
    
    // CRUD FUNCTIONS
    //MARK: - CREATE
    func createEntry(title: String, address: String, body: String) {
        let newEntry = Entry(title: title, address: address, body: body)
        entries.append(newEntry)
        
        save()
    } //: CREATE
    
    
    //MARK: - UPDATE
    func update(entryToUpdate: Entry, newTitle: String, newAddress: String, newBody: String) {
        entryToUpdate.title     = newTitle
        entryToUpdate.address   = newAddress
        entryToUpdate.body      = newBody
        
        save()
    } //: UPDATE
    
    
    //MARK: - DELETE
    func delete(entryToDelete: Entry) {
        guard let index = entries.firstIndex(of: entryToDelete) else { return }
        entries.remove(at: index)
        
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
