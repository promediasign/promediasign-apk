.class public Lorg/apache/velocity/runtime/directive/Foreach;
.super Lorg/apache/velocity/runtime/directive/Directive;
.source "SourceFile"


# instance fields
.field private elementKey:Ljava/lang/String;

.field private maxNbrLoops:I

.field private skipInvalidIterator:Z

.field protected uberInfo:Lorg/apache/velocity/util/introspection/Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Directive;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs(Ljava/util/ArrayList;Lorg/apache/velocity/runtime/parser/Token;Ljava/lang/String;)V
    .locals 2
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

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "Argument 3 of #foreach is of the wrong type"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "Expected word \'in\' at argument position 2 in #foreach"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "Expected argument 1 of #foreach to be a reference"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "Too few arguments to the #foreach directive"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1
.end method

.method public clean(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Foreach;->elementKey:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Foreach;->elementKey:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/apache/velocity/context/Context;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    return-void
.end method

.method public getIterator(Ljava/lang/Object;Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/util/Iterator;
    .locals 3

    .line 1
    const-string v0, " at "

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 6
    .line 7
    invoke-interface {v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getUberspect()Lorg/apache/velocity/util/introspection/Uberspect;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lorg/apache/velocity/runtime/directive/Foreach;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 12
    .line 13
    invoke-interface {v1, p1, v2}, Lorg/apache/velocity/util/introspection/Uberspect;->getIterator(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    iget-boolean v2, p0, Lorg/apache/velocity/runtime/directive/Foreach;->skipInvalidIterator:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "#foreach parameter "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/node/Node;->literal()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, " is of type "

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, " and cannot be iterated by "

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 70
    .line 71
    invoke-interface {p1}, Lorg/apache/velocity/runtime/RuntimeServices;->getUberspect()Lorg/apache/velocity/util/introspection/Uberspect;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 91
    .line 92
    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    .line 96
    .line 97
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p2

    .line 101
    :catch_0
    move-exception p1

    .line 102
    goto :goto_0

    .line 103
    :catch_1
    move-exception p1

    .line 104
    goto :goto_1

    .line 105
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v2, "Error getting iterator for #foreach parameter "

    .line 108
    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/node/Node;->literal()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-static {p2}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 134
    .line 135
    invoke-static {v0, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    throw p1

    .line 140
    :goto_1
    throw p1

    .line 141
    :cond_1
    const/4 v1, 0x0

    .line 142
    :cond_2
    :goto_2
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "foreach"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Directive;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string p2, "directive.foreach.maxloops"

    const v0, 0x7fffffff

    invoke-interface {p1, p2, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/runtime/directive/Foreach;->maxNbrLoops:I

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    iput v0, p0, Lorg/apache/velocity/runtime/directive/Foreach;->maxNbrLoops:I

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "directive.foreach.skip.invalid"

    invoke-interface {p1, v0, p2}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/directive/Foreach;->skipInvalidIterator:Z

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v1, "runtime.references.strict"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {p1, v0, v2}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/directive/Foreach;->skipInvalidIterator:Z

    :cond_1
    invoke-interface {p3, v2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    instance-of p3, p1, Lorg/apache/velocity/runtime/parser/node/ASTReference;

    if-eqz p3, :cond_2

    check-cast p1, Lorg/apache/velocity/runtime/parser/node/ASTReference;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->getRootString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Foreach;->elementKey:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstTokenImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    new-instance p1, Lorg/apache/velocity/util/introspection/Info;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getTemplateName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getLine()I

    move-result p3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getColumn()I

    move-result v0

    invoke-direct {p1, p2, p3, v0}, Lorg/apache/velocity/util/introspection/Info;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Foreach;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    return-void
.end method

.method public put(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 8

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/velocity/runtime/directive/Foreach;->getIterator(Ljava/lang/Object;Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p3, v2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p3

    iget-object v2, p0, Lorg/apache/velocity/runtime/directive/Foreach;->elementKey:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->isScopeProvided()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getScopeName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/velocity/runtime/directive/ForeachScope;

    invoke-interface {p1, v4}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lorg/apache/velocity/runtime/directive/ForeachScope;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v4, v5}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v4, 0x1

    :goto_1
    iget v6, p0, Lorg/apache/velocity/runtime/directive/Foreach;->maxNbrLoops:I

    if-gt v4, v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lorg/apache/velocity/runtime/directive/Foreach;->elementKey:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, p1, v6, v7}, Lorg/apache/velocity/runtime/directive/Foreach;->put(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->isScopeProvided()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v5, Lorg/apache/velocity/runtime/directive/ForeachScope;->index:I

    add-int/2addr v6, v3

    iput v6, v5, Lorg/apache/velocity/runtime/directive/ForeachScope;->index:I

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iput-boolean v6, v5, Lorg/apache/velocity/runtime/directive/ForeachScope;->hasNext:Z

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Foreach;->renderBlock(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_0
    .catch Lorg/apache/velocity/runtime/directive/StopCommand; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2, p0}, Lorg/apache/velocity/runtime/directive/StopCommand;->isFor(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v2}, Lorg/apache/velocity/runtime/directive/Foreach;->clean(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)V

    throw p2

    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v2}, Lorg/apache/velocity/runtime/directive/Foreach;->clean(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)V

    instance-of p1, v0, Ljava/io/Closeable;

    if-eqz p1, :cond_5

    if-eq v0, v1, :cond_5

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_5
    return v3
.end method

.method public renderBlock(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 0

    invoke-interface {p3, p1, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z

    return-void
.end method
