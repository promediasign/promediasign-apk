.class public abstract Lio/opencensus/common/Timestamp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/opencensus/common/Timestamp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(JI)Lio/opencensus/common/Timestamp;
    .locals 3

    .line 1
    const-wide v0, -0x4979cb9e00L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p0, v0

    .line 7
    .line 8
    if-ltz v2, :cond_3

    .line 9
    .line 10
    const-wide v0, 0x4979cb9e00L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v2, p0, v0

    .line 16
    .line 17
    if-gtz v2, :cond_2

    .line 18
    .line 19
    if-ltz p2, :cond_1

    .line 20
    .line 21
    const v0, 0x3b9ac9ff

    .line 22
    .line 23
    .line 24
    if-gt p2, v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lio/opencensus/common/AutoValue_Timestamp;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1, p2}, Lio/opencensus/common/AutoValue_Timestamp;-><init>(JI)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string p1, "\'nanos\' is greater than maximum (999999999): "

    .line 35
    .line 36
    invoke-static {p2, p1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string p1, "\'nanos\' is less than zero: "

    .line 47
    .line 48
    invoke-static {p2, p1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v0, "\'seconds\' is greater than maximum (315576000000): "

    .line 59
    .line 60
    invoke-static {v0, p0, p1}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p2

    .line 68
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string v0, "\'seconds\' is less than minimum (-315576000000): "

    .line 71
    .line 72
    invoke-static {v0, p0, p1}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p2
.end method


# virtual methods
.method public compareTo(Lio/opencensus/common/Timestamp;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/opencensus/common/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/opencensus/common/Timestamp;->getSeconds()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/opencensus/common/TimeUtils;->compareLongs(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lio/opencensus/common/Timestamp;->getNanos()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lio/opencensus/common/Timestamp;->getNanos()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lio/opencensus/common/TimeUtils;->compareLongs(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lio/opencensus/common/Timestamp;

    invoke-virtual {p0, p1}, Lio/opencensus/common/Timestamp;->compareTo(Lio/opencensus/common/Timestamp;)I

    move-result p1

    return p1
.end method

.method public abstract getNanos()I
.end method

.method public abstract getSeconds()J
.end method
