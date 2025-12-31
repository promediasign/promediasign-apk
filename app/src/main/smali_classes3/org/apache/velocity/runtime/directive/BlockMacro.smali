.class public Lorg/apache/velocity/runtime/directive/BlockMacro;
.super Lorg/apache/velocity/runtime/directive/Block;
.source "SourceFile"


# instance fields
.field private macro:Lorg/apache/velocity/runtime/directive/RuntimeMacro;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Block;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Block;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getScopeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/BlockMacro;->name:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Ljava/lang/String;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 2

    iput-object p2, p0, Lorg/apache/velocity/runtime/directive/BlockMacro;->name:Ljava/lang/String;

    invoke-super {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/directive/Block;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string p2, "velocimacro.body.reference"

    const-string v0, "bodyContent"

    invoke-interface {p1, p2, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Block;->key:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string p2, "velocimacro.max.depth"

    invoke-interface {p1, p2}, Lorg/apache/velocity/runtime/RuntimeServices;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/runtime/directive/Block;->maxDepth:I

    new-instance p1, Lorg/apache/velocity/runtime/directive/RuntimeMacro;

    invoke-direct {p1}, Lorg/apache/velocity/runtime/directive/RuntimeMacro;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/BlockMacro;->macro:Lorg/apache/velocity/runtime/directive/RuntimeMacro;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getLine()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getColumn()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getTemplate()Lorg/apache/velocity/Template;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/apache/velocity/runtime/directive/Directive;->setLocation(IILorg/apache/velocity/Template;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/BlockMacro;->macro:Lorg/apache/velocity/runtime/directive/RuntimeMacro;

    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/BlockMacro;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, p3, p4}, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->init(Lorg/apache/velocity/runtime/RuntimeServices;Ljava/lang/String;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    return-void
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/BlockMacro;->macro:Lorg/apache/velocity/runtime/directive/RuntimeMacro;

    new-instance v1, Lorg/apache/velocity/runtime/directive/Block$Reference;

    invoke-direct {v1, p1, p0}, Lorg/apache/velocity/runtime/directive/Block$Reference;-><init>(Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/directive/Block;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;Lorg/apache/velocity/runtime/Renderable;)Z

    move-result p1

    return p1
.end method
