private import codeql.swift.generated.expr.CaptureListExpr
private import codeql.swift.elements.pattern.NamedPattern

module Impl {
  class CaptureListExpr extends Generated::CaptureListExpr {
    override string toStringImpl() { result = this.getClosureBody().toStringImpl() }

    override VarDecl getVariable(int index) {
      // all capture binding declarations consist of a single named pattern
      result = this.getBindingDecl(index).getPattern(0).(NamedPattern).getVarDecl()
    }
  }
}
