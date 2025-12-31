.class public Lorg/apache/velocity/runtime/parser/node/IndentationFixer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/parser/node/ParserVisitor;


# instance fields
.field protected extraIndentation:Ljava/lang/String;

.field protected fix:Ljava/util/regex/Pattern;

.field protected parentIndentation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->fix:Ljava/util/regex/Pattern;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->parentIndentation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fillExtraIndentation(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->parentIndentation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\\s+)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->parentIndentation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->fix:Ljava/util/regex/Pattern;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTAddNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTAndNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTAssignment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTBlock;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    invoke-virtual {p1, p0, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 6
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->fillExtraIndentation(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->fix:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->parentIndentation:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->getDirectiveType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, p0, v1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTDirectiveAssign;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTDivNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTEQNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTElseIfStatement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1, p0, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTElseStatement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1, p0, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTEscape;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTEscapedDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTExpression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTFalse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTFloatingPointLiteral;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTGENode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTGTNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 20
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->fillExtraIndentation(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->fix:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->parentIndentation:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIndex;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIntegerLiteral;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTIntegerRange;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTLENode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTLTNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTModNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTMulNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTNENode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTNotNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTObjectArray;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTOrNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTReference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->fillExtraIndentation(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->fix:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->parentIndentation:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->setPrefix(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTSubtractNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTText;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/ASTText;->getCtext()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->fillExtraIndentation(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->extraIndentation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->fix:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;->parentIndentation:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTText;->setCtext(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTTextblock;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTTrue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTWord;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/ASTprocess;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    const/4 p1, 0x0

    return-object p1
.end method

.method public visit(Lorg/apache/velocity/runtime/parser/node/SimpleNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    const/4 p1, 0x0

    return-object p1
.end method
