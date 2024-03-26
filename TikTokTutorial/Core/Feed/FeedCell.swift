//
//  FeedCell.swift
//  TikTokTutorial
//
//  Created by Jun Gu on 3/26/24.
//

import SwiftUI
import AVKit

struct FeedCell: View {

    let post: Post
    var player: AVPlayer

    init(post: Post) {
        self.post = post
        self.player = AVPlayer(url: URL(string: post.videoUrl)!)
    }

    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])

            VStack {
                Spacer()

                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("carlos.sainz")
                            .fontWeight(.semibold)

                        Text("Rocket ship prepare for takeoff!!!")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)

                    Spacer()

                    VStack(spacing: 28) {

                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)

                        Button {

                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)

                                Text("27")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }

                        Button {

                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)

                                Text("27")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }

                        Button {

                        } label: {
                            VStack {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 22, height: 28)
                                    .foregroundStyle(.white)
                            }
                        }

                        Button {

                        } label: {
                            VStack {
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
        .onAppear() {
            print("DEBUG: Post id \(post.id)")
//            player.play()
        }
    }
}

#Preview {
    FeedCell(post: Post(id: "2", videoUrl: ""))
}
