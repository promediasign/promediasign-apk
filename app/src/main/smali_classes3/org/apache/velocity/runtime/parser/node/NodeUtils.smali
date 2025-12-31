.class public Lorg/apache/velocity/runtime/parser/node/NodeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixIndentation(Lorg/apache/velocity/runtime/parser/node/SimpleNode;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;

    invoke-direct {v0, p1}, Lorg/apache/velocity/runtime/parser/node/IndentationFixer;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSpecialText(Lorg/apache/velocity/runtime/parser/Token;)Ljava/lang/StringBuilder;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/velocity/runtime/parser/Token;->specialToken:Lorg/apache/velocity/runtime/parser/Token;

    :goto_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Token;->specialToken:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v1, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz p0, :cond_8

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    const/16 v7, 0x24

    if-eq v5, v6, :cond_1

    if-ne v5, v7, :cond_2

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v6, 0x5c

    const/4 v8, 0x1

    if-ne v5, v6, :cond_6

    move v9, v4

    const/4 v5, 0x1

    const/4 v10, 0x0

    :goto_3
    if-eqz v5, :cond_5

    if-ge v9, v2, :cond_5

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v6, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    if-ne v11, v7, :cond_4

    const/4 v10, 0x1

    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v9

    :cond_6
    add-int/2addr v4, v8

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_1

    :cond_8
    return-object v0
.end method

.method public static tokenLiteral(Lorg/apache/velocity/runtime/parser/Token;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/Token;->specialToken:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/NodeUtils;->getSpecialText(Lorg/apache/velocity/runtime/parser/Token;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object p0, p0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    if-lez v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    iget-object p0, p0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    return-object p0
.end method
