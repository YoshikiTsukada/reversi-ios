//
//  ViewControllerStore.swift
//  Reversi
//
//  Created by Yoshiki Tsukada on 2020/05/04.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import RxCocoa
import RxSwift

protocol StoreBase {
    func accept(_ action: Action)
}

final class ViewControllerStore: StoreBase {
    private let disposeBag = DisposeBag()

    func accept(_ action: Action) {
        switch action {
        default: break
        }
    }
}

// MARK: Value
extension ViewControllerStore {
}

// MARK: Observable
extension ViewControllerStore {
}
