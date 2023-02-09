//
//  EntryDetailVC.swift
//  TravelDiary
//
//  Created by iMac Pro on 2/9/23.
//

import UIKit

class EntryDetailVC: UIViewController {

    //MARK: - OUTLETS
    @IBOutlet weak var entryTitleTextField: UITextField!
    @IBOutlet weak var entryAddressTextField: UITextField!
    @IBOutlet weak var entryDateLabel: UILabel!
    @IBOutlet weak var entryBodyTextView: UITextView!
    
    
    //MARK: - PROPERTIES
    var entryReceiver: Entry?

    
    //MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    } //: DidLOAD
    
    
    //MARK: - HELPER FUNCTIONS
    func updateView() {
        guard let entryReceiver = entryReceiver else { return }
        entryTitleTextField.text    = entryReceiver.title
        entryAddressTextField.text  = entryReceiver.address
        entryDateLabel.text         = entryReceiver.entryDate.stringValue()
        entryBodyTextView.text      = entryReceiver.body
    } //: UPDATE HELPER
    
    
    //MARK: - ACTIONS
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = entryTitleTextField.text,
              let address = entryAddressTextField.text,
              let body = entryBodyTextView.text else { return }
        
        if let entry = entryReceiver {
            EntryController.sharedInstance.update(entryToUpdate: entry, newTitle: title, newAddress: address, newBody: body)
        } else {
            EntryController.sharedInstance.createEntry(title: title, address: address, body: body)
        } //: OPTIONAL CONDITION
        
        navigationController?.popViewController(animated: true)
    } //: SAVE BUTTON

} //: CLASS
