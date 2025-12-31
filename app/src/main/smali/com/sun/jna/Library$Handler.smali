.class public Lcom/sun/jna/Library$Handler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Library$Handler$FunctionInfo;
    }
.end annotation


# static fields
.field static final OBJECT_EQUALS:Ljava/lang/reflect/Method;

.field static final OBJECT_HASHCODE:Ljava/lang/reflect/Method;

.field static final OBJECT_TOSTRING:Ljava/lang/reflect/Method;


# instance fields
.field private final functions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Lcom/sun/jna/Library$Handler$FunctionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final invocationMapper:Lcom/sun/jna/InvocationMapper;

.field private final nativeLibrary:Lcom/sun/jna/NativeLibrary;

.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava/lang/Object;

    :try_start_0
    const-string v1, "toString"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sun/jna/Library$Handler;->OBJECT_TOSTRING:Ljava/lang/reflect/Method;

    const-string v1, "hashCode"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sun/jna/Library$Handler;->OBJECT_HASHCODE:Ljava/lang/reflect/Method;

    const-string v1, "equals"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Library$Handler;->OBJECT_EQUALS:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Error retrieving Object.toString() method"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/sun/jna/Library$Handler;->functions:Ljava/util/Map;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p3, "Invalid library name \""

    .line 29
    .line 30
    const-string v0, "\""

    .line 31
    .line 32
    invoke-static {p3, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iput-object p2, p0, Lcom/sun/jna/Library$Handler;->interfaceClass:Ljava/lang/Class;

    .line 47
    .line 48
    new-instance v0, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/sun/jna/Library$Handler;->options:Ljava/util/Map;

    .line 54
    .line 55
    const-class p3, Lcom/sun/jna/AltCallingConvention;

    .line 56
    .line 57
    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    if-eqz p3, :cond_2

    .line 62
    .line 63
    const/16 p3, 0x3f

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 p3, 0x0

    .line 67
    :goto_1
    const-string v1, "calling-convention"

    .line 68
    .line 69
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_3
    const-string p3, "classloader"

    .line 83
    .line 84
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-static {p1, v0}, Lcom/sun/jna/NativeLibrary;->getInstance(Ljava/lang/String;Ljava/util/Map;)Lcom/sun/jna/NativeLibrary;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lcom/sun/jna/Library$Handler;->nativeLibrary:Lcom/sun/jna/NativeLibrary;

    .line 102
    .line 103
    const-string p1, "invocation-mapper"

    .line 104
    .line 105
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/sun/jna/InvocationMapper;

    .line 110
    .line 111
    iput-object p1, p0, Lcom/sun/jna/Library$Handler;->invocationMapper:Lcom/sun/jna/InvocationMapper;

    .line 112
    .line 113
    return-void

    .line 114
    :cond_5
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string v0, " does not implement an interface: "

    .line 117
    .line 118
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p3
.end method


# virtual methods
.method public getInterfaceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/jna/Library$Handler;->interfaceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getLibraryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/Library$Handler;->nativeLibrary:Lcom/sun/jna/NativeLibrary;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLibrary;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeLibrary()Lcom/sun/jna/NativeLibrary;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/Library$Handler;->nativeLibrary:Lcom/sun/jna/NativeLibrary;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/sun/jna/Library$Handler;->OBJECT_TOSTRING:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Proxy interface to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/jna/Library$Handler;->nativeLibrary:Lcom/sun/jna/NativeLibrary;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/sun/jna/Library$Handler;->OBJECT_HASHCODE:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lcom/sun/jna/Library$Handler;->OBJECT_EQUALS:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    aget-object p2, p3, p1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p2

    if-ne p2, p0, :cond_2

    const/4 p1, 0x1

    :cond_2
    invoke-static {p1}, Lcom/sun/jna/Function;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/sun/jna/Library$Handler;->functions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Library$Handler$FunctionInfo;

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/sun/jna/Library$Handler;->functions:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/Library$Handler;->functions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Library$Handler$FunctionInfo;

    if-nez v0, :cond_8

    invoke-static {p2}, Lcom/sun/jna/internal/ReflectionUtils;->isDefault(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p2}, Lcom/sun/jna/Function;->isVarArgs(Ljava/lang/reflect/Method;)Z

    move-result v6

    iget-object v0, p0, Lcom/sun/jna/Library$Handler;->invocationMapper:Lcom/sun/jna/InvocationMapper;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/sun/jna/Library$Handler;->nativeLibrary:Lcom/sun/jna/NativeLibrary;

    invoke-interface {v0, v3, p2}, Lcom/sun/jna/InvocationMapper;->getInvocationHandler(Lcom/sun/jna/NativeLibrary;Ljava/lang/reflect/Method;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_6

    iget-object v0, p0, Lcom/sun/jna/Library$Handler;->nativeLibrary:Lcom/sun/jna/NativeLibrary;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/sun/jna/NativeLibrary;->getFunction(Ljava/lang/String;Ljava/lang/reflect/Method;)Lcom/sun/jna/Function;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sun/jna/Library$Handler;->options:Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v5, "invoking-method"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    move-object v7, v4

    move-object v4, v0

    goto :goto_1

    :cond_6
    move-object v4, v2

    move-object v5, v4

    move-object v7, v5

    :goto_1
    new-instance v0, Lcom/sun/jna/Library$Handler$FunctionInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sun/jna/Library$Handler$FunctionInfo;-><init>(Ljava/lang/reflect/InvocationHandler;Lcom/sun/jna/Function;[Ljava/lang/Class;ZLjava/util/Map;)V

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/sun/jna/Library$Handler$FunctionInfo;

    invoke-static {p2}, Lcom/sun/jna/internal/ReflectionUtils;->getMethodHandle(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sun/jna/Library$Handler$FunctionInfo;-><init>(Ljava/lang/Object;)V

    :goto_2
    iget-object v2, p0, Lcom/sun/jna/Library$Handler;->functions:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_4
    iget-object v1, v0, Lcom/sun/jna/Library$Handler$FunctionInfo;->methodHandle:Ljava/lang/Object;

    if-eqz v1, :cond_a

    invoke-static {p1, v1, p3}, Lcom/sun/jna/internal/ReflectionUtils;->invokeDefaultMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    iget-boolean v1, v0, Lcom/sun/jna/Library$Handler$FunctionInfo;->isVarArgs:Z

    if-eqz v1, :cond_b

    invoke-static {p3}, Lcom/sun/jna/Function;->concatenateVarArgs([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    :cond_b
    move-object v5, p3

    iget-object p3, v0, Lcom/sun/jna/Library$Handler$FunctionInfo;->handler:Ljava/lang/reflect/InvocationHandler;

    if-eqz p3, :cond_c

    invoke-interface {p3, p1, p2, v5}, Ljava/lang/reflect/InvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    iget-object v1, v0, Lcom/sun/jna/Library$Handler$FunctionInfo;->function:Lcom/sun/jna/Function;

    iget-object v3, v0, Lcom/sun/jna/Library$Handler$FunctionInfo;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    iget-object v6, v0, Lcom/sun/jna/Library$Handler$FunctionInfo;->options:Ljava/util/Map;

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Function;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
