

import UIKit

//функции для изменения размера
extension UIFont {
    enum Roboto {
        enum black {
            static func size(_ size: CGFloat) -> UIFont {
                return UIFont(name: UIFont.Constants.Roboto.black, size: size)!
            }
        }
        enum blackItalic {
            static func size(_ size: CGFloat) -> UIFont {
                return UIFont(name: UIFont.Constants.Roboto.blackItalic, size: size)!
            }
        }
//        enum bold {
//            static func size(_ size: CGFloat) -> UIFont {
//                return (UIFont(name: UIFont.Constants.Roboto.bold, size: size))!
//            }
//        }
        enum boldItalic {
            static func size(_ size: CGFloat) -> UIFont {
                return UIFont(name: UIFont.Constants.Roboto.boldItalic, size: size)!
            }
        }
        enum italic {
            static func size(_ size: CGFloat) -> UIFont {
                return UIFont(name: UIFont.Constants.Roboto.italic, size: size)!
            }
        }
        enum light {
            static func size(_ size: CGFloat) -> UIFont {
                return UIFont(name: UIFont.Constants.Roboto.light, size: size)!
            }
        }
        enum lightItalic {
            static func size(_ size: CGFloat) -> UIFont {
                return UIFont(name: UIFont.Constants.Roboto.lightItalic, size: size)!
            }
        }
        enum medium {
            static func size(_ size: CGFloat) -> UIFont {
                return UIFont(name: UIFont.Constants.Roboto.medium, size: size)!
            }
        }
        enum mediumItalic {
            static func size(_ size: CGFloat) -> UIFont {
                return UIFont(name: UIFont.Constants.Roboto.mediumItalic, size: size)!
            }
        }
        enum regular {
            static func size(_ size: CGFloat) -> UIFont {
                return UIFont(name: UIFont.Constants.Roboto.regular, size: size)!
            }
        }
        enum thim {
            static func size(_ size: CGFloat) -> UIFont {
                return UIFont(name: UIFont.Constants.Roboto.thin, size: size)!
            }
        }
        enum thinItalic {
            static func size(_ size: CGFloat) -> UIFont {
                return UIFont(name: UIFont.Constants.Roboto.thin, size: size)!
            }
        }
    }
    
}

//шрифты Робото
private extension UIFont {
    enum Constants {
        enum Roboto {
            static let black = "Roboto-Black"
            static let blackItalic = "Roboto-BlackItalic"
            static let bold = "Roboto-Bold"
            static let boldItalic = "Roboto-BoldItalic"
            static let italic = "Roboto-Italic"
            static let light = "Roboto-Light"
            static let lightItalic = "Roboto-LightItalic"
            static let medium = "Roboto-Medium"
            static let mediumItalic = "Roboto-MediumItalic"
            static let regular = "Roboto-Regular"
            static let thin = "Roboto-Thin"
            static let thinItalic = "Roboto-ThinItalic"
            
        }
    }
}
