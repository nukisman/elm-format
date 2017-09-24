module ElmFormat.Version (asString, experimental) where

import qualified Build_elm_format_short


asString :: String
asString =
    Build_elm_format_short.gitDescribe


experimental :: Maybe String
experimental =
    Just "https://goo.gl/forms/kLdTN1yikfOI8ZuA3"
