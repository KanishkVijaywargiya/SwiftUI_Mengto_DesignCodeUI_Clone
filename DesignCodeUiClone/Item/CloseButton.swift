//
//  CloseButton.swift
//  DesignCodeUiClone
//
//  Created by KANISHK VIJAYWARGIYA on 07/09/21.
//

import SwiftUI

struct CloseButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .font(.system(size: 17, weight: .bold))
            .foregroundColor(.white)
            .padding(.all, 10)
            .background(BlurView(style: .systemMaterialDark))
            .mask(Circle())
    }
}

struct CloseButton_Previews: PreviewProvider {
    static var previews: some View {
        CloseButton()
    }
}
