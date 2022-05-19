//
//  LoaderView.swift
//  Animations
//
//  Created by Erick Ayala Delgadillo on 17/05/22.
//

import Lottie

class LoaderView {
    
    var animation: AnimationView?
    
    init(animationName: String) {
        animate(animationName: animationName)
    }

    private func animate(animationName: String) {
        self.animation = .init(name: animationName)
        self.animation?.loopMode = .loop
        self.animation?.play()
    }
}
