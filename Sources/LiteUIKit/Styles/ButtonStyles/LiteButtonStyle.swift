import SwiftUI

public struct LiteButtonStyle: ButtonStyle {
    public init() {}
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, LiteSpacing.medium)
            .padding(.vertical, LiteSpacing.small)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(LiteRadius.medium)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut, value: configuration.isPressed)
    }
} 