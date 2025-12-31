.class public abstract Lorg/apache/velocity/runtime/visitor/BaseVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/parser/node/ParserVisitor;


# instance fields
.field protected context:Lorg/apache/velocity/context/InternalContextAdapter;

.field protected writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setContext(Lorg/apache/velocity/context/InternalContextAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/visitor/BaseVisitor;->context:Lorg/apache/velocity/context/InternalContextAdapter;

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/visitor/BaseVisitor;->writer:Ljava/io/Writer;

    return-void
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTAddNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTAndNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTAssignment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTBlock;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTDirectiveAssign;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTDivNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTEQNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTElseIfStatement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTElseStatement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTEscape;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTEscapedDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTExpression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTFalse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTFloatingPointLiteral;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTGENode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTGTNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIndex;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIntegerLiteral;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIntegerRange;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTLENode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTLTNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTModNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTMulNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTNENode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTNotNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTObjectArray;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTOrNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTReference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTSubtractNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTText;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTTextblock;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTTrue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTWord;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTprocess;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/SimpleNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
