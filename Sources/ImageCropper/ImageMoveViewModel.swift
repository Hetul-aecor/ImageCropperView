//
//  ImageMoveViewModel.swift
//  CommunageApp
//
//  Created by Hetul Soni on 17/01/23.
//

import SwiftUI

public class ImageMoveViewModel: ObservableObject {
    
    @Published var image = Image("")
    @Published var originalImage: UIImage?
    @Published var scale: CGFloat = 1.0
    @Published var xWidth: CGFloat = 0.0
    @Published var yHeight: CGFloat = 0.0
    
    public init(image: Image = Image(""), originalImage: UIImage? = nil, scale: CGFloat, xWidth: CGFloat, yHeight: CGFloat) {
        self.image = image
        self.originalImage = originalImage
        self.scale = scale
        self.xWidth = xWidth
        self.yHeight = yHeight
    }
    
    var position: CGSize {
        get {
            return CGSize(width: xWidth, height: yHeight)
        }
    }
    
    func updateImageAttributes(_ imageAttributes: ImageAttributes) {
        imageAttributes.image = image
        imageAttributes.originalImage = originalImage
        imageAttributes.scale = scale
        imageAttributes.xWidth = position.width
        imageAttributes.yHeight = position.height
    }
    
    func loadImageAttributes(_ imageAttributes: ImageAttributes) {
        self.image = imageAttributes.image
        self.originalImage = imageAttributes.originalImage
        self.scale = imageAttributes.scale
        self.xWidth = imageAttributes.position.width
        self.yHeight = imageAttributes.position.height
    }
}
