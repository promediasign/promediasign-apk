.class public Lorg/apache/velocity/runtime/parser/node/ASTAddNode;
.super Lorg/apache/velocity/runtime/parser/node/ASTMathNode;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    return-void
.end method


# virtual methods
.method public getLiteralOperator()Ljava/lang/String;
    .locals 1

    const-string v0, "+"

    return-object v0
.end method

.method public handleSpecial(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 2

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lorg/apache/velocity/util/DuckType;->asString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/apache/velocity/util/DuckType;->asString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v0, p1

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p3}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->literal()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v1, p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->literal()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public perform(Ljava/lang/Number;Ljava/lang/Number;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Number;
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->add(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
