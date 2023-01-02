//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2023. 01. 02..
//

#if canImport(AppKit)
open class AppleLabel: AppleTextField {

    public override init() {
        super.init()

        drawsBackground = false
        isBordered = false
        isEditable = false
//        alignment = .left
        maximumNumberOfLines = 1
        lineBreakMode = .byTruncatingTail
    }

    public var numberOfLines: Int {
        get { maximumNumberOfLines }
        set { maximumNumberOfLines = newValue }
    }
}
#endif
