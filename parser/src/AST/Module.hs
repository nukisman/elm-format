module AST.Module
    ( Module(..), Body(..)
    , Header(..)
    , UserImport, DefaultImport, ImportMethod(..)
    ) where

import Control.Applicative ((<$>),(<*>))
import Data.Binary
import qualified Data.Map as Map

import qualified AST.Declaration as Decl
import qualified AST.Module.Name as Name
import qualified AST.Type as Type
import qualified AST.Variable as Var
import qualified Docs.AST as Docs
import qualified Elm.Package as Package
import qualified Reporting.Annotation as A


-- MODULES


data Module = Module
    { name    :: Name.Canonical
    , path    :: FilePath
    , docs    :: A.Located (Maybe String)
    , exports :: (Var.Listing (A.Located Var.Value))
    , imports :: [UserImport]
    , body    :: [Decl.SourceDecl]
    }


data Body expr = Body
    { program   :: expr
    , fixities  :: [(Decl.Assoc, Int, String)]
    , ports     :: [String]
    }


-- HEADERS

{-| Basic info needed to identify modules and determine dependencies. -}
data Header imports = Header
    { _name :: Name.Raw
    , _docs :: A.Located (Maybe String)
    , _exports :: Var.Listing (A.Located Var.Value)
    , _imports :: imports
    }


-- IMPORTs

type UserImport = A.Located (Name.Raw, ImportMethod)


type DefaultImport = (Name.Raw, ImportMethod)


data ImportMethod = ImportMethod
    { alias :: Maybe String
    , exposedVars :: !(Var.Listing Var.Value)
    }