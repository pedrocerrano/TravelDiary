//
//  EntryTableViewController.swift
//  TravelDiary
//
//  Created by iMac Pro on 2/9/23.
//

import UIKit

class EntryListTableViewController: UITableViewController {

    //MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    } //: DidLOAD
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    } //: WillAPPEAR

    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return EntryController.sharedInstance.entries.count
    } //: #ROWS

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath) as? EntryTableViewCell else { return UITableViewCell() }
        cell.selectionStyle         = .none

        let entryIndex = EntryController.sharedInstance.entries[indexPath.row]
        cell.updateView(with: entryIndex)

        return cell
    } //: CELL CONFIG


    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let deleteThisEntry = EntryController.sharedInstance.entries[indexPath.row]
            EntryController.sharedInstance.delete(entryToDelete: deleteThisEntry)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } //: DELETE
    } //: CELL EDITS


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            if let index = tableView.indexPathForSelectedRow {
                if let destVC = segue.destination as? EntryDetailVC {
                    let entrySender = EntryController.sharedInstance.entries[index.row]
                    destVC.entryReceiver = entrySender
                } //: DESTINATION
            } //: INDEX
        } //: IDENTIFIER
    } //: SEGUE

} //: CLASS
