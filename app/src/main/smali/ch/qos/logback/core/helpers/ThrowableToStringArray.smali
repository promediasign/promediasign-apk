.class public Lch/qos/logback/core/helpers/ThrowableToStringArray;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lch/qos/logback/core/helpers/ThrowableToStringArray;->extract(Ljava/util/List;Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static extract(Ljava/util/List;Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p2}, Lch/qos/logback/core/helpers/ThrowableToStringArray;->findNumberOfCommonFrames([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v1

    invoke-static {p1, p2}, Lch/qos/logback/core/helpers/ThrowableToStringArray;->formatFirstLine(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge p2, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\tat "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, p2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "\t... "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " common frames omitted"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p0, p1, v0}, Lch/qos/logback/core/helpers/ThrowableToStringArray;->extract(Ljava/util/List;Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)V

    :cond_2
    return-void
.end method

.method private static findNumberOfCommonFrames([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    if-ltz v2, :cond_1

    aget-object v3, p0, v1

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static formatFirstLine(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Caused by: "

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, ""

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v0, ": "

    .line 27
    .line 28
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_1
    return-object p1
.end method
