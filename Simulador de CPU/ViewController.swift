//
//  ViewController.swift
//  Simulador de CPU
//
//  Created by Ian Vitor da Silva on 9/23/16.
//  Copyright © 2016 Ian Vitor da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var memoria01Label: UILabel!
    @IBOutlet var memoria02Label: UILabel!
    @IBOutlet var memoria03Label: UILabel!
    @IBOutlet var memoria04Label: UILabel!
    
    @IBOutlet var buscaLabel: UILabel!
        
    @IBOutlet var decoOperandoLabel: UILabel!
    @IBOutlet var decoOperandoBinLabel: UILabel!
    @IBOutlet var operando01Label: UILabel!
    @IBOutlet var operando01BinLabel: UILabel!
    @IBOutlet var operando02Label: UILabel!
    @IBOutlet var operando02BinLabel: UILabel!
    
    @IBOutlet var ulaLabel: UILabel!
    @IBOutlet var ulaBinLabel: UILabel!
    @IBOutlet var outrasLabel: UILabel!
    
    @IBOutlet var contadorLabel: UILabel!
    
    
    
    @IBAction func programa01Button(sender: AnyObject) {
        
        var memoria01 = [0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
        let unirString = memoria01.flatMap { String($0) }
        let valorString = unirString.joinWithSeparator("")
        
        memoria01Label.text = String (valorString)
        buscaLabel.text = String (valorString)
        
        let vetorOp: ArraySlice<Int> = memoria01[0 ..< 4]
        let vetorOp1: ArraySlice<Int> = memoria01[4 ..< 18]
        let vetorOp2: ArraySlice<Int> = memoria01[18 ..< 32]
        
        let unirOperando = vetorOp.flatMap { String($0) }
        let operando = unirOperando.joinWithSeparator("")
        
        let unirOperando1 = vetorOp1.flatMap { String($0) }
        let operando1 = unirOperando1.joinWithSeparator("")
        let op1Int = (operando1 as NSString).integerValue
        
        let unirOperando2 = vetorOp2.flatMap { String($0) }
        let operando2 = unirOperando2.joinWithSeparator("")
        let op2Int = (operando2 as NSString).integerValue
        
        decoOperandoBinLabel.text = String(operando)
        operando01BinLabel.text = String(operando1)
        operando01Label.text = String(op1Int)
        operando02BinLabel.text = String(operando2)
        
        var operandoString = "NULL" // Defini a variavel do operando
        switch operando {
        case "0001":
            operandoString = "MOV"
        case "0000":
            operandoString = "AND"
        default:
            print("Some other character")
        }
        
        decoOperandoLabel.text = String(operandoString)
        
        
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

