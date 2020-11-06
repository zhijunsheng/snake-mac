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
        
        let path = NSBezierPath()
        
        for i in 0..<10 {
            path.move(to: NSPoint(x: 40, y: 20 + i * 17))
            path.line(to: NSPoint(x: 400, y: 20 + i * 17))
        }
        
        #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
        path.stroke()
        
    }
    
}
