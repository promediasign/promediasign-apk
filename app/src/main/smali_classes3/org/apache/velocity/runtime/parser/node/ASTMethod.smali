.class public Lorg/apache/velocity/runtime/parser/node/ASTMethod;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;
    }
.end annotation


# static fields
.field private static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private methodName:Ljava/lang/String;

.field private paramCount:I

.field protected strictRef:Z

.field protected uberInfo:Lorg/apache/velocity/util/introspection/Info;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->methodName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->paramCount:I

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->strictRef:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->methodName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->paramCount:I

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->strictRef:Z

    return-void
.end method

.method public static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    return-object v0
.end method

.method private handleInvocationException(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 11

    instance-of v1, p3, Ljava/lang/Error;

    if-nez v1, :cond_2

    instance-of v1, p3, Lorg/apache/velocity/runtime/directive/StopCommand;

    if-nez v1, :cond_1

    instance-of v1, p3, Ljava/lang/Exception;

    const-string v2, " threw exception "

    const-string v3, "\' in  "

    const-string v4, "Invocation of method \'"

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->methodName:Ljava/lang/String;

    move-object v9, p3

    check-cast v9, Ljava/lang/Exception;

    iget-object v10, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    move-object v6, p2

    invoke-static/range {v5 .. v10}, Lorg/apache/velocity/app/event/EventHandlerUtil;->methodException(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v8, Lorg/apache/velocity/exception/MethodInvocationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->methodName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v6

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v7

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    throw v8

    :cond_0
    new-instance v8, Lorg/apache/velocity/exception/MethodInvocationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->methodName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v6

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v7

    move-object v1, v8

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    throw v8

    :cond_1
    move-object v0, p3

    check-cast v0, Lorg/apache/velocity/runtime/directive/StopCommand;

    throw v0

    :cond_2
    move-object v0, p3

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->paramCount:I

    .line 2
    .line 3
    new-array v8, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    new-array v0, v0, [Ljava/lang/Class;

    .line 8
    .line 9
    :goto_0
    move-object v3, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    sget-object v0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :goto_1
    const/4 v0, 0x0

    .line 15
    :goto_2
    iget v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->paramCount:I

    .line 16
    .line 17
    if-ge v0, v1, :cond_2

    .line 18
    .line 19
    add-int/lit8 v1, v0, 0x1

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    aput-object v2, v8, v0

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    aput-object v2, v3, v0

    .line 38
    .line 39
    :cond_1
    move v0, v1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->methodName:Ljava/lang/String;

    .line 42
    .line 43
    iget-boolean v7, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->strictRef:Z

    .line 44
    .line 45
    move-object v2, v8

    .line 46
    move-object v4, p1

    .line 47
    move-object v5, p2

    .line 48
    move-object v6, p0

    .line 49
    invoke-static/range {v1 .. v7}, Lorg/apache/velocity/util/ClassUtils;->getMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/SimpleNode;Z)Lorg/apache/velocity/util/introspection/VelMethod;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p2, p0}, Lorg/apache/velocity/context/InternalContextAdapter;->icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-interface {p2, p0, p1}, Lorg/apache/velocity/context/InternalContextAdapter;->icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-object p1

    .line 66
    :cond_4
    if-nez v1, :cond_5

    .line 67
    .line 68
    new-instance v1, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    .line 69
    .line 70
    invoke-direct {v1}, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, p0, v1}, Lorg/apache/velocity/context/InternalContextAdapter;->icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    :try_start_0
    invoke-interface {v0, p1, v8}, Lorg/apache/velocity/util/introspection/VelMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-nez v1, :cond_6

    .line 81
    .line 82
    invoke-interface {v0}, Lorg/apache/velocity/util/introspection/VelMethod;->getReturnType()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 87
    .line 88
    if-ne v0, v2, :cond_6

    .line 89
    .line 90
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    return-object p1

    .line 93
    :catch_0
    move-exception p2

    .line 94
    goto :goto_3

    .line 95
    :catch_1
    move-exception p1

    .line 96
    goto :goto_4

    .line 97
    :catch_2
    move-exception v0

    .line 98
    goto :goto_5

    .line 99
    :catch_3
    move-exception v0

    .line 100
    goto :goto_6

    .line 101
    :cond_6
    return-object v1

    .line 102
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "ASTMethod.execute() : exception invoking method \'"

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->methodName:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, "\' in "

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    .line 131
    .line 132
    invoke-static {v0, p1, p2, p1, p2}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    throw p1

    .line 137
    :goto_4
    throw p1

    .line 138
    :goto_5
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->handleInvocationException(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    return-object p1

    .line 143
    :goto_6
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->handleInvocationException(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/apache/velocity/util/introspection/Info;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/velocity/util/introspection/Info;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->methodName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetNumChildren()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->paramCount:I

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "runtime.references.strict"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->strictRef:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p2
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
