//
//  EntryTableViewCell.swift
//  TravelDiary
//
//  Created by iMac Pro on 2/9/23.
//

import UIKit

class EntryTableViewCell: UITableViewCell {
    
    //MARK: - OUTLETS
    @IBOutlet weak var entryTitleLabel: UILabel!
    @IBOutlet weak var entryAddressLabel: UILabel!
    @IBOutlet weak var entryDateLabel: UILabel!
    
    
    //MARK: - FUNCTIONS
    func updateView(with entryToDisplay: Entry) {
        entryTitleLabel.text    = entryToDisplay.title
        entryAddressLabel.text  = entryToDisplay.address
        entryDateLabel.text     = entryToDisplay.entryDate.stringValue()
    } //: func UPDATE    
    
} //: CLASS
