import SwiftUI

public extension View {
    func liteCard() -> some View {
        modifier(CardStyle())
    }
    
    func liteShadow(radius: CGFloat = 5) -> some View {
        self.shadow(
            color: Color.black.opacity(0.1),
            radius: radius,
            x: 0,
            y: 2
        )
    }
    
    func liteRounded(_ radius: CGFloat = LiteRadius.medium) -> some View {
        self.cornerRadius(radius)
    }
} 