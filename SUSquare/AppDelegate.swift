//
//  AppDelegate.swift
//  SUSquare
//
//  Created by Luis Filipe Campani on 01/10/16.
//  Copyright © 2016 AGES. All rights reserved.
//
/*
 - Arrumar celula inicial
 - Arrumar autolayout para colapsar mapa no scroll da view
 - Setar placeholder image na tela de HealthUnitDetail
 - Trocar o pin do mapa
 - Salvar no userDefaults: nome, senha, email
 - Remover o app token do userDefaults.
 */
import UIKit
import SVProgressHUD
import Fabric
import DigitsKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        SVProgressHUD.setDefaultStyle(.light)
        SVProgressHUD.setDefaultMaskType(.black)
        Fabric.with([Digits.self])
    
//        Digits.sharedInstance().logOut()
//        gotoStoryboard(initialStoryboard: "Login")
        if User.sharedInstance.codAutor != nil {
            gotoStoryboard(initialStoryboard: "HealthUnit")
        } else {
            gotoStoryboard(initialStoryboard: "Login")
        }

        return true
    }
    
    func gotoStoryboard(initialStoryboard:String){
        let sb = UIStoryboard(name: initialStoryboard, bundle: Bundle.main)
        let vc = sb.instantiateInitialViewController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

