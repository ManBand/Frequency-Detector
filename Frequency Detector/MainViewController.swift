//
//  ViewController.swift
//  Frequency Detector
//
//  Created by Пупка on 19.12.2024.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var listOfInstruments: UITableView!
    
    @IBOutlet weak var tableViewHeightConstraint: NSLayoutConstraint!
    
    var instruments: [Instruments.TypeOfInstrument] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        instruments = Instruments.listOfInstruments
        updateTableViewHeight()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateTableViewHeight()
    }

    func updateTableViewHeight() {
        tableViewHeightConstraint.constant = listOfInstruments.contentSize.height
        view.layoutIfNeeded()
    }
    func navigateToInstrumentVC(for instrument: Instruments.TypeOfInstrument) {
        switch instrument {
        case .guitar: performSegue(withIdentifier: "showGuitarVC", sender: self)
        default: break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showGuitarVC",
            let destinationVC = segue.destination as? GuitarViewController,
            let selectedRow = listOfInstruments.indexPathForSelectedRow?.row {
            destinationVC.title = instruments[selectedRow].rawValue
        }
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        instruments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = instruments[indexPath.row].rawValue
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedInstrument = instruments[indexPath.row]
        navigateToInstrumentVC(for: selectedInstrument)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
