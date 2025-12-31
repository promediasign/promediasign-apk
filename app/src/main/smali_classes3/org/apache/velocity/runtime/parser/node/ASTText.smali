.class public Lorg/apache/velocity/runtime/parser/node/ASTText;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# instance fields
.field private ctext:Ljava/lang/String;


# direct methods
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
.method public getCtext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTText;->ctext:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLastToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lorg/apache/velocity/runtime/parser/node/NodeUtils;->tokenLiteral(Lorg/apache/velocity/runtime/parser/Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/velocity/runtime/parser/node/NodeUtils;->tokenLiteral(Lorg/apache/velocity/runtime/parser/Token;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTText;->ctext:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p2
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTText;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    .locals 0

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTText;->ctext:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setCtext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTText;->ctext:Ljava/lang/String;

    return-void
.end method
