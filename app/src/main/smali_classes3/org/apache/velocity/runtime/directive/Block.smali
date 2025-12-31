.class public abstract Lorg/apache/velocity/runtime/directive/Block;
.super Lorg/apache/velocity/runtime/directive/Directive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/directive/Block$Reference;
    }
.end annotation


# instance fields
.field protected block:Lorg/apache/velocity/runtime/parser/node/Node;

.field protected key:Ljava/lang/String;

.field protected log:Lorg/slf4j/Logger;

.field protected maxDepth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Directive;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public id(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const-string v1, "block $"

    .line 4
    .line 5
    invoke-static {v0, v1}, LA/g;->o(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Block;->key:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentTemplateName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getTemplateName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-string v1, " used in "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentTemplateName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Directive;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {p1}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog()Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Block;->log:Lorg/slf4j/Logger;

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p3, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Block;->block:Lorg/apache/velocity/runtime/parser/node/Node;

    return-void
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    .locals 2

    const-string v0, "Failed to render "

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->preRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Block;->block:Lorg/apache/velocity/runtime/parser/node/Node;

    invoke-interface {v1, p1, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/velocity/runtime/directive/StopCommand; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    return p2

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :goto_0
    :try_start_1
    invoke-virtual {p2, p0}, Lorg/apache/velocity/runtime/directive/StopCommand;->isFor(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_2
    throw p2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Block;->id(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to writer at "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Block;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    throw p2
.end method
