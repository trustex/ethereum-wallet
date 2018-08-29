// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov


import Foundation


class WelcomeInteractor {
  weak var output: WelcomeInteractorOutput!
  
  var walletManager: WalletManagerProtocol!
}


// MARK: - WelcomeInteractorInput

extension WelcomeInteractor: WelcomeInteractorInput {
  
  func createWallet(passcode: String, completion: PinResult?) {
    do {
      try walletManager.createWallet(passphrase: passcode)
      completion?(.success(true))
    } catch {
      completion?(.failure(error))
    }
  }
  
  func importPrivateKey(_ key: String, passcode: String, completion: PinResult?) {
    do {
      let data = try Data(hexString: key)
      try walletManager.importWallet(privateKey: data, passphrase: passcode)
      completion?(.success(true))
    } catch {
      completion?(.failure(error))
    }
  }
  
  func importMnemonic(_ mnemonic: String, passcode: String, completion: PinResult?) {
    do {
      let mnemoicWords = mnemonic.components(separatedBy: " ")
      try walletManager.importWallet(mnemonic: mnemoicWords, passphrase: passcode)
      completion?(.success(true))
    } catch {
      completion?(.failure(error))
    }
  }

}
