//
//  ViewController.swift
//  01-iamrich
//
//  Created by Felipe Neri Bautista Bautista on 02/12/19.
//  Copyright © 2019 Bautista Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageViewDiamond: UIImageView!
    @IBOutlet weak var buttonPush: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ya cargo")
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        print("He pulsado el boton")
        // self.labelTitle.text = "He pulsado el boton"
        //self.labelTitle.textColor = UIColor.green
        //self.labelTitle.font=UIFont.systemFont(ofSize: 24.0)
        
        let controller = UIAlertController(title: "I am Richt", message: """
                                                    I am Richt,
                                                    I am deserve it,
                                                    I am good.
                                                    """, preferredStyle:.alert)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He pulsado el boton acptar")
        }
            controller.addAction(action)
        
        let action2=UIAlertAction(title: "Borrar", style: .destructive, handler: {(action2) in
            print("He pulado boton borrar")
        })
            controller.addAction(action2)
        
        // XCODE pide afuerxa¡za el tercer argumewnto HANDLER, se pude poner un guien
        let action3=UIAlertAction(title: "Cancelar", style: .cancel){ _ in
            print("He presionado cancelar")
        }
            controller.addAction(action3)
        
        // sender es quien invoca el metodo, YO ( el viewcontroller)  o Nil
        self.show(controller,sender: nil)
        
    }
}

