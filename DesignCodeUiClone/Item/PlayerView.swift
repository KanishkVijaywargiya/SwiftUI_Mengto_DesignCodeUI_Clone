//
//  PlayerView.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 23/09/21.
//

import SwiftUI

struct PlayerView: View {
    let link: URL
    
    var body: some View {
        VStack {
            VideoPlayer(url: link).ignoresSafeArea()
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(link: URL(string: "https://p73.f4.n0.cdn.getcloudapp.com/items/yAuyqeRn/f737c6e7-c7de-4ab2-a51d-95386b8558d3.mp4")!)
    }
}
