.class public Lorg/apache/velocity/runtime/parser/node/ASTMulNode;
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

    const-string v0, "*"

    return-object v0
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p1
.end method

.method public perform(Ljava/lang/Number;Ljava/lang/Number;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Number;
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->multiply(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
