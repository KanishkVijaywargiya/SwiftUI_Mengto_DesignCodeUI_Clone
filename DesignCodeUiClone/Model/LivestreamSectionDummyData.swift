//
//  LivestreamSectionDummyData.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 07/09/21.
//

import SwiftUI

struct LivestreamSectionDummyData: Identifiable {
    var id = UUID()
    var title: String
    var subHeadline: String
    var courseLogo: String
    var color: Color
    var length: String
}

var livestreamSection = [
    LivestreamSectionDummyData(title: "My Design Process", subHeadline: "Learn tips and tricks to create UI assets", courseLogo: "1", color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), length: "73:32"),
    
    LivestreamSectionDummyData(title: "Colors, Grid, Adaptive Layout", subHeadline: "Color palettes and complimentary colors", courseLogo: "2", color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), length: "74:53"),
    
    LivestreamSectionDummyData(title: "UI Patterns, Visual Hierarchy and Iterations", subHeadline: "Learn patterns and wireframes", courseLogo: "3", color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), length: "105:02"),
    
    LivestreamSectionDummyData(title: "Prototyping, Animation and Developer Handoff", subHeadline: "Create quick animations in Figma", courseLogo: "4", color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), length: "116:02"),
    
    LivestreamSectionDummyData(title: "UI Design for developers and Design System", subHeadline: "Create a collaborative and effective design system", courseLogo: "5", color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), length: "60:02"),
    
    LivestreamSectionDummyData(title: "iOS 14 Design", subHeadline: "A quick way to the new iOS 14 design guidelines", courseLogo: "6", color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), length: "93:08"),
    
    LivestreamSectionDummyData(title: "UI Design new techniques", subHeadline: "Team Collaboration, Components, Waves and List Design", courseLogo: "7", color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), length: "109:05"),
    
    LivestreamSectionDummyData(title: "Review UIs and Design Techniques in Figma", subHeadline: "UI design livestream where I will review UIs, give techniques and redesign live in Figma before and after", courseLogo: "8", color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), length: "96:15"),
    
    LivestreamSectionDummyData(title: "Glassmorphism, Onboarding UI in Figma", subHeadline: "Let's explore glassmorphism by using the blurred background, outlines and design a user interface in Figma", courseLogo: "9", color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), length: "54:03"),
    
    LivestreamSectionDummyData(title: "Blobs, Glassmorphism and iOS Screens in Figma", subHeadline: "I'm creating blobs in Figma, working with colors, blurred layers and redesigning screens for our iOS app", courseLogo: "10", color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), length: "65:38"),
]

