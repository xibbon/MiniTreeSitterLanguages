//
//  TreeSitterIndentationScopes+Helpers.swift
//  MiniTreeSitterLanguages
//
//  Created by Miguel de Icaza on 12/17/24.
//

import Runestone

public extension TreeSitterIndentationScopes {
    static var glsl: TreeSitterIndentationScopes {
        return TreeSitterIndentationScopes(
            indent: [
                "compound_statement",
                "parameter_list",
                "initializer_list"
            ],
            outdent: ["}"])
    }
}
