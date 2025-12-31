.class public Lorg/apache/velocity/runtime/parser/node/ASTComment;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# static fields
.field private static final ZILCH:[C


# instance fields
.field private carr:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/velocity/runtime/parser/node/ASTComment;->ZILCH:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    return-void
.end method


# virtual methods
.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p1

    iget-object v0, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const-string v2, "#*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    sget-object p1, Lorg/apache/velocity/runtime/parser/node/ASTComment;->ZILCH:[C

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTComment;->carr:[C

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    if-ne v0, v2, :cond_1

    move v0, v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTComment;->carr:[C

    :goto_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p2
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTComment;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    .locals 0

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTComment;->carr:[C

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write([C)V

    const/4 p1, 0x1

    return p1
.end method
