//
//  SecondViewController.swift
//  homemate from Andry #2
//
//  Created by macbook on 18.05.2023.
//
import SnapKit
import UIKit

class SecondViewController: UIViewController {

    var secondButton = UIButton()
    let label = UILabel()
    var labelText: String?

       override func viewDidLoad() {
           super.viewDidLoad()
           
           // Изменение цвета вью и его имя
           view.backgroundColor = .white
           self.title = "Second VC"
           //Создание Значка
           
           label.textColor = .black
           label.textAlignment = .center
           label.backgroundColor = UIColor.red
           view.addSubview(label)
           label.snp.makeConstraints { maker in
               maker.left.right.equalToSuperview().inset(16)
               maker.centerY.equalToSuperview()
               maker.height.equalTo(50)
               
           }
           
           // Создание кнопки с функцией закрытия
           secondButton = UIButton(type: .system)
           secondButton.setTitle("Закрыть", for: .normal)
           secondButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
           secondButton.backgroundColor = .black
           view.addSubview(secondButton)
           secondButton.snp.makeConstraints { maker in
               maker.bottom.equalToSuperview().inset(150)
               maker.centerX.equalToSuperview()
               maker.height.equalTo(50)
               maker.width.equalTo(100)
           }

           
           
          
           label.text = labelText
       }
    @objc func buttonTapped() {
        _ = SecondViewController()
            dismiss(animated: true)
        }
    }







