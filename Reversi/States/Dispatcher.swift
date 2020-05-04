//
//  Dispatcher.swift
//  Reversi
//
//  Created by Yoshiki Tsukada on 2020/05/04.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import RxCocoa
import RxSwift

final class Dispatcher {
    static let shared: Dispatcher = .init()

    private let _action = PublishRelay<Action>()

    func register(callback: @escaping (Action) -> Void) -> Disposable {
        return _action.subscribe(onNext: callback)
    }

    func dispatch(_ action: Action) {
        _action.accept(action)
    }
}
