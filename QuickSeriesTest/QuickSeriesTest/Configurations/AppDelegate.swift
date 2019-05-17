//
//  AppDelegate.swift
//  QuickSeriesTest
//
//  Created by Salar Soleimani on 2019-05-17.
//  Copyright © 2019 Salar Soleimani. All rights reserved.
//

import UIKit
import NetworkPlatform

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    setupNavigationUI()
    setupMainView()
    return true
  }
  
  /**
   Set the navigation bar UI
   
   * Set the navigation bar item to large title
   * Set the font of navigation title
   
   - Author: Salar Soleimani
   */
  private func setupNavigationUI() {
    let largTitleNavFont = Font(.installed(.MontserratBold), size: .standard(.h3)).instance
    let attributes = [
      NSAttributedString.Key.foregroundColor: NamedColor.darkText.value,
      NSAttributedString.Key.font: largTitleNavFont
    ]
    UINavigationBar.appearance().titleTextAttributes = attributes
  }
  /**
   Configuring the main view (resource categories)
   
   * Add navigation controller behind the main view
   * Set window
   
   - Author: Salar Soleimani
   */
  private func setupMainView() {
    let vc = CategoriesViewController()
    let categoriesNavVC = UINavigationController(rootViewController: vc)
    let networkUseCaseProvider = NetworkPlatform.UseCaseProvider()
    let categoriesNavigator = CategoriesNavigator(services: networkUseCaseProvider, navigationController: categoriesNavVC)
    categoriesNavigator.setup(vc)
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.backgroundColor = .white
    window.rootViewController = categoriesNavVC
    window.makeKeyAndVisible()
    self.window = window
  }
}

