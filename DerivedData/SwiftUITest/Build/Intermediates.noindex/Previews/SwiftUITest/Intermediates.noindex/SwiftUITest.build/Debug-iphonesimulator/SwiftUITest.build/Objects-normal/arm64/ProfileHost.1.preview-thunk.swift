@_private(sourceFile: "ProfileHost.swift") import SwiftUITest
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ProfileHost {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/Profiles/ProfileHost.swift", line: 16)
        VStack(alignment: .leading, spacing: __designTimeInteger("#86350.[1].[3].property.[0].[0].arg[1].value", fallback: 20)) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button(__designTimeString("#86350.[1].[3].property.[0].[0].arg[2].value.[0].arg[0].value.[0].[0].[0].arg[0].value", fallback: "Cancel"), role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear{
                        draftProfile = modelData.profile
                    }
                    .onDisappear{
                        modelData.profile = draftProfile
                    }
            }
        }
        .padding()
    
#sourceLocation()
    }
}

import struct SwiftUITest.ProfileHost
#Preview {
    ProfileHost()
        .environment(ModelData())
}



