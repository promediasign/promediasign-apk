.class public Lorg/h2/api/TimestampWithTimeZone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x3d3ef079c46bdd13L


# instance fields
.field private final dateValue:J

.field private final timeNanos:J

.field private final timeZoneOffsetMins:S


# direct methods
.method public constructor <init>(JJS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/h2/api/TimestampWithTimeZone;->dateValue:J

    iput-wide p3, p0, Lorg/h2/api/TimestampWithTimeZone;->timeNanos:J

    iput-short p5, p0, Lorg/h2/api/TimestampWithTimeZone;->timeZoneOffsetMins:S

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/h2/api/TimestampWithTimeZone;

    iget-wide v2, p0, Lorg/h2/api/TimestampWithTimeZone;->dateValue:J

    iget-wide v4, p1, Lorg/h2/api/TimestampWithTimeZone;->dateValue:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lorg/h2/api/TimestampWithTimeZone;->timeNanos:J

    iget-wide v4, p1, Lorg/h2/api/TimestampWithTimeZone;->timeNanos:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    :cond_4
    iget-short v2, p0, Lorg/h2/api/TimestampWithTimeZone;->timeZoneOffsetMins:S

    iget-short p1, p1, Lorg/h2/api/TimestampWithTimeZone;->timeZoneOffsetMins:S

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getDay()I
    .locals 2

    iget-wide v0, p0, Lorg/h2/api/TimestampWithTimeZone;->dateValue:J

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    iget-wide v0, p0, Lorg/h2/api/TimestampWithTimeZone;->dateValue:J

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    move-result v0

    return v0
.end method

.method public getNanosSinceMidnight()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/api/TimestampWithTimeZone;->timeNanos:J

    return-wide v0
.end method

.method public getTimeZoneOffsetMins()S
    .locals 1

    iget-short v0, p0, Lorg/h2/api/TimestampWithTimeZone;->timeZoneOffsetMins:S

    return v0
.end method

.method public getYMD()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/api/TimestampWithTimeZone;->dateValue:J

    return-wide v0
.end method

.method public getYear()I
    .locals 2

    iget-wide v0, p0, Lorg/h2/api/TimestampWithTimeZone;->dateValue:J

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lorg/h2/api/TimestampWithTimeZone;->dateValue:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const/16 v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lorg/h2/api/TimestampWithTimeZone;->timeNanos:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-short v0, p0, Lorg/h2/api/TimestampWithTimeZone;->timeZoneOffsetMins:S

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/h2/api/TimestampWithTimeZone;->dateValue:J

    invoke-static {v1, v2}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    move-result v1

    iget-wide v2, p0, Lorg/h2/api/TimestampWithTimeZone;->dateValue:J

    invoke-static {v2, v3}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    move-result v2

    iget-wide v3, p0, Lorg/h2/api/TimestampWithTimeZone;->dateValue:J

    invoke-static {v3, v4}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    move-result v3

    if-lez v1, :cond_0

    const/16 v4, 0x2710

    if-ge v1, v4, :cond_0

    const/4 v4, 0x4

    int-to-long v5, v1

    invoke-static {v0, v4, v5, v6}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v4, v2

    const/4 v2, 0x2

    invoke-static {v0, v2, v4, v5}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v3, v3

    invoke-static {v0, v2, v3, v4}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/h2/api/TimestampWithTimeZone;->timeNanos:J

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long v9, v7, v5

    mul-long v5, v5, v9

    sub-long/2addr v7, v5

    const-wide/16 v5, 0x3c

    div-long v11, v9, v5

    mul-long v13, v11, v5

    sub-long/2addr v9, v13

    div-long v13, v11, v5

    mul-long v5, v5, v13

    sub-long/2addr v11, v5

    invoke-static {v0, v2, v13, v14}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v11, v12}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v9, v10}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v9, 0x3

    invoke-static {v0, v9, v7, v8}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_1

    const/4 v7, 0x6

    invoke-static {v0, v7, v3, v4}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-le v3, v6, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v7, 0x30

    if-eq v4, v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-short v3, p0, Lorg/h2/api/TimestampWithTimeZone;->timeZoneOffsetMins:S

    if-gez v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v1, v3

    int-to-short v3, v1

    goto :goto_3

    :cond_4
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    div-int/lit8 v1, v3, 0x3c

    mul-int/lit8 v4, v1, 0x3c

    sub-int/2addr v3, v4

    int-to-short v3, v3

    int-to-long v6, v1

    invoke-static {v0, v2, v6, v7}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    if-eqz v3, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v3, v3

    invoke-static {v0, v2, v3, v4}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
