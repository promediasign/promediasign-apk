.class public abstract Lcom/sun/jna/ptr/ByReference;
.super Lcom/sun/jna/PointerType;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    new-instance v0, Lcom/sun/jna/Memory;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sun/jna/PointerType;->setPointer(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v3, "getValue"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v2, "null@0x%x"

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Lcom/sun/jna/Pointer;->nativeValue(Lcom/sun/jna/Pointer;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object v3, v1, v0

    .line 37
    .line 38
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v3, "%s@0x%x=%s"

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {v5}, Lcom/sun/jna/Pointer;->nativeValue(Lcom/sun/jna/Pointer;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/4 v6, 0x3

    .line 68
    new-array v6, v6, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v4, v6, v0

    .line 71
    .line 72
    aput-object v5, v6, v1

    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    aput-object v2, v6, v0

    .line 76
    .line 77
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-object v0

    .line 82
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v2, "ByReference Contract violated - "

    .line 95
    .line 96
    const-string v3, "#getValue raised exception: "

    .line 97
    .line 98
    invoke-static {v2, v1, v3, v0}, LA/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0
.end method
