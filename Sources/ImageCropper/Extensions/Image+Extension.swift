//
//  Image+Extension.swift
//  ImageCropper
//
//  Created by Hetul Soni on 17/01/23.
//

import SwiftUI

extension Image {
    func imageDisplayStyle() -> some View {
        return self
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .aspectRatio(contentMode: .fit)
            .clipShape(Rectangle())
    }
}
