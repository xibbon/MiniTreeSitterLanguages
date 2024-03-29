import Runestone

public extension TreeSitterIndentationScopes {
    static var gdscript: TreeSitterIndentationScopes {
        return TreeSitterIndentationScopes(
            indent: [
	    "function_definition",
	    "constructor_definition",
	    "for_statement",
	    "while_statement",
	    "if_statement",
	    "match_statement",
	    "pattern_section",
	    "class_definition",
	    "setget",
	    "match_body",
	    "set_body",
	    "get_body"
            ],
	    whitespaceDenotesBlocks: true)
    }
}
