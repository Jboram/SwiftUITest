@_private(sourceFile: "HikeBadge\.swift") import SwiftUITest
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension HikeBadge_ {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/Hikes/HikeBadge\.swift", line: 14)
        VStack(alignment: .center) {
            Badge()
                .frame(width: __designTimeInteger("#87920.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 300), height: __designTimeInteger("#87920.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 300))
                .scaleEffect(__designTimeFloat("#87920.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.[0]", fallback: 1.0) / __designTimeFloat("#87920.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.[1]", fallback: 3.0))
                .frame(width: __designTimeInteger("#87920.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#87920.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 100))
        }
    
#sourceLocation()
    }
}

import struct SwiftUITest.HikeBadge_
#Preview {
    HikeBadge_(name: "Preview Testing")
}



