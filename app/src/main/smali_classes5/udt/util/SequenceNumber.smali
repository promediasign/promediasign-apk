.class public abstract Ludt/util/SequenceNumber;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static compare(JJ)J
    .locals 7

    sub-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x3fffffff

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long v0, p2, p0

    :goto_0
    return-wide v0
.end method

.method public static decrement(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-wide/32 p0, 0x7fffffff

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method public static increment(J)J
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method public static random()J
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public static seqOffset(JJ)J
    .locals 5

    sub-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x3fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr p2, p0

    return-wide p2

    :cond_0
    const-wide v0, 0x80000000L

    cmp-long v2, p0, p2

    sub-long/2addr p2, p0

    if-gez v2, :cond_1

    sub-long/2addr p2, v0

    return-wide p2

    :cond_1
    add-long/2addr p2, v0

    return-wide p2
.end method
