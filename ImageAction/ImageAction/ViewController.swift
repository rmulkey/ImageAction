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
    
    //List of Words Output
    
    let words = ["palavra", "Indiana Jones", "lavar", "comer", "averiguar", "Kelvis Duran", "viola", "chupeta", "gato", "sitio", "manga fresca", "barbie", "churrasco", "queijo do reino", "cocada", "bicicleta", "carro", "sol", "chuva", "rua", "chinelo", "guarda-chuva", "guarda sol", "peixe", "carne", "garrafa", "calabresa", "pizza", "sapato", "pneu", "lixo", "amor", "mito", "tapete", "tapioca", "Nego do Borel", "Frozen", "alegria", "levantar", "suportar", "aborrecer", "plantar", "regar", "atualizar", "queimar", "vender", "guardar", "guarda municipal", "contadora", "programador", "pai", "tio", "urso", "jurubeba", "beringela", "cano", "sofa", "carrasco", "sexta-feira", "piscina", "peroba", "jambo", "chocolate", "pipoca", "pipoca amanteigada", "trash truck", "netflix", "Dua Lipa", "Lady Gaga", "coxinha", "Jujuba", "Duda Reis", "Nego do Borel e Duda Reis", "Pagode", "Brega", "cochicar", "sambar", "Frevo", "brinquedo", "Robson", "Veruska", "Rodrigo", "Vanesa", "Seu Joao", "Lusinete", "Vivi", "endoidar", "entardecer", "pisotear", "abalar", "Estados Unidos", "Brasil", "Anitta", "sabonete", "toalha", "piaba", "fralda", "bomba", "Pumba", "Pablo Vittar", "Gessica Kayane", "K-Pop", "BTS", "cabelo do suvaco", "pitomba", "cebola", "tareco", "farinha", "Alcool em Gel", "Piscineiro", "Elevador", "Carrinho de Compras", "Domino's", "Ecletica", "Lego", "Predio em Chamas", "Quadro Feio", "Lenco Umidecido", "Moto", "Capacete", "Carro", "Tirulipa", "Serginho Malandro", "Vald Mort", "Harry Potter", "Accenture", "Ingles Indiano", "Enem", "Pacoca", "Fofoca", "Liam","Apito", "Lampada", "Coco Seco", "Gas Encanado", "Passagem Secreta", "Martelo", "Bolo", "Dente", "Cocegas", "Tunel", "Pista de Obstaculos", "Instagran", "Iphone", "Ipad", "Bide", "Bode", "Neguinha", "Uno", "Rede", "Janela", "Fechadura", "Porteira do Sitio", "Abajur", "Bar", "Seu Tito", "Covid 19", "Sticker", "Ifood", "Super Bompreco", "Extra", "Buraco na Sandalia", "Sandalia Nova", "Boliche", "Barco", "Boia", "Boi", "Porco", "Carvao", "Agua cara da mulestia", "Calor", "Suor", "Vinagre", "Chuveirao", "Banheira", "Churrasqueira", "Closet", "Escrivaninha", "Dona Lindu", "Wi-fi", "Mochila", "Maca", "Cafe", "Vacina", "Carrinho de Bebe", "Rally", "Boia", "Colchao Inflavel", "Gelagua Quebrado", "Geladeira", "Fogao", "Espelho", "Fantasma", "Coxinha do Aeroporto", "TV", "Peperone", "Despertador", "Borracha", "Reginaldo Rossi", "Michel Jackson", "Escada", "Luciano Hulk", "Hugo Gloss", "Cadeira", "Ronaldinho Gaucho", "Xuxa", "Faustao", "Nelson Rubens", "Pedi Potato e veio Cafe", "Titi", "Tio", "Dada", "Limbo", "Porteira que nao Gosta de Vinicius", "Sr Joao do Brega", "goma", "Vivi no Enem", "Pizza de Pepperock", "sapo cururu", "bolo de bolo de rolo", "bolo de rolo", "biscoito de bolo de rolo", "cheese", "tigre", "elefante", "tromba", "queijo de coalho", "ligar no grupo", "Whatsapp", "sapato alto", "banda da familia", "Maracuja", "Praia de Boa Viagem", "QAP Robson", "cobra", "banana murcha", "book", "casca", "casca da manga do sitio", "jambo fresco", "vento", "varanda", "sala gigante", "pessima pintora", "piscina suja", "frescoball", "Cade Liam?", "Cafeteira", "queijo com goiabada", "qual eh a senha do wifi?", "Tubarao", "So tem um ar condicionado funcionando", "mama", "tomar leite", "queijo de coalho", "queijo do reino", "queijo prato", "carne de sol", "no sitio tem wi-fi", "Liam dancando", "doce de leite", "amendoim", "planta", "garir", "varredor", "aspirador de po", "cama", "praia", "vaso", "lustre", "piscina", "navegador", "potes",]
    
    //List of Background Images
     
    var backgroundImages: [UIImage?] = [
       UIImage(named: "ThanksgivingGratitudePictionary"),
       UIImage(named: "bfcec6fac408715fa9ae52bdf5ae83b8"),
       UIImage(named: "mimica3.jpg"),
        UIImage(named: "2play1game-Pictionary"),
       UIImage(named: "unnamed")
     ]
    
    @IBOutlet weak var descriptionTextView: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!

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
            
        let background = backgroundImages.randomElement()
        backgroundImage.image? = background! ?? UIImage(named: "2play1game-Pictionary.png")!
        
        let timer = Timer.scheduledTimer(timeInterval: 60.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        
        if timer.timeInterval = 60.0
    }
    
    @objc func fireTimer() {
        print("Acabou o tempo!")
    }

    


}

