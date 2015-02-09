//
//  NibView.swift
//  NibView
//
//  Created by Justin Makaila on 2/9/15.
//  Copyright (c) 2015 Present. All rights reserved.
//

import UIKit

// MARK: - Nib Views

/**
    A protocol to be implemented by all views that implement their
    presentation through a `.xib`.
*/
protocol NibView {
    /**
        :returns: UINib instance representing the view.
    */
    class func nib() -> UINib
}

/**
    A protocol to be implemented by views that can be reused and
    supply their own reuse identifier.
*/
protocol ReuseIdentifierProtocol {
    /**
        :returns: String reuse identifier to be registered with the view.
    */
    class func reuseIdentifier() -> String
}

// MARK: - Table View Cells

/**
    Provides a protocol which combines NibView and ReuseIdentifierProtocol
    as a convenience for table view cells.
*/
protocol CellNibView: NibView, ReuseIdentifierProtocol { }
