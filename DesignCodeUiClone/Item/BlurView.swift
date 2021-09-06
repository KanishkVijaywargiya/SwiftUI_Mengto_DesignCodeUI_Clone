//
//  BlurView.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 07/09/21.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    let style: UIBlurEffect.Style
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(blurView, at: 0)
        
        NSLayoutConstraint.activate([
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context:
                        UIViewRepresentableContext<BlurView>) {
        
    }
}
