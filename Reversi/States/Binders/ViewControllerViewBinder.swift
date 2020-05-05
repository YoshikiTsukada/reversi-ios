//
//  ViewControllerViewBinder.swift
//  Reversi
//
//  Created by Yoshiki Tsukada on 2020/05/04.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import UIKit

class ViewControllerViewBinder {
    private let view: ViewControllerView
    private let store: ViewControllerStore
    
    init(view: ViewControllerView, store: ViewControllerStore) {
        self.view = view
        self.store = store
        
        view.setupViews()
        
        // view bind
    }
}
