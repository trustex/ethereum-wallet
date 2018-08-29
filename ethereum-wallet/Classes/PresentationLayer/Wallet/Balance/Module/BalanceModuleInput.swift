// Copyright © 2018 Conicoin LLC. All rights reserved.
// Created by Artur Guseinov


import UIKit


protocol BalanceModuleInput: class {
  var output: BalanceModuleOutput? { get set }
  var viewController: UIViewController { get }
  func syncDidChangeProgress(current: Int64, total: Int64)
  func syncDidFinished()
}
