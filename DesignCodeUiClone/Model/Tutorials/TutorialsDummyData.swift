//
//  Tutorials.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 10/09/21.
//

import SwiftUI

struct TutorialDummyData: Identifiable {
    var id = UUID()
    var title: String
    var subTitle: String
    var description: String
    var taughtBy: String
    var image1: String
    var image2: String
    var backgroundImg: String
    var gradient1: Color
    var gradient2: Color
    var gradient3: Color
}

extension TutorialDummyData {
    static var tutorials: [TutorialDummyData] {
        [
            TutorialDummyData(title: "SwiftUI Handbook", subTitle: "78 sections - 5 hours", description: "A comprehensive series of tutorials covering Xcode, SwiftUI and all the layout and development techniques ", taughtBy: "Meng To", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuihandbook2", gradient1: Color(#colorLiteral(red: 0.4, green: 0.6, blue: 1, alpha: 1)), gradient2: Color(#colorLiteral(red: 0, green: 0, blue: 0.4, alpha: 1)), gradient3: Color(#colorLiteral(red: 0, green: 0, blue: 0.4, alpha: 1))),
            
            TutorialDummyData(title: "SwiftUI Advanced Handbook", subTitle: "34 sections - 3 hours", description: "An extensive series of tutorials covering aadvanced topics related to SwiftUI, with a main focus on backend and logic to take your SwiftUI skills to the next", taughtBy: "Meng To", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuiadvancedhandbook", gradient1: Color(#colorLiteral(red: 1, green: 0, blue: 0.5176470588, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))),
            
            TutorialDummyData(title: "React Hooks Handbook", subTitle: "36 sections - 3 hours", description: "A comprehensive guide for an overview of the React library and all its basics", taughtBy: "Stephanie Diep", image1: "reactlogo", image2: "stephaniediep", backgroundImg: "reacthandbook", gradient1: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.4156862745, green: 0.1882352941, blue: 0.5764705882, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))),
            
            TutorialDummyData(title: "Figma Handbook", subTitle: "34 sections - 3 hours", description: "A comprehensive guide to the best tips and tricks in Figma", taughtBy: "Meng To", image1: "figmalogo", image2: "mengto", backgroundImg: "flutterhandbook", gradient1: Color(#colorLiteral(red: 0.4156862745, green: 0.1882352941, blue: 0.5764705882, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.01960784314, green: 0.4588235294, blue: 0.9019607843, alpha: 1))),
            
        ]
    }
}
