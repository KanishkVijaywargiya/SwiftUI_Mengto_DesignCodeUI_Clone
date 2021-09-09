//
//  ScrollCardsDummyData.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 09/09/21.
//

import SwiftUI

struct ScrollCardsDummyData: Identifiable {
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

var scrollCardData = [
    ScrollCardsDummyData(title: "SwiftUI Concurrency", subTitle: "20 sections - 3 hours", description: "Concurrency, swipe actions, search feature, AttributedStrings and accessibility were concepts discussed at WWDC21. This course explores all these", taughtBy: "Stephanie Diep", image1: "swiftuilogo", image2: "stephaniediep", backgroundImg: "swiftuiconcurrency", gradient1: Color(#colorLiteral(red: 0.01960784314, green: 0.4588235294, blue: 0.9019607843, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1))),

    ScrollCardsDummyData(title: "SwiftUI Combine and Data", subTitle: "18 sections - 3 hours", description: "Learn about Combine, the MVVM architecture, data, notifications and performance hands-on by creating a beautiful SwiftUI application", taughtBy: "Stephanie Diep", image1: "swiftuilogo", image2: "stephaniediep", backgroundImg: "swiftuicombine", gradient1: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1))),

    ScrollCardsDummyData(title: "Advanced Development in SwiftUI", subTitle: "20 sections - 4 hours", description: "Advance your SwiftUI skills by developing an app using Core Data, CloudKit, In App Purchases, Sign In With Apple and Firebase Authentication",taughtBy: "Sai Kambampati", image1: "swiftuilogo", image2: "saikambampati", backgroundImg: "swiftuiadvancedcourse", gradient1: Color(#colorLiteral(red: 0.4, green: 0.6, blue: 1, alpha: 1)), gradient2: Color(#colorLiteral(red: 0, green: 0, blue: 0.4, alpha: 1)), gradient3: Color(#colorLiteral(red: 0, green: 0, blue: 0.4, alpha: 1))),

    ScrollCardsDummyData(title: "SwiftUI Advanced Handbook", subTitle: "34 sections - 3 hours", description: "An extensive series of tutorials covering advanced topics related to SwiftUI, with a main focus on backend and logic to take your SwiftUI skills to the next level.",taughtBy: "Meng To", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuiadvancedhandbook", gradient1: Color(#colorLiteral(red: 0.3607843137, green: 0.1450980392, blue: 0.5529411765, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.3607843137, green: 0.1450980392, blue: 0.5529411765, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.262745098, green: 0.537254902, blue: 0.6352941176, alpha: 1))),

    ScrollCardsDummyData(title: "SwiftUI Handbook", subTitle: "78 sections - 5 hours", description: "A comprehensive series of tutorials covering Xcode, SwiftUI and all the layout and development techniques.",taughtBy: "Meng To", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuihandbook", gradient1: Color(#colorLiteral(red: 0.4509803922, green: 0.01176470588, blue: 0.7529411765, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.4509803922, green: 0.01176470588, blue: 0.7529411765, alpha: 1)), gradient3: Color(#colorLiteral(red: 1, green: 0, blue: 0.6, alpha: 1))),

    ScrollCardsDummyData(title: "SwiftUI for iOS 14", subTitle: "20 sections - 3 hours", description: "Build a multi-platform app from scratch using the new technique in iOS 14. We'll use the Sidebar and Lazy Grids to make the layout adaptive for iOS, iPadOS, macOS.",taughtBy: "Meng To", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuiios14", gradient1: Color(#colorLiteral(red: 1, green: 0, blue: 0.6, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.4509803922, green: 0.01176470588, blue: 0.7529411765, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.4509803922, green: 0.01176470588, blue: 0.7529411765, alpha: 1))),

    ScrollCardsDummyData(title: "SwiftUI Advanced Handbook", subTitle: "34 sections - 3 hours", description: "An extensive series of tutorials covering advanced topics related to SwiftUI, with a main focus on backend and logic to take your SwiftUI skills to the next level.",taughtBy: "Meng To", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuiadvancedhandbook", gradient1: Color(#colorLiteral(red: 0.4509803922, green: 0.01176470588, blue: 0.7529411765, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.4509803922, green: 0.01176470588, blue: 0.7529411765, alpha: 1)), gradient3: Color(#colorLiteral(red: 1, green: 0, blue: 0.6, alpha: 1))),

    ScrollCardsDummyData(title: "Build an app with SwiftUI Part 3", subTitle: "20 sections - 4 hours", description: "This course was written for designers and developers who are passionate about design and about building real apps for iOS, iPadOS, macOS, tvOS and watchOS.",taughtBy: "Meng To", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuiios14", gradient1: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.4156862745, green: 0.1882352941, blue: 0.5764705882, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))),

    ScrollCardsDummyData(title: "Build an app with SwiftUI Part 2", subTitle: "20 sections - 4 hours", description: "This course was written for designers and developers who are passionate about design and about building real apps for iOS, iPadOS, macOS, tvOS and watchOS.",taughtBy: "Meng To", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuipart2", gradient1: Color(#colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))),

    ScrollCardsDummyData(title: "Build an app with SwiftUI Part 1", subTitle: "20 sections - 4 hours", description: "This course was written for designers and developers who are passionate about design and about building real apps for iOS, iPadOS, macOS, tvOS and watchOS.",taughtBy: "Meng To", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftuipart1", gradient1: Color(#colorLiteral(red: 0.2039215686, green: 0.1529411765, blue: 0.4431372549, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.9568627451, green: 0, blue: 0.462745098, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.9568627451, green: 0, blue: 0.462745098, alpha: 1))),

    ScrollCardsDummyData(title: "Build an ARKit 2 App", subTitle: "11 sections - 4 hours", description: "Introduction to ARKit and learn how to make your own playground. You will be able to add models or even your own designs into the app and play with them",taughtBy: "Dara To", image1: "swiftuilogo", image2: "darato", backgroundImg: "learnarkit", gradient1: Color(#colorLiteral(red: 0.4156862745, green: 0.1882352941, blue: 0.5764705882, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))),

    ScrollCardsDummyData(title: "Create a SpriteKit Game", subTitle: "9 sections - 3 hours", description: "Overview of SpriteKit a powerful 2D sprite-based framework for games development from Apple and learn how to create your very own platform for games",taughtBy: "Willie Yam", image1: "swiftuilogo", image2: "willieyam", backgroundImg: "spritekit", gradient1: Color(#colorLiteral(red: 0.4, green: 0.6, blue: 1, alpha: 1)), gradient2: Color(#colorLiteral(red: 0, green: 0, blue: 0.4, alpha: 1)), gradient3: Color(#colorLiteral(red: 0, green: 0, blue: 0.4, alpha: 1))),
    
    ScrollCardsDummyData(title: "Swift Advanced", subTitle: "22 sections - 9 hours", description: "Learn Swift a robust and intuitive programming language created by Apple for building apps for iOS, Mac, Apple TV and Apple Watch",taughtBy: "Meng TO", image1: "swiftuilogo", image2: "mengto", backgroundImg: "swiftadvanced", gradient1: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1))),
    
    ScrollCardsDummyData(title: "Learn Swift", subTitle: "19 sections - 4 hours", description: "Learn Swift a robust and intuitive programming language created by Apple for building apps for iOS, Mac, Apple TV and Apple Watch",taughtBy: "Willie Yam", image1: "swiftuilogo", image2: "willieyam", backgroundImg: "learnswift", gradient1: Color(#colorLiteral(red: 0.01960784314, green: 0.4588235294, blue: 0.9019607843, alpha: 1)), gradient2: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1)), gradient3: Color(#colorLiteral(red: 0.007843137255, green: 0.1058823529, blue: 0.4745098039, alpha: 1)))
]

