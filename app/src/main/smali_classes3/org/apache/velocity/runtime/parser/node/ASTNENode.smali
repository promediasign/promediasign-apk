.class public Lorg/apache/velocity/runtime/parser/node/ASTNENode;
.super Lorg/apache/velocity/runtime/parser/node/ASTEQNode;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/ASTEQNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTEQNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/velocity/runtime/parser/node/ASTComparisonNode;->evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
