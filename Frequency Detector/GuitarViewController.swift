//
//  GuitarViewController.swift
//  Frequency Detector
//
//  Created by Пупка on 19.12.2024.
//

import UIKit

class GuitarViewController: UIViewController {

    @IBOutlet weak var numberOfStringTextField: UITextField!
    @IBOutlet weak var numberOfFretTextField: UITextField!
    @IBOutlet weak var frequencyLabel: UILabel!
    

    
    var numberOfString = 1
    var numberOfFret = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func getNumberOfString() -> Int? {
        guard let numberOfStringText = numberOfStringTextField.text,
              let numberOfString = Int(numberOfStringText),
              numberOfString >= 1, numberOfString <= 6 else {
            return nil
        }
        return numberOfString
    }
    
    private func getNumberOfFret() -> Int? {
        guard let numberOfFretText = numberOfFretTextField.text,
              let numberOfFret = Int(numberOfFretText),
              numberOfFret >= 0, numberOfFret <= 24 else {
            return nil
        }
        return numberOfFret
    }
    
    private func updateFrequency() {
        guard let string = getNumberOfString(),
            let fret = getNumberOfFret() else {
                frequencyLabel.text = "Invalid input"
                return
            }
            
        if let frequency = GuitarNotes.calculateFrequency(forString: string, fret: fret) {
            frequencyLabel.text = String(format: "%.2f Hz", frequency)
        } else {
            frequencyLabel.text = "Frequency not found"
        }
    }
}

extension GuitarViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateFrequency()
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Разрешаем только числа
        let currentText = (textField.text ?? "") as NSString
        let updatedText = currentText.replacingCharacters(in: range, with: string)
            
        // Если текст пустой или содержит только числа, разрешаем изменение
        return updatedText.isEmpty || Int(updatedText) != nil
    }
}
