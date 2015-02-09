//
//  UITableViewExtensions.swift
//  NibView
//
//  Created by Justin Makaila on 2/9/15.
//  Copyright (c) 2015 Present. All rights reserved.
//

import UIKit

extension UITableView {
    
    // MARK: - Dequeue Nib Views
    
    func dequeueNibView<T: UITableViewCell where T: ReuseIdentifierProtocol>(view: T.Type) -> T {
        return dequeueReusableCellWithIdentifier(view.reuseIdentifier()) as T
    }
    
    func dequeueHeaderFooterNibView<T: UITableViewHeaderFooterView where T: ReuseIdentifierProtocol>(view: T.Type) -> T {
        return dequeueReusableHeaderFooterViewWithIdentifier(view.reuseIdentifier()) as T
    }
    
    // MARK: - Register Nib Views
    
    func registerNibView<T: UITableViewCell where T: CellNibView>(view: T.Type) {
        registerNibView(view, reuseIdentifier: view.reuseIdentifier())
    }
    
    func registerNibView<T: UITableViewCell where T: CellNibView>(view: T.Type, reuseIdentifier: String) {
        registerNib(view.nib(), forCellReuseIdentifier: reuseIdentifier)
    }
    
    func registerHeaderFooterNibView<T: UITableViewHeaderFooterView where T: CellNibView>(view: T.Type) {
        registerHeaderFooterNibView(view, reuseIdentifier: view.reuseIdentifier())
    }
    
    func registerHeaderFooterNibView<T: UITableViewHeaderFooterView where T: CellNibView>(view: T.Type, reuseIdentifier: String) {
        registerNib(view.nib(), forHeaderFooterViewReuseIdentifier: reuseIdentifier)
    }
}