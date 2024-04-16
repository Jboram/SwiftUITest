@_private(sourceFile: "CategoryHome.swift") import SwiftUITest
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CategoryHome {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/Categories/CategoryHome.swift", line: 15)
        NavigationSplitView {
            List {
//                modelData.features[0].image
//                    .resizable()
//                    .scaledToFill()
//                    .frame(height: 200)
//                    .clipped()
//                    .listRowInsets(EdgeInsets())
                PageView(pages: modelData.features.map{
                    FeatureCard(landmark: $0)
                }).listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self){
                    key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle(__designTimeString("#58006.[1].[2].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: "Featured"))
                .toolbar{
                    Button{
                        showingProfile.toggle()
                    } label: {
                        Label(__designTimeString("#58006.[1].[2].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "User Profile"), systemImage: __designTimeString("#58006.[1].[2].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[1].value", fallback: "person.crop.circle"))
                    }
                }
                .sheet(isPresented: $showingProfile) {
                    ProfileHost()
                        .environment(modelData)
                }
        } detail: {
            Text(__designTimeString("#58006.[1].[2].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "Select a Landmark"))
        }
    
#sourceLocation()
    }
}

import struct SwiftUITest.CategoryHome
#Preview {
    CategoryHome()
        .environment(ModelData())
}



