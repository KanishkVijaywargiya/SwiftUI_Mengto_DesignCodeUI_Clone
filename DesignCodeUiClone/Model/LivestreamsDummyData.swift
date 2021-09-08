//
//  LivestreamsDummyData.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 07/09/21.
//

import SwiftUI

struct LivestreamsDummyData: Identifiable {
    var id = UUID()
    var title: String
    var courseLogo: String
    var subHeadline: String
    var gradient1: Color
    var gradient2: Color
    var gradient3: Color
    var backgroundImg: UIImage
    var footerText: String
}

var livestreams = [
    LivestreamsDummyData(title: "UI Design Livestreams", courseLogo: "penlogo", subHeadline: "16 sections - 22 hours", gradient1: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.9098039216, green: 0.2, blue: 0.3137254902, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.9098039216, green: 0.2, blue: 0.3137254902, alpha: 1)), backgroundImg: #imageLiteral(resourceName: "livestream3"), footerText: "UI"),
    
    LivestreamsDummyData(title: "SwiftUI Livestreams", courseLogo: "swiftuilogo", subHeadline: "13 section - 17 hours", gradient1: Color(#colorLiteral(red: 0.776, green: 0.266, blue: 0.988, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.356, green: 0.348, blue: 0.870, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.357, green: 0.349, blue: 0.870, alpha: 1)), backgroundImg: #imageLiteral(resourceName: "livestreams1"), footerText: "SwiftUI")

]
