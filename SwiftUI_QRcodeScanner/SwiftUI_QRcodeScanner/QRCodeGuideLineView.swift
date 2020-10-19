//
//  QRCodeGuideLineView.swift
//  SwiftUI_QRcodeScanner
//
//  Created by Ahngeunwoo on 2020/10/19.
//

import SwiftUI

struct QRCodeGuideLineView : View {
    var body: some View {
        GeometryReader { geometryProxy in
            RoundedRectangle(cornerRadius : 20).stroke(style: StrokeStyle(lineWidth: 10, dash: [11]))
                .frame(width: geometryProxy.size.width / 2, height : geometryProxy.size.height / 3)
                .foregroundColor(Color.yellow)
        }
    }
}

struct QRCodeGuideLineView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeGuideLineView()
    }
}
