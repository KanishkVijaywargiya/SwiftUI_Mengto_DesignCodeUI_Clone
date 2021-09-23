//
//  VideoPlayer.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 23/09/21.
//

import SwiftUI
import AVKit

struct VideoPlayer: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<VideoPlayer>) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        let player1 = AVPlayer(url: url)
        controller.player = player1
        player1.play()
        return controller
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<VideoPlayer>) {

    }
}
