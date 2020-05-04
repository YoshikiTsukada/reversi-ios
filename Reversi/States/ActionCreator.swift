//
//  ActionCreator.swift
//  Reversi
//
//  Created by Yoshiki Tsukada on 2020/05/05.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

final class ActionCreator {
    private static let dispatcher: Dispatcher = .shared

    static func createStore(with store: StoreBase) {
        dispatcher.dispatch(.setStore(store))
    }

    static func resetGame(with store: StoreBase) {
        dispatcher.dispatch(.deleteStore(store))
    }
}
