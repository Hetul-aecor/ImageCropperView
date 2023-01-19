//
//  ImageAttributes.swift
//  ImageCropper
//
//  Created by Hetul Soni on 17/01/23.
//

import SwiftUI

public class ImageAttributes: ObservableObject {
    
    ///Cropped and / or scaled image take from originalImage
    @Published public var image: Image
    
    ///The original image selected before cropping or scaling
    @Published public var originalImage: UIImage?
    
    ///The cropped image as a UIImage for easier persistence in applcations.
    @Published public var croppedImage: UIImage?
    
    ///The magnification of the cropped image
    @Published public var scale: CGFloat
    
    ///Used to determine the horizontal position or x-offset of the original image in the "viewfinder"
    @Published public var xWidth: CGFloat
    
    ///Used to determine the vertical position or y-offset of the original image in the "viewfinder"
    @Published public var yHeight: CGFloat
    
    ///A CGSize computed from xWidth and yHeight.
    public var position: CGSize {
        get {
            return CGSize(width: xWidth, height: yHeight)
        }
    }

    ///Used to create an ImageAssets object from properties which are for example stored in @AppStorage.
    public init(originalImage: UIImage, croppedImage: UIImage? = nil, scale: CGFloat, xWidth: CGFloat, yHeight: CGFloat) {
        self.originalImage = originalImage
        self.image = Image(uiImage: originalImage)
        self.croppedImage = croppedImage
        self.scale = scale
        self.xWidth = xWidth
        self.yHeight = yHeight
    }
    
    ///Allows ImageAttributes to be configured with an image from the Asset Catalogue.
    public init(withImage name: String) {
        self.image = Image(name)
        self.scale = 15.0
        self.xWidth = 1.0
        self.yHeight = 1.0
        
    }
}
