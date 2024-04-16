@_private(sourceFile: "LandmarkRow.swift") import SwiftUITest
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension LandmarkRow {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/Landmarks/LandmarkRow.swift", line: 14)
        HStack {
            landmark.image
                .resizable()
                .frame(width: __designTimeInteger("#101079.[1].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 50), height: __designTimeInteger("#101079.[1].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 50))
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: __designTimeString("#101079.[1].[1].property.[0].[0].arg[0].value.[3].[0].[0].arg[0].value", fallback: "star.fill"))
                    .foregroundStyle(.yellow)
            }
        }
    
#sourceLocation()
    }
}

import struct SwiftUITest.LandmarkRow
#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
//        LandmarkRow(landmark: landmarks[1])
    }
}



