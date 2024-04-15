@_private(sourceFile: "ProfileSummary.swift") import SwiftUITest
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ProfileSummary {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/diavision/Documents/ios/TestProjects/SwiftUITest/SwiftUITest/Views/Profiles/ProfileSummary.swift", line: 16)
        ScrollView {
            VStack(alignment: .leading, spacing: __designTimeInteger("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: 10)) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                
                Text("Notifications: \(profile.prefersNotifications ? __designTimeString("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[1].value.arg[0].value.then", fallback: "On"): __designTimeString("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[1].value.arg[0].value.else", fallback: "Off") )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text(__designTimeString("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0]", fallback: "Goal Date: ")) + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text(__designTimeString("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[5].arg[1].value.[0].arg[0].value", fallback: "Completed Badges"))
                        .font(.headline)
                    
                    ScrollView(.horizontal){
                        HStack{
                            HikeBadge(name: __designTimeString("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[5].arg[1].value.[1].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "First Hike"))
                            HikeBadge(name: __designTimeString("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[5].arg[1].value.[1].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "Earth Day"))
                                .hueRotation(Angle(degrees: __designTimeInteger("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[5].arg[1].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 90)))
                            HikeBadge(name: __designTimeString("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[5].arg[1].value.[1].arg[1].value.[0].arg[0].value.[2].arg[0].value", fallback: "Tenth Hike"))
                                .grayscale(__designTimeFloat("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[5].arg[1].value.[1].arg[1].value.[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 0.5))
                                .hueRotation(Angle(degrees: __designTimeInteger("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[5].arg[1].value.[1].arg[1].value.[0].arg[0].value.[2].modifier[1].arg[0].value.arg[0].value", fallback: 45)))
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading){
                    Text(__designTimeString("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[7].arg[1].value.[0].arg[0].value", fallback: "Recent Hikes"))
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[__designTimeInteger("#86814.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[7].arg[1].value.[1].arg[0].value.[0].value", fallback: 0)])
                }
            }
        }
    
#sourceLocation()
    }
}

import struct SwiftUITest.ProfileSummary
#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}



