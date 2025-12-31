.class final Lorg/jctools/queues/LinkedArrayQueueUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static length([Ljava/lang/Object;)I
    .locals 0

    array-length p0, p0

    return p0
.end method

.method public static modifiedCalcElementOffset(JJ)J
    .locals 2

    sget-wide v0, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    and-long/2addr p0, p2

    sget p2, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    add-int/lit8 p2, p2, -0x1

    shl-long/2addr p0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static nextArrayOffset([Ljava/lang/Object;)J
    .locals 4

    sget-wide v0, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    invoke-static {p0}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-long v2, p0

    sget p0, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    shl-long/2addr v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method
