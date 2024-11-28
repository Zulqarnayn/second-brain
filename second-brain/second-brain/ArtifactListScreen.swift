//
//  ContentView.swift
//  second-brain
//
//  Created by Asif Mujtaba on 25/11/24.
//

import SwiftUI

struct ArtifactListScreen: View {
    @State private var artifacts: [Artifact] = Artifact.mockList
    
    var body: some View {
		List($artifacts) { $artifact in
			ArtifactListRowView(
				title: artifact.siteName ?? "",
				subtitle: artifact.title ?? "",
				extraInfo: artifact.createdAtFormatted,
				summary: artifact.excerpt ?? "",
				isRead: artifact.isRead,
				isFlagged: artifact.isStarred
			)
			.swipeActions(edge: .leading) {
				Button {
					artifact.isRead.toggle()
				} label: {
					Label(
						artifact.isRead ? "Unread" : "Read",
						systemImage: artifact.isRead ? "envelope.fill" : "envelope.badge.fill"
					)
				}
			}
			.swipeActions {
				Button(role: .destructive) {
					artifacts.removeAll { $0.id == artifact.id }
				} label: {
					Label("Delete", systemImage: "trash")
				}

			}
        }
        .listStyle(.plain)
        .navigationTitle("Inbox")
    }
}

#Preview {
    NavigationStack {
        ArtifactListScreen()
    }
}
