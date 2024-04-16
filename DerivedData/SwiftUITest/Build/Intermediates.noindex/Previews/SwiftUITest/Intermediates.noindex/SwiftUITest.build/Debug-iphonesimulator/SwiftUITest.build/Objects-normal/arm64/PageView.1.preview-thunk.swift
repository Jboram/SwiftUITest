@_private(sourceFile: "PageView.swift") import SwiftUITest
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension PageView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/PageView/PageView.swift", line: 15)
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * __designTimeInteger("#106166.[1].[2].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 18)))
                .padding(.trailing)
            
        }
        .aspectRatio(__designTimeInteger("#106166.[1].[2].property.[0].[0].modifier[0].arg[0].value.[0]", fallback: 3) / __designTimeInteger("#106166.[1].[2].property.[0].[0].modifier[0].arg[0].value.[1]", fallback: 2), contentMode: .fit)
    
#sourceLocation()
    }
}

import struct SwiftUITest.PageView
#Preview {
    PageView(pages: ModelData().features.map {
        FeatureCard(landmark: $0)
    })
}



