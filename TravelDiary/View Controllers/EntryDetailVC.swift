//
//  EntryDetailVC.swift
//  TravelDiary
//
//  Created by iMac Pro on 2/9/23.
//

import UIKit

class EntryDetailVC: UIViewController {

    //MARK: - OUTLETS
    
    @IBOutlet weak var entryDateLabel: UILabel!
    @IBOutlet weak var entryTitleTextField: UITextField!
    @IBOutlet weak var entryAddressTextField: UITextField!
    @IBOutlet weak var entryBodyTextView: UITextView!
    
    //MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()

    } //: DidLOAD
    
    
    //MARK: - ACTIONS
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = entryTitleTextField.text,
              let address = entryAddressTextField.text,
              let body = entryBodyTextView.text else { return }
        
        EntryController.sharedInstance.createEntry(title: title, address: address, body: body)
        navigationController?.popViewController(animated: true)
    } //: SAVE BUTTON

} //: CLASS
