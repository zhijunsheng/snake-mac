//
//  BoardView.swift
//  Snake
//
//  Created by Golden Thumb on 2020-11-06.
//

import Cocoa

class BoardView: NSView {

    let cols: Int = 22
    let rows: Int = 11
    let gridX: CGFloat = 23
    let gridY: CGFloat = 13
    let cellSide: CGFloat = 19
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setFill()
        bounds.fill()
        
        drawGrid()
        drawSnake()
    }
    
    func drawSnake() {
        drawSnakeCellAt(col: 2, row: 3, color:  #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        drawSnakeCellAt(col: 3, row: 3, color:  #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        drawSnakeCellAt(col: 3, row: 2, color:  #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        drawSnakeCellAt(col: 4, row: 2, color:  #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        drawSnakeCellAt(col: 5, row: 2, color:  #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
    }
    
    func drawSnakeCellAt(col: Int, row: Int, color: NSColor) {
        color.setFill()
        let cell = NSBezierPath(roundedRect: NSRect(x: gridX + CGFloat(col) * cellSide, y: gridY + CGFloat(row) * cellSide, width: cellSide, height: cellSide), xRadius: cellSide / 7, yRadius: cellSide / 7)
        cell.fill()
    }
    
    func drawGrid() {
        let path = NSBezierPath()
        
        for i in 0..<rows {
            path.move(to: NSPoint(x: gridX, y: gridY + CGFloat(i) * cellSide))
            path.line(to: NSPoint(x: gridX + CGFloat(cols - 1) * cellSide, y: gridY + CGFloat(i) * cellSide))
        }
        
        for i in 0..<cols {
            path.move(to: NSPoint(x: gridX + CGFloat(i) * cellSide, y: gridY))
            path.line(to: NSPoint(x: gridX + CGFloat(i) * cellSide, y: gridY + CGFloat(rows - 1) * cellSide))
        }
        
        #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
        path.stroke()
    }
    
}
