//
//  ContentView.swift
//  second-brain
//
//  Created by Asif Mujtaba on 25/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		List(0..<8) { _ in
			HStack(alignment: .top) {
				Circle()
					.fill(.blue)
					.frame(width: 10, height: 10)
					.padding(.top, 9)
				
				VStack(alignment: .leading) {
					HStack {
						Text("peterfriese.dev")
							.font(.headline)
						Spacer()
						Text("22.10.2024")
							.foregroundStyle(.secondary)
						Image(systemName: "chevron.forward")
							.foregroundStyle(.secondary)
					}
					HStack {
						Text("Title Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
							.lineLimit(1)
							.font(.subheadline)
						Spacer()
						Image(systemName: "flag.fill")
							.foregroundStyle(.secondary)
					}
					Text("Summary Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book")
						.font(.subheadline)
						.foregroundStyle(.secondary)
						.lineLimit(2)
				}
			}
		}
		.listStyle(.plain)
		.navigationTitle("Inbox")
    }
}

#Preview {
	NavigationStack {
		ContentView()
	}
}
