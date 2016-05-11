//
//  Gif.swift
//  wegif
//
//  Created by Remi Robert on 10/05/16.
//  Copyright © 2016 Remi Robert. All rights reserved.
//

import UIKit

class Gif {

    var videoUrl: String?
    var previewUrl: String?
    var originalUrl: String?
    
    init?(json: JSON?) {
        guard let json = json else { return nil }
        guard let images = json["images"] as? JSON,
            let downsized = images["fixed_width_small"] as? JSON,
            let preview = images["fixed_height_small"] as? JSON,
            let original = images["original"] as? JSON else {
            return nil
        }
        self.videoUrl = original["mp4"] as? String
        self.originalUrl = preview["url"] as? String
        self.previewUrl = downsized["url"] as? String
    }
    
    static func initGifs(json: JSON?) -> [Gif] {
        guard let json = json else { return [] }
        guard let data = json["data"] as? [JSON] else {
            return []
        }
        return data.flatMap { (json: JSON) -> Gif? in
            return Gif(json: json)
        }
    }
}
