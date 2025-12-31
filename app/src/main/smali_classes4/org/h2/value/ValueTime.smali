.class public Lorg/h2/value/ValueTime;
.super Lorg/h2/value/Value;
.source "SourceFile"


# static fields
.field static final DISPLAY_SIZE:I = 0x8

.field public static final PRECISION:I = 0x6


# instance fields
.field private final nanos:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    iput-wide p1, p0, Lorg/h2/value/ValueTime;->nanos:J

    return-void
.end method

.method public static appendTime(Ljava/lang/StringBuilder;JZ)V
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-long p1, p1

    :cond_0
    const-wide/32 v2, 0xf4240

    div-long v4, p1, v2

    mul-long v2, v2, v4

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x3e8

    div-long v6, v4, v2

    mul-long v2, v2, v6

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3c

    div-long v8, v6, v2

    mul-long v10, v8, v2

    sub-long/2addr v6, v10

    div-long v10, v8, v2

    mul-long v2, v2, v10

    sub-long/2addr v8, v2

    const/4 v2, 0x2

    invoke-static {p0, v2, v10, v11}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v2, v8, v9}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v2, v6, v7}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    if-nez p3, :cond_1

    cmp-long p3, v4, v0

    if-gtz p3, :cond_1

    cmp-long p3, p1, v0

    if-lez p3, :cond_4

    :cond_1
    const/16 p3, 0x2e

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/4 v2, 0x3

    invoke-static {p0, v2, v4, v5}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    const/4 v0, 0x6

    invoke-static {p0, v0, p1, p2}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-le p1, p3, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    const/16 v0, 0x30

    if-eq p2, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static fromMillis(J)Lorg/h2/value/ValueTime;
    .locals 0

    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object p0

    return-object p0
.end method

.method public static fromNanos(J)Lorg/h2/value/ValueTime;
    .locals 1

    new-instance v0, Lorg/h2/value/ValueTime;

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueTime;-><init>(J)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueTime;

    return-object p0
.end method

.method public static get(Ljava/sql/Time;)Lorg/h2/value/ValueTime;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/h2/value/ValueTime;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lorg/h2/util/DateTimeUtils;->parseTimeNanos(Ljava/lang/String;IIZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "TIME"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x55f7

    invoke-static {v1, v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueTime;

    iget-wide v0, p0, Lorg/h2/value/ValueTime;->nanos:J

    invoke-virtual {p1}, Lorg/h2/value/ValueTime;->getNanos()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object p1

    return-object p1
.end method

.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueTime;->nanos:J

    check-cast p1, Lorg/h2/value/ValueTime;

    iget-wide p1, p1, Lorg/h2/value/ValueTime;->nanos:J

    invoke-static {v0, v1, p1, p2}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    iget-wide v0, p0, Lorg/h2/value/ValueTime;->nanos:J

    long-to-double v0, v0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/h2/value/ValueTime;

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lorg/h2/value/ValueTime;->nanos:J

    check-cast p1, Lorg/h2/value/ValueTime;

    iget-wide v3, p1, Lorg/h2/value/ValueTime;->nanos:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getNanos()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueTime;->nanos:J

    return-wide v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueTime;->getTime()Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x6

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIME \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/value/ValueTime;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignum()I
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueTime;->nanos:J

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-wide v1, p0, Lorg/h2/value/ValueTime;->nanos:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueTime;->appendTime(Ljava/lang/StringBuilder;JZ)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Ljava/sql/Time;
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueTime;->nanos:J

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->convertNanoToTime(J)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/h2/value/ValueTime;->nanos:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    iget-wide v0, p0, Lorg/h2/value/ValueTime;->nanos:J

    long-to-double v0, v0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-long v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/h2/value/Value;
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueTime;->nanos:J

    neg-long v0, v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueTime;->getTime()Ljava/sql/Time;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueTime;

    iget-wide v0, p0, Lorg/h2/value/ValueTime;->nanos:J

    invoke-virtual {p1}, Lorg/h2/value/ValueTime;->getNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object p1

    return-object p1
.end method
