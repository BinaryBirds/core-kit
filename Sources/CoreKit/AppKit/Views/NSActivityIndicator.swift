//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2023. 01. 02..
//

#if canImport(AppKit)
open class AppleActivityIndicator: AppleProgressView {

    public override init() {
        super.init()

        isIndeterminate = true
        style = .spinning
        isDisplayedWhenStopped = false
    }

    public var hidesWhenStopped: Bool {
        get { !isDisplayedWhenStopped }
        set { isDisplayedWhenStopped = !newValue }
    }
}
#endif
