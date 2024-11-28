import Foundation
import Mockable

extension Artifact: Mockable {
    public static var mock: Artifact {
        Artifact(
            id: "mock-1",
            title: "Understanding SwiftUI Architecture",
            author: "John Doe",
            url: "https://example.com/swiftui-architecture",
            excerpt: "A comprehensive guide to building scalable SwiftUI applications...",
            notes: "Great article about MVVM pattern in SwiftUI",
            readingTime: 8,
            imageURL: "https://example.com/images/swiftui.jpg",
            siteName: "Swift Blog",
            isRead: false,
            isStarred: true,
            readableHTML: "<article>Sample HTML content</article>",
            fullText: "Full article content goes here...",
            userID: "user123",
            createdAt: Date(),
            lastUpdatedAt: Date()
        )
    }
    
    public static var mockList: [Artifact] {
        [
            Artifact(
                id: "mock-1",
                title: "SwiftUI Best Practices",
                author: "Jane Smith",
                url: "https://example.com/swiftui-practices",
                excerpt: "Learn the best practices for SwiftUI development including state management, performance optimization, and architecture patterns...",
                readingTime: 5,
                siteName: "iOS Dev Weekly",
                isStarred: true,
                createdAt: Date().addingTimeInterval(-3600 * 2) // 2 hours ago
            ),
            Artifact(
                id: "mock-2",
                title: "Combine Framework Deep Dive",
                author: "Mike Johnson",
                url: "https://example.com/combine-framework",
                excerpt: "Understanding reactive programming with Combine framework. Learn about Publishers, Subscribers, and handling asynchronous events...",
                readingTime: 12,
                siteName: "Swift by Sundell",
                isRead: true,
                createdAt: Date().addingTimeInterval(-86400) // 1 day ago
            ),
            Artifact(
                id: "mock-3",
                title: "iOS Performance Tips",
                author: "Sarah Wilson",
                url: "https://example.com/ios-performance",
                excerpt: "Optimize your iOS app performance with these proven tips and techniques. Learn about memory management, rendering optimization...",
                readingTime: 7,
                siteName: "Hacking with Swift",
                isRead: false,
                isStarred: false,
                createdAt: Date().addingTimeInterval(-86400 * 2) // 2 days ago
            ),
            Artifact(
                id: "mock-4",
                title: "Modern Concurrency in Swift",
                author: "Chris Lattner",
                url: "https://example.com/swift-concurrency",
                excerpt: "Explore async/await, actors, and structured concurrency in Swift. Learn how to write better asynchronous code...",
                readingTime: 15,
                siteName: "Swift.org",
                isStarred: true,
                createdAt: Date().addingTimeInterval(-3600 * 5) // 5 hours ago
            ),
            Artifact(
                id: "mock-5",
                title: "Core Data and SwiftUI Integration",
                author: "Paul Hudson",
                url: "https://example.com/coredata-swiftui",
                excerpt: "Master Core Data integration with SwiftUI. Learn about @FetchRequest, managed objects, and persistent containers...",
                readingTime: 10,
                siteName: "Hacking with Swift",
                isRead: true,
                createdAt: Date().addingTimeInterval(-86400 * 3) // 3 days ago
            ),
            Artifact(
                id: "mock-6",
                title: "SwiftUI Animation Techniques",
                author: "Meng To",
                url: "https://example.com/swiftui-animations",
                excerpt: "Create beautiful and smooth animations in SwiftUI. Learn about implicit animations, transitions, and custom timing curves...",
                readingTime: 8,
                siteName: "Design+Code",
                isStarred: true,
                createdAt: Date().addingTimeInterval(-3600) // 1 hour ago
            ),
            Artifact(
                id: "mock-7",
                title: "Testing in Swift",
                author: "John Sundell",
                url: "https://example.com/swift-testing",
                excerpt: "Comprehensive guide to unit testing, integration testing, and UI testing in Swift. Learn about XCTest framework...",
                readingTime: 13,
                siteName: "Swift by Sundell",
                isRead: false,
                createdAt: Date().addingTimeInterval(-86400 * 5) // 5 days ago
            ),
            Artifact(
                id: "mock-8",
                title: "SwiftUI Navigation API",
                author: "Jordan Morgan",
                url: "https://example.com/swiftui-navigation",
                excerpt: "Deep dive into SwiftUI's navigation APIs. Learn about NavigationStack, NavigationSplitView, and navigation patterns...",
                readingTime: 9,
                siteName: "Swiftjective-C",
                isStarred: false,
                createdAt: Date().addingTimeInterval(-3600 * 12) // 12 hours ago
            )
        ]
    }
} 
