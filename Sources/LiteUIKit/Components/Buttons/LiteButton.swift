import SwiftUI

public struct LiteButton<Label: View>: View {
    private let action: () -> Void
    private let label: Label
    
    public init(
        action: @escaping () -> Void,
        @ViewBuilder label: () -> Label
    ) {
        self.action = action
        self.label = label()
    }
    
    public var body: some View {
        Button(action: action) {
            label
        }
        .buttonStyle(LiteButtonStyle())
    }
}

#if DEBUG
struct LiteButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: LiteSpacing.medium) {
            LiteButton(action: {}) {
                Text("基础按钮")
            }
            
            LiteButton(action: {}) {
                HStack {
                    Image(systemName: "star.fill")
                    Text("带图标的按钮")
                }
            }
        }
        .padding()
    }
}
#endif 