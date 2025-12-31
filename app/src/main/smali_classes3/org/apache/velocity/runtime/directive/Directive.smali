.class public abstract Lorg/apache/velocity/runtime/directive/Directive;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/directive/DirectiveConstants;
.implements Ljava/lang/Cloneable;


# instance fields
.field private column:I

.field private line:I

.field protected log:Lorg/slf4j/Logger;

.field private provideScope:Z

.field protected rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

.field private template:Lorg/apache/velocity/Template;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->line:I

    iput v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->column:I

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->provideScope:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    return-void
.end method


# virtual methods
.method public checkArgs(Ljava/util/ArrayList;Lorg/apache/velocity/runtime/parser/Token;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/velocity/runtime/parser/Token;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public getColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->column:I

    return v0
.end method

.method public getLine()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->line:I

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getScopeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplate()Lorg/apache/velocity/Template;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->template:Lorg/apache/velocity/Template;

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->template:Lorg/apache/velocity/Template;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "directive."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getScopeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".provide.scope.control"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-boolean p3, p0, Lorg/apache/velocity/runtime/directive/Directive;->provideScope:Z

    invoke-interface {p2, p1, p3}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->provideScope:Z

    return-void
.end method

.method public isScopeProvided()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->provideScope:Z

    return v0
.end method

.method public makeScope(Ljava/lang/Object;)Lorg/apache/velocity/runtime/directive/Scope;
    .locals 1

    new-instance v0, Lorg/apache/velocity/runtime/directive/Scope;

    invoke-direct {v0, p0, p1}, Lorg/apache/velocity/runtime/directive/Scope;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->isScopeProvided()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getScopeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    check-cast v1, Lorg/apache/velocity/runtime/directive/Scope;

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/directive/Scope;->getParent()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/directive/Scope;->getParent()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lorg/apache/velocity/context/Context;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public preRender(Lorg/apache/velocity/context/InternalContextAdapter;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->isScopeProvided()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getScopeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/directive/Directive;->makeScope(Ljava/lang/Object;)Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
.end method

.method public setLocation(II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->line:I

    iput p2, p0, Lorg/apache/velocity/runtime/directive/Directive;->column:I

    return-void
.end method

.method public setLocation(IILorg/apache/velocity/Template;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/runtime/directive/Directive;->setLocation(II)V

    iput-object p3, p0, Lorg/apache/velocity/runtime/directive/Directive;->template:Lorg/apache/velocity/Template;

    return-void
.end method
