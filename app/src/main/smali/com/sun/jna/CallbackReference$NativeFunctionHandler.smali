.class Lcom/sun/jna/CallbackReference$NativeFunctionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/CallbackReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeFunctionHandler"
.end annotation


# instance fields
.field private final function:Lcom/sun/jna/Function;

.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/jna/Pointer;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/Pointer;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sun/jna/CallbackReference$NativeFunctionHandler;->options:Ljava/util/Map;

    new-instance v0, Lcom/sun/jna/Function;

    const-string v1, "string-encoding"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/jna/Function;-><init>(Lcom/sun/jna/Pointer;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sun/jna/CallbackReference$NativeFunctionHandler;->function:Lcom/sun/jna/Function;

    return-void
.end method


# virtual methods
.method public getPointer()Lcom/sun/jna/Pointer;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/CallbackReference$NativeFunctionHandler;->function:Lcom/sun/jna/Function;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p1, Lcom/sun/jna/Library$Handler;->OBJECT_TOSTRING:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string p2, "Proxy interface to "

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/sun/jna/CallbackReference$NativeFunctionHandler;->function:Lcom/sun/jna/Function;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/sun/jna/CallbackReference$NativeFunctionHandler;->options:Ljava/util/Map;

    .line 26
    .line 27
    const-string p3, "invoking-method"

    .line 28
    .line 29
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Ljava/lang/reflect/Method;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Lcom/sun/jna/CallbackReference;->findCallbackClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string p3, " ("

    .line 44
    .line 45
    invoke-static {p1, p3}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p3, ")"

    .line 50
    .line 51
    invoke-static {p2, p1, p3}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_0
    sget-object p1, Lcom/sun/jna/Library$Handler;->OBJECT_HASHCODE:Ljava/lang/reflect/Method;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_1
    sget-object p1, Lcom/sun/jna/Library$Handler;->OBJECT_EQUALS:Ljava/lang/reflect/Method;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    aget-object p2, p3, p1

    .line 83
    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-static {p3}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    if-eqz p3, :cond_3

    .line 95
    .line 96
    invoke-static {p2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    if-ne p2, p0, :cond_2

    .line 101
    .line 102
    const/4 p1, 0x1

    .line 103
    :cond_2
    invoke-static {p1}, Lcom/sun/jna/Function;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_4
    invoke-static {p2}, Lcom/sun/jna/Function;->isVarArgs(Ljava/lang/reflect/Method;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    invoke-static {p3}, Lcom/sun/jna/Function;->concatenateVarArgs([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    :cond_5
    iget-object p1, p0, Lcom/sun/jna/CallbackReference$NativeFunctionHandler;->function:Lcom/sun/jna/Function;

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    iget-object v0, p0, Lcom/sun/jna/CallbackReference$NativeFunctionHandler;->options:Ljava/util/Map;

    .line 128
    .line 129
    invoke-virtual {p1, p2, p3, v0}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1
.end method
