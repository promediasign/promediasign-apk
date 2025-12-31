.class public Lorg/apache/velocity/runtime/parser/node/ASTIndex;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# static fields
.field private static final noParams:[Ljava/lang/Object;

.field private static final noTypes:[Ljava/lang/Class;


# instance fields
.field protected strictRef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/apache/velocity/runtime/parser/node/ASTIndex;->noParams:[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/velocity/runtime/parser/node/ASTIndex;->noTypes:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIndex;->strictRef:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIndex;->strictRef:Z

    return-void
.end method

.method public static adjMinusIndexArg(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/SimpleNode;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    sget-object p0, Lorg/apache/velocity/runtime/parser/node/ASTIndex;->noParams:[Ljava/lang/Object;

    sget-object v4, Lorg/apache/velocity/runtime/parser/node/ASTIndex;->noTypes:[Ljava/lang/Class;

    const/4 v8, 0x0

    const-string v2, "size"

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v8}, Lorg/apache/velocity/util/ClassUtils;->getMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/SimpleNode;Z)Lorg/apache/velocity/util/introspection/VelMethod;

    move-result-object p2

    const-string v1, "\' at "

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2, p1, p0}, Lorg/apache/velocity/util/introspection/VelMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object p2, p0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    :catch_0
    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Method \'size()\' on class \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' returned \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' when Integer was expected at "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error trying to calls the \'size()\' method on \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p0, Lorg/apache/velocity/exception/VelocityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "A \'size()\' method required for negative value "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist for class \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, p1, p2, p0}, Lorg/apache/velocity/runtime/parser/node/ASTIndex;->adjMinusIndexArg(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/SimpleNode;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v10, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object v1, v10, v0

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    move-object v3, v11

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :goto_0
    new-array v5, v2, [Ljava/lang/Class;

    .line 29
    .line 30
    aput-object v3, v5, v0

    .line 31
    .line 32
    const-string v3, "get"

    .line 33
    .line 34
    iget-boolean v9, p0, Lorg/apache/velocity/runtime/parser/node/ASTIndex;->strictRef:Z

    .line 35
    .line 36
    move-object v4, v10

    .line 37
    move-object v6, p1

    .line 38
    move-object v7, p2

    .line 39
    move-object v8, p0

    .line 40
    invoke-static/range {v3 .. v9}, Lorg/apache/velocity/util/ClassUtils;->getMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/SimpleNode;Z)Lorg/apache/velocity/util/introspection/VelMethod;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    return-object v11

    .line 47
    :cond_1
    :try_start_0
    invoke-interface {p2, p1, v10}, Lorg/apache/velocity/util/introspection/VelMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p2}, Lorg/apache/velocity/util/introspection/VelMethod;->getReturnType()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    if-ne p2, v2, :cond_2

    .line 60
    .line 61
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    return-object p1

    .line 64
    :catch_0
    move-exception p2

    .line 65
    goto :goto_1

    .line 66
    :catch_1
    move-exception p1

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    return-object v0

    .line 69
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "Error invoking method \'get("

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    const-string v1, "null"

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ")\' in "

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, " at "

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    .line 125
    .line 126
    invoke-static {v0, p1, p2, p1, p2}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    throw p1

    .line 131
    :goto_3
    throw p1
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "runtime.references.strict"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIndex;->strictRef:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p2
.end method
