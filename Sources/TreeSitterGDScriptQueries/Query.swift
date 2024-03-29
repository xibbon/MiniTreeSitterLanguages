import Foundation

public enum Query {
    public static var highlightsFileURL: URL {
        return url(named: "highlights")
    }

    public static var localsFileURL: URL {
        return url(named: "locals")
    }

    public static var injectionsFileURL: URL {
        return url(named: "injections")
    }

    public static var indentsFileURL: URL {
        return url(named: "indents")
    }

    public static var foldsFileURL: URL {
        return url(named: "folds")
    }
}

private extension Query {
    static func url(named filename: String) -> URL {
        return Bundle.module.url(forResource: filename, withExtension: "scm")!
    }
}
