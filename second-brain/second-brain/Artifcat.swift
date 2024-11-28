//
//  Artifcat.swift
//  second-brain
//
//  Created by Asif Mujtaba on 25/11/24.
//
import Foundation
import Mockable

struct Artifact: Identifiable {
	public var id: String?
	public var title: String?
	public var author: String?
	public var url: String?
	
	// Optional metadata
	public var excerpt: String?
	public var notes: String?
	public var readingTime: Int?
	public var imageURL: String?
	public var siteName: String?
	
	// User interaction flags
	public var isRead: Bool = false
	public var isStarred: Bool = false
	
	// Potentially large text content (consider lazy loading)
	public var readableHTML: String?
	public var fullText: String?
	
	// Ownership and Timestamps
	public var userID: String?
	public var createdAt: Date = Date()
	public var lastUpdatedAt: Date?
}

