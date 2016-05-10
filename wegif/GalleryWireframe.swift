//
//  GalleryWireframe.swift
//  wegif
//
//  Created by Remi Robert on 10/05/16.
//  Copyright © 2016 Remi Robert. All rights reserved.
//

import UIKit

class GalleryWireframe {
    
    var galleryPresenter: GalleryPresenter?
    private var galleryViewController: GalleryViewController?
    
    func presentGalleryInterface(window: UIWindow) {
        let controller = GalleryViewController.instanceController(.Main)

        let navigationController = window.rootViewController as! UINavigationController
        navigationController.viewControllers = [controller]
    }
}
