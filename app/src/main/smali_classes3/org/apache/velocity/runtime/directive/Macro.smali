.class public Lorg/apache/velocity/runtime/directive/Macro;
.super Lorg/apache/velocity/runtime/directive/Directive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/directive/Macro$MacroArg;
    }
.end annotation


# static fields
.field private static debugMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Directive;-><init>()V

    return-void
.end method

.method private static getArgArray(Lorg/apache/velocity/runtime/parser/node/Node;Lorg/apache/velocity/runtime/RuntimeServices;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/velocity/runtime/parser/node/Node;",
            "Lorg/apache/velocity/runtime/RuntimeServices;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v3

    new-instance v4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    invoke-direct {v4}, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;-><init>()V

    invoke-interface {v3}, Lorg/apache/velocity/runtime/parser/node/Node;->getType()I

    move-result v5

    const/16 v6, 0xc

    invoke-interface {v3}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstTokenImage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v3

    iput-object v3, v4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->defaultVal:Lorg/apache/velocity/runtime/parser/node/Node;

    :cond_0
    if-lez v2, :cond_1

    iget-object v3, v4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    const-string v5, "$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-boolean p0, Lorg/apache/velocity/runtime/directive/Macro;->debugMode:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Macro.getArgArray(): nbrArgs="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lorg/apache/velocity/runtime/directive/Macro;->macroToString(Ljava/lang/StringBuilder;Ljava/util/List;)Ljava/lang/StringBuilder;

    const-string v0, "macro"

    invoke-interface {p1, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public static macroToString(Ljava/lang/StringBuilder;Ljava/util/List;)Ljava/lang/StringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    iget-object v0, v0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "( "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    const-string v1, "$"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->defaultVal:Lorg/apache/velocity/runtime/parser/node/Node;

    if-eqz v1, :cond_1

    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->defaultVal:Lorg/apache/velocity/runtime/parser/node/Node;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public checkArgs(Ljava/util/ArrayList;Lorg/apache/velocity/runtime/parser/Token;Ljava/lang/String;)V
    .locals 5
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

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_2

    if-nez v0, :cond_1

    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "Macro non-default argument follows a default argument at "

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Macro argument "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " must be a reference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "Macro argument 1 must be a token without surrounding \' or \""

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "A macro definition requires at least a macro name"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "macro"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Directive;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-static {p3, p1}, Lorg/apache/velocity/runtime/directive/Macro;->getArgArray(Lorg/apache/velocity/runtime/parser/node/Node;Lorg/apache/velocity/runtime/RuntimeServices;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result p2

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;

    iget-object v1, v1, Lorg/apache/velocity/runtime/directive/Macro$MacroArg;->name:Ljava/lang/String;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p3, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p2

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getTemplate()Lorg/apache/velocity/Template;

    move-result-object p3

    invoke-interface {v0, v1, p2, p1, p3}, Lorg/apache/velocity/runtime/RuntimeServices;->addVelocimacro(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Lorg/apache/velocity/Template;)Z

    return-void
.end method

.method public isScopeProvided()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
