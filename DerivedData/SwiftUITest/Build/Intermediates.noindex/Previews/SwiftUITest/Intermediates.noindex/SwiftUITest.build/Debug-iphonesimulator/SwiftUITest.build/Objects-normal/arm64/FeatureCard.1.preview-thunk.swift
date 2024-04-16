@_private(sourceFile: "FeatureCard.swift") import SwiftUITest
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension FeatureCard.TextOverlay {
typealias TextOverlay = FeatureCard.TextOverlay

    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/PageView/FeatureCard.swift", line: 29)
            ZStack(alignment: .bottomLeading){
                gradient
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                        .bold()
                    Text(landmark.park)
                }
                .padding()
            }
            .foregroundColor(.white)
        
#sourceLocation()
    }
}

extension FeatureCard.TextOverlay {
    @_dynamicReplacement(for: gradient) private var __preview__gradient: LinearGradient {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/PageView/FeatureCard.swift", line: 24)
            .linearGradient(
                Gradient(colors: [.black.opacity(__designTimeFloat("#102091.[1].[2].[1].property.[0].[0].arg[0].value.arg[0].value.[0].modifier[0].arg[0].value", fallback: 0.6)), .black.opacity(__designTimeInteger("#102091.[1].[2].[1].property.[0].[0].arg[0].value.arg[0].value.[1].modifier[0].arg[0].value", fallback: 0))]), startPoint: .bottom, endPoint: .center)
        
#sourceLocation()
    }
}

extension FeatureCard {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/PageView/FeatureCard.swift", line: 13)
        landmark.featureImage?
            .resizable()
            .overlay {
                TextOverlay(landmark: landmark)
            }
    
#sourceLocation()
    }
}

import struct SwiftUITest.FeatureCard
#Preview {
    FeatureCard(landmark: ModelData().features[0])
        .aspectRatio(3 / 2, contentMode: .fit)
        
}



