import SwiftUI

#if os(iOS)
public enum LiteUIKit {
    public static var version: String {
        return "1.0.0"
    }
    
    public static var isPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
} 
#endif 