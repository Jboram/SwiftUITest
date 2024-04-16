@_private(sourceFile: "HikeDetail.swift") import SwiftUITest
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension HikeDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/Hikes/HikeDetail.swift", line: 21)
        VStack {
            HikeGraph(hike: hike, path: dataToShow)
                .frame(height: __designTimeInteger("#74966.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 200))

            HStack(spacing: __designTimeInteger("#74966.[1].[3].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: 25)) {
                ForEach(buttons, id: \.0) { value in
                    Button {
                        dataToShow = value.1
                    } label: {
                        Text(value.0)
                            .font(.system(size: __designTimeInteger("#74966.[1].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 15)))
                            .foregroundStyle(value.1 == dataToShow
                                ? .gray
                                : .accentColor)
                            .animation(nil)
                    }
                }
            }
        }
    
#sourceLocation()
    }
}

import struct SwiftUITest.HikeDetail
#Preview {
    HikeDetail(hike: ModelData().hikes[0])
}



