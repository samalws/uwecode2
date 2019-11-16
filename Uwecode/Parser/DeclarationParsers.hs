module Uwecode.Parser.DeclarationParsers where

import Uwecode.Parser.Parser
import Uwecode.Parser.CharsAndStrings
import Uwecode.Parser.ExpressionParsers
import Uwecode.AST

declaration :: Parser DeclarationAST
declaration = equalsDeclaration

equalsDeclaration :: Parser DeclarationAST
equalsDeclaration = separatedBy word equalsToken expression Equals