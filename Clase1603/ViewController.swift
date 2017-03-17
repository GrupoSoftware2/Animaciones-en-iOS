//
//  ViewController.swift
//  Clase1603
//
//  Created by alumno on 3/16/17.
//  Copyright © 2017 Jorge Limo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwVista: UIView!
    @IBOutlet weak var btnAnimar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vwVista.layer.cornerRadius = 30.0
        vwVista.layer.borderWidth = 2.0
        vwVista.layer.borderColor = UIColor.red.cgColor
        vwVista.layer.shadowColor = UIColor.black.cgColor
        //vwVista.layer.shadowOffset = CGSize(width: -10, c: -10)
        //vwVista.layer.shadowRadius = 5.0
        //vwVista.layer.shadowOpacity = 0.5
        
        //btnAnimar.layer.cornerRadius = 10.0
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animar(_ sender: UIButton) {
    
        //cornerRadius
        //CAAnimation
    
        let widthFinal = self.vwVista.frame.size.width / 2
        let heightFinal = self.vwVista.frame.size.height / 2
        
        let animacion = CABasicAnimation(keyPath: "cornerRadius")
        animacion.fromValue = 30
        animacion.toValue = widthFinal / 4
        animacion.duration = 2.0
        
        animacion.beginTime = CACurrentMediaTime() + 1.0
        animacion.fillMode = kCAFillModeBackwards
        //animacion.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        vwVista.layer.add(animacion, forKey: "cornerRadius")
        vwVista.layer.cornerRadius = widthFinal / 4
        
        
        let animacionBorde = CABasicAnimation(keyPath: "borderWidth")
        animacionBorde.fromValue = 2
        animacionBorde.toValue = 4
        animacionBorde.duration = 1.0
        
        vwVista.layer.add(animacionBorde, forKey: "borderWidth")
        vwVista.layer.borderWidth = 4
        
        
        let animacionColorBorde = CABasicAnimation(keyPath: "borderColor")
        animacionColorBorde.fromValue = vwVista.layer.borderColor
        animacionColorBorde.toValue = UIColor.blue.cgColor
        animacionColorBorde.duration = 5.0
        
        vwVista.layer.add(animacionColorBorde, forKey: "borderColor")
        vwVista.layer.borderColor = UIColor.blue.cgColor
        
        
       /* 
         UIView.animate(withDuration: 3.0) {
            self.vwVista.alpha = 0.0
            
        }
         
        }
        UIView.animate(withDuration: 3.0, animations: { 
            self.vwVista.alpha = 0.0
            }) { (completion) in
                print("Termino animacion")
        }

        UIView.animate(withDuration: 3.0, delay: 3.0, options: UIViewAnimationOptions.curveEaseOut, animations: { 
            self.vwVista.backgroundColor = UIColor.blue
        }) { (completion) in
                print("Termino animacion")
        }
         */

        let animacionColorFondo = CABasicAnimation(keyPath: "backgroundColor")
        
        animacionColorFondo.fromValue = vwVista.backgroundColor?.cgColor
        animacionColorFondo.toValue = UIColor.blue.cgColor
        animacionColorFondo.duration = 3.0
        animacionColorFondo.beginTime = CACurrentMediaTime() + 1.0
        animacionColorFondo.fillMode = kCAFillModeBackwards
        animacionColorBorde.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        vwVista.layer.add(animacionColorFondo, forKey: "backgroundColor")
        vwVista.layer.backgroundColor = UIColor.blue.cgColor
        
        UIView.animate(withDuration: 3.0) { 
            self.vwVista.frame = CGRect(x: self.vwVista.frame.origin.x, y: self.vwVista.frame.origin.y + 250, width: widthFinal, height: heightFinal)
        }
        
        UIView.animate(withDuration: 2.0) { 
            self.vwVista.alpha = 0.5
        }
        
        let animacionRotacion = CABasicAnimation(keyPath: "transform.rotation")
        animacionRotacion.fromValue = 0.0
        animacionRotacion.toValue = M_PI
        animacionRotacion.duration = 5.0
        
        vwVista.layer.add(animacionRotacion, forKey: "transform.rotation")
        
    
    }

}

