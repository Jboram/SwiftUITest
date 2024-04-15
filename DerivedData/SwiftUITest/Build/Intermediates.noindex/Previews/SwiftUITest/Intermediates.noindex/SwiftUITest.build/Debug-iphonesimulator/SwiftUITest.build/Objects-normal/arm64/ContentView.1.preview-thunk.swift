@_private(sourceFile: "ContentView.swift") import SwiftUITest
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ExtractedView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/ContentView.swift", line: 42)
        VStack{
            Image(systemName: __designTimeString("#74848.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "globe"))
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(__designTimeString("#74848.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Hello, world!"))
                .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
            
        }
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/ContentView.swift", line: 19)
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label(__designTimeString("#74848.[1].[2].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Featured"), systemImage: __designTimeString("#74848.[1].[2].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[1].value", fallback: "star"))
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label(__designTimeString("#74848.[1].[2].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "list"), systemImage: __designTimeString("#74848.[1].[2].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.[0].arg[1].value", fallback: "list.bullet"))
                }
                .tag(Tab.list)
        }
    
#sourceLocation()
    }
}

import struct SwiftUITest.ContentView
import struct SwiftUITest.ExtractedView
#Preview {
    ContentView()
        .environment(ModelData())
}



