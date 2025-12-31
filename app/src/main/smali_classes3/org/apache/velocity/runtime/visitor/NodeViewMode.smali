.class public Lorg/apache/velocity/runtime/visitor/NodeViewMode;
.super Lorg/apache/velocity/runtime/visitor/BaseVisitor;
.source "SourceFile"


# instance fields
.field private indent:I

.field private showTokens:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/visitor/BaseVisitor;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->indent:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showTokens:Z

    return-void
.end method

.method private indentString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->indent:I

    if-ge v1, v2, :cond_0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showTokens:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v0

    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/Token;->specialToken:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const-string v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->specialToken:Lorg/apache/velocity/runtime/parser/Token;

    iget-object v1, v1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->indentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->indent:I

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->indent:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->indent:I

    return-object p1
.end method


# virtual methods
.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTAddNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTAndNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTAssignment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTBlock;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTDivNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTEQNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTElseIfStatement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTElseStatement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTEscape;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTEscapedDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTExpression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTFalse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTFloatingPointLiteral;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTGENode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTGTNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIntegerLiteral;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIntegerRange;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTLENode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTLTNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTModNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTMulNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTNENode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTNotNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTObjectArray;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTOrNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTReference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTSubtractNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTText;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTTrue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTWord;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTprocess;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/SimpleNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/visitor/NodeViewMode;->showNode(Lorg/apache/velocity/runtime/parser/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
