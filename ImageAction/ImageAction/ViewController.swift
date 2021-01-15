//
//  ViewController.swift
//  ImageAction
//
//  Created by rodrigo.s.mulkey on 1/12/21.
//

import UIKit


extension Collection {
    func choose(_ n: Int) -> ArraySlice<Element> { shuffled().prefix(n) }
}


class ViewController: UIViewController {
    
    let words = ["palavra", "Indiana Jones", "lavar", "comer", "averiguar", "Kelvis Duran", "viola", "chupeta", "gato", "sitio", "manga fresca", "barbie", "churrasco", "queijo do reino", "cocada", "bicicleta", "carro", "sol", "chuva", "rua", "chinelo", "guarda-chuva", "guarda sol", "peixe", "carne", "garrafa", "calabresa", "pizza", "sapato", "pneu", "lixo", "amor", "mito", "tapete", "tapioca", "Nego do Borel", "Frozen", "alegria", "levantar", "suportar", "aborrecer", "plantar", "regar", "atualizar", "queimar", "vender", "guardar", "guarda municipal", "contadora", "programador", "pai", "tio", "urso"]
    
    @IBOutlet weak var descriptionTextView: UILabel!

    let button = UIButton(type: .system, primaryAction: UIAction(title: "Button Title", handler: { _ in
                print("Button tapped!")
            }))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
         print("Button tapped!")
        
        let word = words.randomElement()
        descriptionTextView.text = word

        
    }
    


}

