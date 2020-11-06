//
//  BoardView.swift
//  Snake
//
//  Created by Golden Thumb on 2020-11-06.
//

import Cocoa

class BoardView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setFill()
        bounds.fill()
    }
    
}
