import Foundation

extension Artifact {
    /// Date formatting options for artifacts
    enum DateFormat {
        /// Returns a relative date format (e.g., "2 hours ago", "yesterday", etc.)
        static let relative: Date.RelativeFormatStyle = .relative(
            presentation: .named,
            unitsStyle: .wide
        )
        
        /// Returns a medium date format (e.g., "Nov 25, 2024")
        static let medium: Date.FormatStyle = .dateTime
            .month(.abbreviated)
            .day()
            .year()
        
        /// Returns a full date format (e.g., "November 25, 2024 at 2:30 PM")
        static let full: Date.FormatStyle = .dateTime
            .month(.wide)
            .day()
            .year()
            .hour()
            .minute()
    }
    
    var createdAtFormatted: String {
        createdAt.formatted(DateFormat.medium)
    }
    
    var lastUpdatedAtFormatted: String? {
        lastUpdatedAt?.formatted(DateFormat.medium)
    }
    
    var createdAtRelative: String {
        createdAt.formatted(DateFormat.relative)
    }
    
    var lastUpdatedAtRelative: String? {
        lastUpdatedAt?.formatted(DateFormat.relative)
    }
    
    var createdAtFull: String {
        createdAt.formatted(DateFormat.full)
    }
    
    var lastUpdatedAtFull: String? {
        lastUpdatedAt?.formatted(DateFormat.full)
    }
} 