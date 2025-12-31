.class public Lorg/apache/velocity/runtime/ParserPoolImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/ParserPool;


# instance fields
.field log:Lorg/slf4j/Logger;

.field max:I

.field pool:Lorg/apache/velocity/util/SimplePool;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/ParserPoolImpl;->pool:Lorg/apache/velocity/util/SimplePool;

    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/velocity/runtime/ParserPoolImpl;->max:I

    return-void
.end method


# virtual methods
.method public get()Lorg/apache/velocity/runtime/parser/Parser;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/ParserPoolImpl;->pool:Lorg/apache/velocity/util/SimplePool;

    invoke-virtual {v0}, Lorg/apache/velocity/util/SimplePool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/runtime/parser/Parser;

    return-object v0
.end method

.method public initialize(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 3

    const-string v0, "parser"

    invoke-interface {p1, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/ParserPoolImpl;->log:Lorg/slf4j/Logger;

    const-string v0, "parser.pool.size"

    const/16 v1, 0x14

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/velocity/runtime/ParserPoolImpl;->max:I

    new-instance v1, Lorg/apache/velocity/util/SimplePool;

    invoke-direct {v1, v0}, Lorg/apache/velocity/util/SimplePool;-><init>(I)V

    iput-object v1, p0, Lorg/apache/velocity/runtime/ParserPoolImpl;->pool:Lorg/apache/velocity/util/SimplePool;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/velocity/runtime/ParserPoolImpl;->max:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/ParserPoolImpl;->pool:Lorg/apache/velocity/util/SimplePool;

    invoke-interface {p1}, Lorg/apache/velocity/runtime/RuntimeServices;->createNewParser()Lorg/apache/velocity/runtime/parser/Parser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/velocity/util/SimplePool;->put(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/ParserPoolImpl;->log:Lorg/slf4j/Logger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Created \'{}\' parsers."

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Lorg/apache/velocity/runtime/parser/Parser;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/velocity/runtime/parser/Parser;->ReInit(Lorg/apache/velocity/runtime/parser/CharStream;)V

    iget-object v0, p0, Lorg/apache/velocity/runtime/ParserPoolImpl;->pool:Lorg/apache/velocity/util/SimplePool;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/util/SimplePool;->put(Ljava/lang/Object;)V

    return-void
.end method
