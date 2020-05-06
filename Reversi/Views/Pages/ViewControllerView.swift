//
//  ViewControllerView.swift
//  Reversi
//
//  Created by Yoshiki Tsukada on 2020/05/04.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import UIKit

class ViewControllerView: UIView {
    @IBOutlet var boardView: BoardView!
    
    @IBOutlet var messageDiskView: DiskView!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var messageDiskSizeConstraint: NSLayoutConstraint!
    /// Storyboard 上で設定されたサイズを保管します。
    /// 引き分けの際は `messageDiskView` の表示が必要ないため、
    /// `messageDiskSizeConstraint.constant` を `0` に設定します。
    /// その後、新しいゲームが開始されたときに `messageDiskSize` を
    /// 元のサイズで表示する必要があり、
    /// その際に `messageDiskSize` に保管された値を使います。
    private var messageDiskSize: CGFloat!

    @IBOutlet var playerControls: [UISegmentedControl]!
    @IBOutlet var countLabels: [UILabel]!
    @IBOutlet var playerActivityIndicators: [UIActivityIndicatorView]!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }

    func loadNib() {
        guard let view = UINib(nibName: String(describing: type(of: self)), bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView else {
            fatalError("Could not load Nibfile.")
        }

        view.frame = bounds
        addSubview(view)
    }
    
    func setupViews() {
    }

//    /// どちらの色のプレイヤーのターンかを表します。ゲーム終了時は `nil` です。
//    private var turn: Disk? = .dark
//
//    private var animationCanceller: Canceller?
//    private var isAnimating: Bool { animationCanceller != nil }
//
//    private var playerCancellers: [Disk: Canceller] = [:]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        boardView.delegate = self
//        messageDiskSize = messageDiskSizeConstraint.constant
//
//        do {
//            try loadGame()
//        } catch _ {
//            newGame()
//        }
//    }
//
//    private var viewHasAppeared: Bool = false
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        if viewHasAppeared { return }
//        viewHasAppeared = true
//        waitForPlayer()
//    }
}
