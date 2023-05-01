//
//  ViewController.swift
//  counter
//
//  Created by Миша Бастрыкин on 01.05.2023.
//

import UIKit

var counters: Int = 0
var textsLable: String = ""

class ViewController: UIViewController {

    @IBOutlet weak var TextLable: UITextView!//истоия изменений
    @IBOutlet weak var ButtonMinus: UIButton!//кнопка уменьшения
    @IBOutlet weak var ButtonPlus: UIButton!//кнопка увеличения
    @IBOutlet weak var counter: UILabel! // вывод счетчика
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter.text = String(counters)
        TextLable.text = "История изменений:"
    }
    @IBAction func ButtonMinusAction(_ sender: Any) {
        if counters == 0 {
            counter.text = String(counters)
            TextLable.text = ""
            textsLable.append("\n попытка уменьшить значение счётчика ниже 0")
            TextLable.text = textsLable
        } else {
            counter.text = String(counters - 1)
            counters = counters - 1
            TextLable.text = ""
            textsLable.append("\n -1")
            TextLable.text = textsLable
        }
        
        
    }
    
    @IBAction func ButtonPlus(_ sender: Any) {
        counter.text = String(counters + 1)
        counters = counters + 1
        TextLable.text = ""
        textsLable.append("\n +1")
        TextLable.text = textsLable
    }
    
    @IBAction func refreshButtom(_ sender: Any) {
        counter.text = String(0)
        counters = 0
        TextLable.text = ""
        textsLable.append("\n  значение сброшено")
        TextLable.text = textsLable
    }
    
}


