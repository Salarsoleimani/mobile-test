//
//  VacationSpotsNavigator.swift
//  QuickSeriesTest
//
//  Created by Salar Soleimani on 2019-05-17.
//  Copyright © 2019 Salar Soleimani. All rights reserved.
//

import UIKit
import Domain

protocol VacationSpotsNavigatorProtocol {
  func toVacationSpot(_ vacationSpot: VacationSpotItemViewModel)
  func setup()
}

class VacationSpotsNavigator: VacationSpotsNavigatorProtocol {
  private let navigationController: UINavigationController
  private let services: UseCaseProvider
  
  init(services: UseCaseProvider, navigationController: UINavigationController) {
    self.services = services
    self.navigationController = navigationController
  }
  
  func toVacationSpot(_ vacationSpot: VacationSpotItemViewModel) {
    
  }
  func setup() {
    
  }
}
