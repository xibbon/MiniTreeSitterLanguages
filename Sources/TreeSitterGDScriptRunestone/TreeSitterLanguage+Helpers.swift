import Runestone
import TreeSitterGDScript
import TreeSitterGDScriptQueries

public extension TreeSitterLanguage {
    static var gdscript: TreeSitterLanguage {
        let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterGDScriptQueries.Query.highlightsFileURL)
        let injectionsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterGDScriptQueries.Query.injectionsFileURL)
        return TreeSitterLanguage(tree_sitter_gdscript(), highlightsQuery: highlightsQuery, injectionsQuery: injectionsQuery, indentationScopes: .gdscript)
    }
}
