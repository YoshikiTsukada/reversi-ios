//
//  ReversiStore.swift
//  Reversi
//
//  Created by Yoshiki Tsukada on 2020/05/05.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import RxCocoa
import RxSwift

final class ReversiStore {
    static let shared: ReversiStore = .init()

    private let _store = BehaviorRelay<StoreBase?>(value: nil)

    private var store: StoreBase? {
        return _store.value
    }

    private let disposeBag = DisposeBag()

    private init(dispatcher: Dispatcher = .shared) {
        dispatcher.register { [weak self] action in
            guard let me = self else { return }

            switch action {
            case let .setStore(store):
                me._store.accept(store)

            case let .deleteStore(store):
                me._store.accept(nil)

            default:
                me.store?.accept(action)
            }
        }
        .disposed(by: disposeBag)
    }
}
