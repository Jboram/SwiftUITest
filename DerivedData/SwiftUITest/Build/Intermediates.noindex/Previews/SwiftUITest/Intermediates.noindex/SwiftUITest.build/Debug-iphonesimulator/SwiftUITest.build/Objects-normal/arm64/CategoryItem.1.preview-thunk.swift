@_private(sourceFile: "CategoryItem.swift") import SwiftUITest
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CategoryItem {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/Categories/CategoryItem.swift", line: 14)
        VStack(alignment: .leading){
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: __designTimeInteger("#79727.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 155), height: __designTimeInteger("#79727.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 155))
                .cornerRadius(__designTimeInteger("#79727.[1].[1].property.[0].[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 5))
            
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, __designTimeInteger("#79727.[1].[1].property.[0].[0].modifier[0].arg[1].value", fallback: 15))
    
#sourceLocation()
    }
}

import struct SwiftUITest.CategoryItem
#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}


