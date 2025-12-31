.class public Lorg/apache/velocity/runtime/directive/Break;
.super Lorg/apache/velocity/runtime/directive/Directive;
.source "SourceFile"


# instance fields
.field private scoped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Directive;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/directive/Break;->scoped:Z

    return-void
.end method


# virtual methods
.method public checkArgs(Ljava/util/ArrayList;Lorg/apache/velocity/runtime/parser/Token;Ljava/lang/String;)V
    .locals 1
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

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "The #break directive takes only a single, optional Scope argument"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "break"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Directive;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/apache/velocity/runtime/directive/Break;->scoped:Z

    return-void
.end method

.method public isScopeProvided()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 1

    iget-boolean p2, p0, Lorg/apache/velocity/runtime/directive/Break;->scoped:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-interface {p3, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/velocity/runtime/directive/Scope;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/velocity/runtime/directive/Scope;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->stop()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Scope.stop() failed to throw a StopCommand"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/node/Node;->literal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a valid "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lorg/apache/velocity/runtime/directive/Scope;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " instance at "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/velocity/runtime/directive/StopCommand;

    invoke-direct {p1}, Lorg/apache/velocity/runtime/directive/StopCommand;-><init>()V

    throw p1
.end method
