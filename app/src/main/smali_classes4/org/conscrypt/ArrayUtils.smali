.class final Lorg/conscrypt/ArrayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOffsetAndCount(III)V
    .locals 4

    .line 1
    or-int v0, p1, p2

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    if-gt p1, p0, :cond_0

    .line 6
    .line 7
    sub-int v0, p0, p1

    .line 8
    .line 9
    if-lt v0, p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 13
    .line 14
    const-string v1, "length="

    .line 15
    .line 16
    const-string v2, "; regionStart="

    .line 17
    .line 18
    const-string v3, "; regionLength="

    .line 19
    .line 20
    invoke-static {v1, p0, v2, p1, v3}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method
