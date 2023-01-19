//
//  ImageCropperError.swift
//  ImageCropper
//
//  Created by Hetul Soni on 19/01/23.
//

import Foundation

public enum ImageCropperError: Error {
    case noImageToCrop
    case failedToCrop
}

extension ImageCropperError {
    public var errorDescription: String {
        switch self {
        case .noImageToCrop:
            return "There is no image to crop."
        case .failedToCrop:
            return "Failed to crop the image."
        }
    }
}
