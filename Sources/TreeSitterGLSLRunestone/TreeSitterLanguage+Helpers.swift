//
//  TreeSitterLanguage+Helpers.swift
//  MiniTreeSitterLanguages
//
//  Created by Miguel de Icaza on 12/17/24.
//

import Runestone
import TreeSitterGLSL
import TreeSitterGLSLQueries

public extension TreeSitterLanguage {
    static var glsl: TreeSitterLanguage {
        let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterGLSLQueries.Query.highlightsFileURL)
        return TreeSitterLanguage(tree_sitter_glsl(), highlightsQuery: highlightsQuery, injectionsQuery: nil, indentationScopes: .glsl)
    }
}
