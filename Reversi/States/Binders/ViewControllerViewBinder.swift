//
//  ViewControllerViewBinder.swift
//  Reversi
//
//  Created by Yoshiki Tsukada on 2020/05/04.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewControllerViewBinder {
    private let view: ViewControllerView
    private let store: ViewControllerStore
    
    private let disposeBag = DisposeBag()
    
    init(view: ViewControllerView, store: ViewControllerStore) {
        self.view = view
        self.store = store
        
        view.setupViews()

        // セルをタップされたときのイベント
        for y in Board.range {
            for x in Board.range {
//                let cellView: CellView = cellViewAt(x: x, y: y)!
//                let action = CellSelectionAction(boardView: self, x: x, y: y)
//                actions.append(action) // To retain the `action`
//                cellView.addTarget(action, action: #selector(action.selectCell), for: .touchUpInside)
                view.boardView.cellViewAt(x: x, y: y)!.buttonObservable
                    .subscribe(onNext: { _ in
                        Board.shared.didTapAt(atX: x, atY: y)
                    })
                    .disposed(by: disposeBag)
            }
        }
    }
}
