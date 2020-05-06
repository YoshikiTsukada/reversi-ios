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
    private let _turn = BehaviorRelay<Disk?>(value: .dark)
    private let _isAnimating = BehaviorRelay<Bool>(value: false)

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

// Boardの状態に関する最高権限を持つ
// - 石の置き場所、個数など
// - 石が置けるか、また置くとどうなるかなどのロジック
// プレイヤーの状態やターンなどはStoreで行う

class Board {
    static let shared: Board = .init()

    public static let dimension: Int = 8
    public static var range: Range<Int> {
        return 0 ..< dimension
    }

    var disks: [Disk?] = []

    init() {
        disks = .init(repeating: nil, count: Board.dimension * Board.dimension)

        setDisk(.light, atX: Board.dimension / 2 - 1, y: Board.dimension / 2 - 1, animated: false)
        setDisk(.dark, atX: Board.dimension / 2, y: Board.dimension / 2 - 1, animated: false)
        setDisk(.dark, atX: Board.dimension / 2 - 1, y: Board.dimension / 2, animated: false)
        setDisk(.light, atX: Board.dimension / 2, y: Board.dimension / 2, animated: false)
    }

    private func setDisk(_ disk: Disk?, atX x: Int, y: Int, animated: Bool) {
        guard Board.range.contains(x) && Board.range.contains(y) else {
            fatalError()
        }
        disks[y * Board.dimension + x] = disk
    }
    
    func didTapAt(atX x: Int, atY y: Int) {
        print("tapped at x: \(x), y: \(y)")
    }
}
