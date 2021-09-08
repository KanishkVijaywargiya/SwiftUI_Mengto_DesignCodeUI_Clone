//
//  Course.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 08/09/21.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var subTitle: String
    var image1: String
    var image2: String
    var backgroundImg: String
    var gradient1: Color
    var gradient2: Color
    var gradient3: Color
}

var courses = [
    Course(title: "Advanced React Hooks", subTitle: "20 sections - 5 hours", image1: "reactlogo", image2: "mengto", backgroundImg: "reactHooks", gradient1: Color(#colorLiteral(red: 0.01960784314, green: 0.4588235294, blue: 0.9019607843, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1))),
    
    Course(title: "SwiftUI Concurrency", subTitle: "20 sections - 3 hours", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuiconcurrency", gradient1: Color(#colorLiteral(red: 0.4156862745, green: 0.1882352941, blue: 0.5764705882, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.01960784314, green: 0.4588235294, blue: 0.9019607843, alpha: 1))),
    
    Course(title: "SwiftUI Combine and Data", subTitle: "18 sections - 3 hours", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuicombine", gradient1: Color(#colorLiteral(red: 0.4156862745, green: 0.1882352941, blue: 0.5764705882, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))),
    
    Course(title: "Advanced Development in SwiftUI", subTitle: "20 sections - 4 hours", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuiadvancedcourse", gradient1: Color(#colorLiteral(red: 1, green: 0, blue: 0.5176470588, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
]
