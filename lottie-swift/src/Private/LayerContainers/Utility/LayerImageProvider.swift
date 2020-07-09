//
//  LayerImageProvider.swift
//  lottie-swift
//
//  Created by Brandon Withrow on 1/25/19.
//

import Foundation

/// Connects a LottieImageProvider to a group of image layers
class LayerImageProvider {
  
  var imageProvider: AnimationImageProvider {
    didSet {
      reloadImages()
    }
  }
  
  fileprivate(set) var imageLayers: [ImageCompositionLayer]
  let imageAssets: [String : ImageAsset]
  
  init(imageProvider: AnimationImageProvider, assets: [String : ImageAsset]?) {
    self.imageProvider = imageProvider
    self.imageLayers = [ImageCompositionLayer]()
    if let assets = assets {
      self.imageAssets = assets
    } else {
      self.imageAssets = [:]
    }
    reloadImages()
  }
  
  func addImageLayers(_ layers: [ImageCompositionLayer]) {
    for layer in layers {
      if imageAssets[layer.imageReferenceID] != nil {
        /// Found a linking asset in our asset library. Add layer
        imageLayers.append(layer)
      }
    }
  }
  
  func reloadImages() {
    for imageLayer in imageLayers {
      if let asset = imageAssets[imageLayer.imageReferenceID] {

        imageLayer.image = imageProvider.imageForAsset(asset: asset)
        let allAssets = ["1.png", "boost5.png", "veraryuxkadin.png", "homerkekdx1.png", "erkckck1.png", "home1kadinnorm1.png", "kdnshc21.png", "boostlkadin1.png", "dsfgsdfgsccccc1.png", "homeboosterkk1.png", "ascadcxsxs1.png", "karisikkoy1.png", "sxkodmckd1.png", "karisikboosr1.png", "krskkcnb1.png", "esleskadin2.png", "eslkdnxa2.png", "eslesaraerkek2.png", "xxeslsaz2.png", "karisikesles2.png", "zzzkrskc2.png", "esleskadinboost2.png", "bbbeslcjfv2.png", "cccesleserkekboosts2.png", "aaacdcndcdxzz2.png", "eslskrskboost2.png", "llllllxa2.png"]
        
        let allAssets2 = ["foto_1.png"]
        let allAssets3 = ["foto_2.png"]
        let allAssets4 = ["foto_3.png"]

        if allAssets.contains(asset.name) {
            print("\(asset.name), 1.png'yi yakaladım")
          let nsDocumentDirectory = FileManager.SearchPathDirectory.documentDirectory
            let nsUserDomainMask    = FileManager.SearchPathDomainMask.userDomainMask
            let paths               = NSSearchPathForDirectoriesInDomains(nsDocumentDirectory, nsUserDomainMask, true)
            if let dirPath          = paths.first
            {
               let imageURL = URL(fileURLWithPath: dirPath).appendingPathComponent("1.png")
               let image    = UIImage(contentsOfFile: imageURL.path)
                imageLayer.image = image?.cgImage

               // Do whatever you want with the image
            }
            
        }
        
        if allAssets2.contains(asset.name) {
            print("\(asset.name), foto_1.png'yi yakaladım")
          let nsDocumentDirectory = FileManager.SearchPathDirectory.documentDirectory
            let nsUserDomainMask    = FileManager.SearchPathDomainMask.userDomainMask
            let paths               = NSSearchPathForDirectoriesInDomains(nsDocumentDirectory, nsUserDomainMask, true)
            if let dirPath          = paths.first
            {
               let imageURL = URL(fileURLWithPath: dirPath).appendingPathComponent("foto_1.png")
               let image    = UIImage(contentsOfFile: imageURL.path)
                imageLayer.image = image?.cgImage

               // Do whatever you want with the image
            }
            
        }
        
        if allAssets3.contains(asset.name) {
             print("\(asset.name), foto_2.png'yi yakaladım")
           let nsDocumentDirectory = FileManager.SearchPathDirectory.documentDirectory
             let nsUserDomainMask    = FileManager.SearchPathDomainMask.userDomainMask
             let paths               = NSSearchPathForDirectoriesInDomains(nsDocumentDirectory, nsUserDomainMask, true)
             if let dirPath          = paths.first
             {
                let imageURL = URL(fileURLWithPath: dirPath).appendingPathComponent("foto_2.png")
                let image    = UIImage(contentsOfFile: imageURL.path)
                 imageLayer.image = image?.cgImage

                // Do whatever you want with the image
             }
             
         }
        
        if allAssets4.contains(asset.name) {
             print("\(asset.name), foto_3.png'yi yakaladım")
           let nsDocumentDirectory = FileManager.SearchPathDirectory.documentDirectory
             let nsUserDomainMask    = FileManager.SearchPathDomainMask.userDomainMask
             let paths               = NSSearchPathForDirectoriesInDomains(nsDocumentDirectory, nsUserDomainMask, true)
             if let dirPath          = paths.first
             {
                let imageURL = URL(fileURLWithPath: dirPath).appendingPathComponent("foto_3.png")
                let image    = UIImage(contentsOfFile: imageURL.path)
                 imageLayer.image = image?.cgImage

                // Do whatever you want with the image
             }
             
         }
        
        
      }
    }
  }
}
