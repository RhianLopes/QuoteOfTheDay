//
//  ViewController.swift
//  QuoteOfTheDay
//
//  Created by Rhian Lopes da Costa on 20/07/20.
//  Copyright © 2020 Rhian Lopes da Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quoteList = [
        "Os problemas são oportunidades para se mostrar o que sabe. (Duke Ellington)",
        "Nossos fracassos, às vezes, são mais frutíferos do que os êxitos. (Henry Ford)",
        "Tente de novo. Fracasse de novo. Mas fracasse melhor. (Samuel Beckett)",
        "É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo. (Sócrates)",
        "O verdadeiro heroísmo consiste em persistir por mais um momento, quando tudo parece perdido. (W. F. Grenfel)",
        "Cada cliente é como se fosse primeiro e único. (Norman Bawes)",
        "Mesmo que já tenhas feito uma longa caminhada, há sempre um novo caminho a fazer. (Santo Agostinho)",
        "Vender é construir uma ponte entre você e seu cliente e fazê-lo atravessar para o seu lado. (Ciclo dos Profissionais de Venda)",
        "Na prosperidade, nossos amigos nos conhecem; na adversidade, nós é que conhecemos nossos amigos. (Churton Collins)",
        "A felicidade não está em fazer o que a gente quer, e sim querer o que a gente faz. (Jean Paul Sartre)",
        "Nada acontece a menos que sonhemos antes”. (Carl Sandburg)",
        "É sempre divertido fazer o impossível. (Walt Disney)",
        "A coisa mais cara é transformar um cliente insatisfeito em satisfeito. (Jan Carlzon)",
        "Experiência é o nome que cada um dá a seus erros. (Oscar Wilde)",
        "Lembre sempre que a sua vontade de triunfar é mais importante do que qualquer outra coisa. (Abraham Lincoln)",
        "Prefiro os erros do entusiasmo à indiferença da sabedoria. (Anatole France)",
        "Na realidade, vendas e serviços são inseparáveis”. (Carter Brow)",
        "A arte de ser ora audacioso, ora prudente, é a arte de vencer. (Napoleão Bonaparte)",
        "Seja corajoso. Mesmo que você não seja, finja ser. Ninguém nota a diferença. (H. Jackson Brown Jr.)",
        "Não somos responsáveis apenas pelo que fazemos, mas também pelo que deixamos de fazer. (Moliere)"]

    @IBOutlet weak var nextQuoteButton: UIButton!
    
    @IBOutlet weak var quote: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackgroud()
        setButtonBorderRadius()
    }
    
    @IBAction func renderNextQuote(_ sender: Any) {
        quote.text = quoteList[ Int.random(in: 0..<quoteList.count) ]
    }

    func setGradientBackgroud() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.cyan.cgColor, UIColor.blue.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }

    func setButtonBorderRadius() {
        nextQuoteButton.layer.cornerRadius = 20
    }
}

