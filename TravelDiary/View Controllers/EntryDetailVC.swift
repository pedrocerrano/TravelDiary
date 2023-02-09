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
        
    } //: SAVE BUTTON
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

} //: CLASS
