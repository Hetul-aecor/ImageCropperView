//
//  UIIMage+Extension.swift
//  ImageCropper
//
//  Created by Hetul Soni on 19/01/23.
//

import UIKit

extension UIImage {
    /// Crops a UIImage
    /// - Parameters:
    ///   - image: the original image before processing.
    ///   - rect: the CGRect to which the image will be cropped.
    /// - Returns: UIImage.
    func croppedImage(croppedTo rect: CGRect) -> Result<UIImage, Error> {

        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()

        let drawRect = CGRect(x: -rect.origin.x, y: -rect.origin.y, width: self.size.width, height: self.size.height)

        context?.clip(to: CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))

        self.draw(in: drawRect)

        let subImage = UIGraphicsGetImageFromCurrentImageContext()

        UIGraphicsEndImageContext()
        guard let croppedImage = subImage else {
            return .failure(ImageCropperError.failedToCrop)
        }
        return .success(croppedImage)
    }
}
