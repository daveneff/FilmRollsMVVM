//
//  FilmRoll.swift
//  FilmRollsMVVM
//
//  Created by David Neff on 12/18/17.
//  Copyright © 2017 Dave Neff. All rights reserved.
//

import Foundation
import RealmSwift

final class FilmRoll: Object {
  
  @objc dynamic var id: String = UUID().uuidString
  @objc dynamic var name: String = ""
  @objc dynamic var speed: Int = 0
  @objc dynamic var exposureCount: Int = 0
  @objc dynamic var type: String = ""
  @objc dynamic var dateCreated: Date = Date()
  
  convenience init(name: String,
                   speed: Int,
                   exposureCount: Int,
                   type: String) {
    self.init()
    self.name = name
    self.speed = speed
    self.exposureCount = exposureCount
    self.type = type
    self.dateCreated = Date()
  }
  
  override class func primaryKey() -> String {
    return "id"
  }
}
