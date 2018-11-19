//
//  AppCoordinator.swift
//  MVCTodo
//
//  Created by Dave DeLong on 10/18/18.
//  Copyright © 2018 Syzygy. All rights reserved.
//

import UIKit
import TodoKit

class AppCoordinator: Coordinator {
    
    var window: UIWindow?
    
    let router = AppRouter()
    let storage: TDStorage
    
    var primaryViewController: UIViewController { return router.rootViewController }
    
    var listCoordinator: TDItemListOverviewCoordinator?
    
    init() {
        storage = TDStorage.shared()!
    }
    
    func start(with launchOptions: Dictionary<UIApplication.LaunchOptionsKey, Any>) -> Bool {
        listCoordinator?.stop()
        listCoordinator = TDItemListOverviewCoordinator(storage: storage, router: router)
        listCoordinator?.start()
        
        if window == nil {
            window = UIWindow(rootViewController: primaryViewController)
        }
        
        return true
    }
    
    func start() {
        _ = start(with: [:])
    }
    
    func stop() {
        listCoordinator?.stop()
        listCoordinator = nil
        
        router.hideViewController(primaryViewController)
        
        window?.resignKey()
        window?.isHidden = true
        window = nil
    }
    
}


