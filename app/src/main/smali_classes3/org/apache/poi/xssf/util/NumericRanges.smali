.class public Lorg/apache/poi/xssf/util/NumericRanges;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_OVERLAPS:I = -0x1

.field public static final OVERLAPS_1_MINOR:I = 0x0

.field public static final OVERLAPS_1_WRAPS:I = 0x2

.field public static final OVERLAPS_2_MINOR:I = 0x1

.field public static final OVERLAPS_2_WRAPS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverlappingRange([J[J)[J
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/util/NumericRanges;->getOverlappingType([J[J)I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v0, :cond_2

    if-eq v3, v2, :cond_1

    const/4 p1, 0x3

    if-eq v3, p1, :cond_0

    new-array p0, v2, [J

    fill-array-data p0, :array_0

    :cond_0
    return-object p0

    :cond_1
    return-object p1

    :cond_2
    aget-wide v3, p0, v1

    aget-wide p0, p1, v0

    new-array v2, v2, [J

    aput-wide v3, v2, v1

    aput-wide p0, v2, v0

    return-object v2

    :cond_3
    aget-wide v3, p1, v1

    aget-wide v5, p0, v0

    new-array p0, v2, [J

    aput-wide v3, p0, v1

    aput-wide v5, p0, v0

    return-object p0

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public static getOverlappingType([J[J)I
    .locals 9

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-wide v6, p1, v0

    aget-wide p0, p1, v3

    cmp-long v8, v1, v6

    if-ltz v8, :cond_1

    cmp-long v0, v4, p0

    if-gtz v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    cmp-long v0, v1, p0

    if-gtz v0, :cond_3

    return v3

    :cond_1
    cmp-long v1, v4, p0

    if-ltz v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    cmp-long p0, v4, v6

    if-ltz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method
