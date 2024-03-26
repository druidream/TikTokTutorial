//
//  ProfileHeaderView.swift
//  TikTokTutorial
//
//  Created by Jun Gu on 3/26/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                // profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))

                // username
                Text("@lewis.hamilton")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }

            // stats view
            HStack(spacing: 16) {
                UserStatView(value: 5, title: "Following")
                UserStatView(value: 1, title: "Follower")
                UserStatView(value: 7, title: "Likes")
            }

            // action button
            Button {

            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }

            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}
