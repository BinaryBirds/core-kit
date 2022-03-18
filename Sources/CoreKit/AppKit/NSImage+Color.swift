//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 01. 29..
//

#if canImport(AppKit)
public extension NSImage {

    convenience init(color: NSColor) {
        let size = CGSize(width: 1, height: 1)
        let image = NSImage(size: size)
        image.lockFocus()
        color.drawSwatch(in: CGRect(origin: .zero, size: size))
        image.unlockFocus()
        self.init(cgImage: image.cgImage!, size: size)
    }
}
#endif
