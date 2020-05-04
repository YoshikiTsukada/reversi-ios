//
//  ViewControllerStore.swift
//  Reversi
//
//  Created by Yoshiki Tsukada on 2020/05/04.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import RxCocoa
import RxSwift

final class ViewControllerStore {
    static let shared: ViewControllerStore = .init()

    private let disposeBag = DisposeBag()

    private init(dispatcher: Dispatcher = .shared) {
        dispatcher.register { [weak self] action in
            guard let me = self else { return }

            switch action {

            default: break
            }
        }
        .disposed(by: disposeBag)
    }
}

// MARK: Value
extension ViewControllerStore {
}

// MARK: Observable
extension ViewControllerStore {
}
