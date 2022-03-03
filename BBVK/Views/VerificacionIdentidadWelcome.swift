//
//  VerificacionIdentidadWelcome.swift
//  BBVK
//
//  Created by Jonathan Avila on 26/02/22.
//

import Foundation
import UIKit

class verificacionIdentidadWelcome: UIViewController{
   let bbvkUtilities = initializerUI()
   
   override func  viewDidLoad() {
      super.viewDidLoad()
      bbvkUtilities.MainViewController(viewControllerParam: self.view)
      
   }
   
   
}
