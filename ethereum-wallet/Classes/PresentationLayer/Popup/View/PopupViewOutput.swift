//
//  PopupPopupViewOutput.swift
//  ethereum-wallet
//
//  Created by Artur Guseynov on 13/03/2018.
//  Copyright © 2018 Artur Guseinov. All rights reserved.
//

import UIKit


protocol PopupViewOutput: class {
  func viewIsReady()
  func didConfirmPressed()
  func didSkipPressed()
}
