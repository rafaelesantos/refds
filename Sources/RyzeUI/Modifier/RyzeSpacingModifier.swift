//
//  RyzeSpacingModifier.swift
//  Ryze
//
//  Created by Rafael Escaleira on 26/04/25.
//

import SwiftUI

struct RyzeSpacingModifier: ViewModifier {
    @Environment(\.ryzeTheme) private var theme
    private let edges: Edge.Set
    private let spacing: RyzeSpacing
    
    init(
        edges: Edge.Set,
        spacing: RyzeSpacing
    ) {
        self.edges = edges
        self.spacing = spacing
    }
    
    func body(content: Content) -> some View {
        content.padding(
            edges,
            spacing.rawValue(for: theme.spacing)
        )
    }
}
