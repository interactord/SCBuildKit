//
// Created by Scott Moon on 2019-05-07.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public struct ButtonBuilder: Builder, CALayerUsable, BackgroundColorable, ConstraintUsable, ViewUsable, UIControllUsable {
  public var targetView: UIButton

  public init(type: UIButton.ButtonType? = nil) {
    targetView = UIButton(type: type ?? .system)
  }

  public func setTitle(_ title: String, state: UIControl.State = .normal) -> ButtonBuilder {
    targetView.setTitle(title, for: state)
    return self
  }

  public func setImage(_ image: UIImage?, state: UIControl.State = .normal) -> ButtonBuilder {
    targetView.setImage(image, for: state)
    return self
  }

  public func setBackgroundImage(_ image: UIImage?, state: UIControl.State = .normal) -> ButtonBuilder {
    targetView.setBackgroundImage(image, for: state)
    return self
  }

  public func setFont(_ font: UIFont) -> ButtonBuilder {
    targetView.titleLabel?.font = font
    return self
  }

  public func setTitleColor(_ color: UIColor, state: UIControl.State? = nil) -> ButtonBuilder {
    targetView.setTitleColor(color, for: state ?? .normal)
    return self
  }

  public func setContentEdgeInsets(_ padding: UIEdgeInsets) -> ButtonBuilder {
    targetView.contentEdgeInsets = padding
    return self
  }

  public func setWidthAnchorSizeToFit() -> ButtonBuilder {
    targetView.translatesAutoresizingMaskIntoConstraints = false
    targetView.sizeToFit()
    targetView.widthAnchor.constraint(equalToConstant: targetView.frame.width).isActive = true
    return self
  }

}
