//
//  LearnNow.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 06/09/21.
//

import SwiftUI

struct LearnNow: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack {
                VStack(alignment: .leading) {
                    LivestreamsCard(title: "UI Design Livestreams", courseLogo: "penlogo", subHeadline: "16 sections - 22 hours", gradient1: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.9098039216, green: 0.2, blue: 0.3137254902, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.9098039216, green: 0.2, blue: 0.3137254902, alpha: 1)), backgroundImg: #imageLiteral(resourceName: "livestream3"), footerText: "UI")
                        .frame(height: 350)
                    LivestreamsCard(title: "SwiftUI Livestreams", courseLogo: "swiftuiLogo", subHeadline: "13 section - 17 hours", gradient1: Color(#colorLiteral(red: 0.776, green: 0.266, blue: 0.988, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.356, green: 0.348, blue: 0.870, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.357, green: 0.349, blue: 0.870, alpha: 1)), backgroundImg: #imageLiteral(resourceName: "livestreams1"), footerText: "SwiftUI")
                }
            }
        }
    }
}

struct LearnNow_Previews: PreviewProvider {
    static var previews: some View {
        LearnNow()
    }
}
