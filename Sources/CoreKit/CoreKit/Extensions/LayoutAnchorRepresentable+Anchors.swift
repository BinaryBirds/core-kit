//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 01. 29..
//

public extension LayoutAnchorRepresentable {
        
    func leadingAnchor(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        leadingAnchor.constraint(equalTo: other.leadingAnchor, constant: constant)
    }
    
    func leadingAnchor(
        equalToTrailing other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        leadingAnchor.constraint(equalTo: other.trailingAnchor, constant: constant)
    }
    
    func topAnchor(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        topAnchor.constraint(equalTo: other.topAnchor, constant: constant)
    }
    
    func topAnchor(
        equalToBottom other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        topAnchor.constraint(equalTo: other.bottomAnchor, constant: constant)
    }

    func bottomAnchor(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        bottomAnchor.constraint(equalTo: other.bottomAnchor, constant: -constant)
    }
    
    func bottomAnchor(
        equalToTop other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        bottomAnchor.constraint(equalTo: other.topAnchor, constant: -constant)
    }

    func trailingAnchor(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        trailingAnchor.constraint(equalTo: other.trailingAnchor, constant: -constant)
    }
    
    func trailingAnchor(
        equalToLeading other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        trailingAnchor.constraint(equalTo: other.leadingAnchor, constant: -constant)
    }

    func verticalAnchors(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> [NSLayoutConstraint] {
        [
            topAnchor(other, constant: constant),
            bottomAnchor(other, constant: constant),
        ]
    }

    func horizontalAnchors(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> [NSLayoutConstraint] {
        [
            leadingAnchor(other, constant: constant),
            trailingAnchor(other, constant: constant),
        ]
    }

    func fillAnchors(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> [NSLayoutConstraint] {
        verticalAnchors(other, constant: constant) + horizontalAnchors(other, constant: constant)
    }

    func widthAnchor(
        equalToConstant constant: CGFloat
    ) -> NSLayoutConstraint {
        widthAnchor.constraint(equalToConstant: constant)
    }

    func heightAnchor(
        equalToConstant constant: CGFloat
    ) -> NSLayoutConstraint {
        heightAnchor.constraint(equalToConstant: constant)
    }

    func widthAnchor(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        widthAnchor.constraint(equalTo: other.widthAnchor, constant: constant)
    }

    func heightAnchor(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        heightAnchor.constraint(equalTo: other.heightAnchor, constant: constant)
    }

    func widthAnchor(
        _ other: LayoutAnchorRepresentable,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint {
        widthAnchor.constraint(equalTo: other.widthAnchor, multiplier: multiplier)
    }

    func heightAnchor(
        _ other: LayoutAnchorRepresentable,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint {
        heightAnchor.constraint(equalTo: other.heightAnchor, multiplier: multiplier)
    }
    
    func centerXAnchor(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        centerXAnchor.constraint(equalTo: other.centerXAnchor, constant: constant)
    }

    func centerYAnchor(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        centerYAnchor.constraint(equalTo: other.centerYAnchor, constant: constant)
    }

    func centerAnchors(
        _ other: LayoutAnchorRepresentable,
        constant: CGFloat = 0
    ) -> [NSLayoutConstraint] {
        [
            centerXAnchor(other, constant: constant),
            centerYAnchor(other, constant: constant),
        ]
    }

    func aspectAnchor(
        _ other: LayoutAnchorRepresentable,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint {
        widthAnchor.constraint(equalTo: other.heightAnchor, multiplier: multiplier)
    }

    func aspectAnchor(
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint {
        widthAnchor.constraint(equalTo: heightAnchor, multiplier: multiplier)
    }
}
