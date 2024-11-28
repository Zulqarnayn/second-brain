import SwiftUI

struct ArtifactListRowView: View {
//	let artifact: Artifact
	
	var title: String
	var subtitle: String
	var extraInfo: String
	var summary: String
	var isRead: Bool = false
	var isFlagged: Bool = false
	
}

extension ArtifactListRowView {
    
    var body: some View {
        HStack(alignment: .top) {
            Circle()
                .fill(.blue)
                .frame(width: 10, height: 10)
                .padding(.top, 9)
				.opacity(isRead ? 0 : 1)
            
            VStack(alignment: .leading) {
                HStack {
					Text(title)
                        .font(.headline)
                    Spacer()
					Text(extraInfo)
                        .foregroundStyle(.secondary)
                    Image(systemName: "chevron.forward")
                        .foregroundStyle(.secondary)
                }
                HStack {
					Text(subtitle)
                        .lineLimit(1)
                        .font(.subheadline)
                    Spacer()
					if isFlagged {
						Image(systemName: "flag.fill")
							.foregroundStyle(.secondary)
					} else {
						/*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
					}
                }
				Text(summary)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }
        }
    }
}

#Preview {
    NavigationStack {
        List {
			ArtifactListRowView(
				title: "Title",
				subtitle: "subtitle",
				extraInfo: "extraInfo",
				summary: "Summary",
				isRead: true,
				isFlagged: true
			)
			
			ArtifactListRowView(
				title: "Title 2",
				subtitle: "subtitle 2",
				extraInfo: "extraInfo",
				summary: "Summary",
				isRead: false,
				isFlagged: true
			)
        }
		.listStyle(.plain)
    }
} 
