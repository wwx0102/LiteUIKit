import SwiftUI

public struct CardStyle: ViewModifier {
    public init() {}
    
    public func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.white)
            .cornerRadius(LiteRadius.medium)
            .shadow(
                color: Color.black.opacity(0.1),
                radius: 5,
                x: 0,
                y: 2
            )
    }
} 