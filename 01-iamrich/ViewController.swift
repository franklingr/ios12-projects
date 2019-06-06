//
//  ViewController.swift
//  01-iamrich
//
//  Created by Franklin Grijalva Revelo on 20/05/2019.
//  Copyright © 2019 Franklin Grijalva Revelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //PROPERTIES
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageViewDiamond: UIImageView!
    @IBOutlet weak var buttonPush: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //METHODS
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let controller = UIAlertController(title: "I am Rich", message: """
                                                    I am rich,
                                                    I deserve it,
                                                    I am good,
                                                    healty and successfull
                                                    """, preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He pulsado el botón aceptar")
        }
        
        controller.addAction(action)
        
        let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: { (action) in
            print("He pulsado el botón Borrar")
        })
        
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            print("He pulsado el botón Cancelar")
        }
        
        controller.addAction(action3)
        
        
        
        self.show(controller, sender: nil)
        
        
    }
    
}

