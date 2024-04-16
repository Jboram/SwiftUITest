@_private(sourceFile: "HikeView.swift") import SwiftUITest
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension HikeView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/Hikes/HikeView.swift", line: 22)
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: __designTimeInteger("#75076.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 50), height: __designTimeInteger("#75076.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: 30))

                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }

                Spacer()

                Button {
//                    withAnimation(.easeInOut(duration: 4)) {
                    withAnimation {
                        showDetail.toggle()
                    }
                } label: {
                    Label(__designTimeString("#75076.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Graph"), systemImage: __designTimeString("#75076.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[1].value", fallback: "chevron.right.circle"))
                        .labelStyle(.iconOnly)
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? __designTimeInteger("#75076.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.then", fallback: 90) : __designTimeInteger("#75076.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.else", fallback: 0)))
//                        .animation(nil, value: showDetail)
                        .scaleEffect(showDetail ? __designTimeFloat("#75076.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[3].arg[0].value.then", fallback: 1.5) : __designTimeInteger("#75076.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[3].arg[0].value.else", fallback: 1))
                        .padding()
//                        .animation(.spring(), value: showDetail)
                }
            }

            if showDetail {
                HikeDetail(hike: hike)
                    .transition(.moveAndFade)
            }
        }
    
#sourceLocation()
    }
}

extension AnyTransition {
    @_dynamicReplacement(for: moveAndFade) private static var __preview__moveAndFade: AnyTransition {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/Hikes/HikeView.swift", line: 12)
//        AnyTransition.move(edge: .trailing)
        .asymmetric(insertion: .move(edge: .trailing).combined(with: .opacity), removal: .scale.combined(with: .opacity))
    
#sourceLocation()
    }
}

import struct SwiftUITest.HikeView
#Preview {
    VStack {
        HikeView(hike: ModelData().hikes[0])
            .padding()
        Spacer()
    }
}



