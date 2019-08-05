//
//  ViewController.swift
//  WeekdayFinder
//
//  Created by Ника Перепелкина on 30/07/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findWeekDay(_ sender: UIButton) {
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else {return }
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else {return }
        
        let dateFormatter = DateFormatter()
        // вывод на русском языке
        //dateFormatter.locale = Locale(identifier: "ru_RU")
        dateFormatter.dateFormat = "EEEE"
        
        let weekday = dateFormatter.string(from: date)
        //let capitalizedWeekday = weekday.capitalized
        
        resultLabel.text = weekday
        //resultLabel.text = capitalizedWeekday
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // проверка
}

