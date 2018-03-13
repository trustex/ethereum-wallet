//
//  PasscodeState.swift
//  ethereum-wallet
//
//  Created by Artur Guseinov on 12/03/2018.
//  Copyright © 2018 Artur Guseinov. All rights reserved.
//

import Foundation

enum PasscodeState {
  case enter(onSuccess: () -> Void)
  case set(onSuccess: () -> Void)
  case change(onSuccess: () -> Void)
  case restore(onSuccess: () -> Void)
  
  func getState() -> PasscodeStateProtocol {
    switch self {
    case .enter:
      return EnterPasscodeState(title: Localized.passcodeEnterTitle())
    case .set:
      return SetPasscodeState()
    case .change:
      return ChangePasscodeState()
    case .restore:
      return EnterPasscodeState(allowCancellation: true, title: Localized.welcomeRestoreTitle())
    }
  }
}
