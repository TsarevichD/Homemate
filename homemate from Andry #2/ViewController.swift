//
//  ViewController.swift
//  homemate from Andry #2
//
//  Created by macbook on 18.05.2023.
//

import SnapKit
import UIKit


class ViewController: UIViewController {
    
    let textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Изменение цвета вью и его имя
        view.backgroundColor = .blue
        self.title = "First VC"
        
        // Создание фрейма и настройка текстового поля
        textField.borderStyle = .line
        textField.placeholder = "Имя"
        textField.backgroundColor = .white
        view.addSubview(textField)
        textField.snp.makeConstraints { maker in
            maker.left.right.equalToSuperview().inset(16)
            maker.centerY.equalToSuperview()
            maker.height.equalTo(50)
        }
        
        // Создание кнопки
        let button = UIButton(type: .system)
        button.setTitle("Перейти", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.backgroundColor = .red
        view.addSubview(button)
        button.snp.makeConstraints { maker in
            maker.bottom.equalToSuperview().inset(150)
            maker.width.equalTo(100)
            maker.height.equalTo(50)
            maker.centerX.equalToSuperview()
            
        }
    }
    
    @objc func buttonTapped() {
        guard let text = textField.text, !text.isEmpty else {
            return
        }
        
        let secondViewController = SecondViewController()
        secondViewController.labelText = text
        present(secondViewController, animated: true, completion: nil)
    }
}


