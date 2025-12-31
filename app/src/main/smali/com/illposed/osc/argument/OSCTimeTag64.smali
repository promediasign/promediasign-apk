.class public Lcom/illposed/osc/argument/OSCTimeTag64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/illposed/osc/argument/OSCTimeTag64;",
        ">;"
    }
.end annotation


# static fields
.field public static final EPOCH_START_JAVA_TIME_CURRENT:J

.field public static final IMMEDIATE:Lcom/illposed/osc/argument/OSCTimeTag64;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final ntpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/illposed/osc/argument/OSCTimeTag64;->findEpochStartJavaTime(J)J

    move-result-wide v0

    sput-wide v0, Lcom/illposed/osc/argument/OSCTimeTag64;->EPOCH_START_JAVA_TIME_CURRENT:J

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/illposed/osc/argument/OSCTimeTag64;->valueOf(J)Lcom/illposed/osc/argument/OSCTimeTag64;

    move-result-object v0

    sput-object v0, Lcom/illposed/osc/argument/OSCTimeTag64;->IMMEDIATE:Lcom/illposed/osc/argument/OSCTimeTag64;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/illposed/osc/argument/OSCTimeTag64;->ntpTime:J

    return-void
.end method

.method private static findEpochStartJavaTime(J)J
    .locals 4

    const-wide v0, -0x20252351280L

    sub-long/2addr p0, v0

    const-wide v2, 0x3e800000000L

    div-long/2addr p0, v2

    mul-long p0, p0, v2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method private toDate()Ljava/util/Date;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    sget-wide v1, Lcom/illposed/osc/argument/OSCTimeTag64;->EPOCH_START_JAVA_TIME_CURRENT:J

    invoke-direct {p0, v1, v2}, Lcom/illposed/osc/argument/OSCTimeTag64;->toJavaTimeInEpoch(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private toJavaTime(Ljava/lang/Long;)J
    .locals 2

    if-nez p1, :cond_0

    sget-wide v0, Lcom/illposed/osc/argument/OSCTimeTag64;->EPOCH_START_JAVA_TIME_CURRENT:J

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/illposed/osc/argument/OSCTimeTag64;->findEpochStartJavaTime(J)J

    move-result-wide v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/illposed/osc/argument/OSCTimeTag64;->toJavaTimeInEpoch(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private toJavaTimeInEpoch(J)J
    .locals 6

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCTimeTag64;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCTimeTag64;->getFraction()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x41f0000000000000L    # 4.294967296E9

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    or-long/2addr v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public static valueOf(J)Lcom/illposed/osc/argument/OSCTimeTag64;
    .locals 1

    new-instance v0, Lcom/illposed/osc/argument/OSCTimeTag64;

    invoke-direct {v0, p0, p1}, Lcom/illposed/osc/argument/OSCTimeTag64;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/illposed/osc/argument/OSCTimeTag64;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/illposed/osc/argument/OSCTimeTag64;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCTimeTag64;->clone()Lcom/illposed/osc/argument/OSCTimeTag64;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/illposed/osc/argument/OSCTimeTag64;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCTimeTag64;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCTimeTag64;->getSeconds()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCTimeTag64;->getFraction()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCTimeTag64;->getFraction()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->signum(J)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/illposed/osc/argument/OSCTimeTag64;

    invoke-virtual {p0, p1}, Lcom/illposed/osc/argument/OSCTimeTag64;->compareTo(Lcom/illposed/osc/argument/OSCTimeTag64;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/illposed/osc/argument/OSCTimeTag64;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCTimeTag64;->getNtpTime()J

    move-result-wide v0

    check-cast p1, Lcom/illposed/osc/argument/OSCTimeTag64;

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCTimeTag64;->getNtpTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFraction()J
    .locals 4

    iget-wide v0, p0, Lcom/illposed/osc/argument/OSCTimeTag64;->ntpTime:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getNtpTime()J
    .locals 2

    iget-wide v0, p0, Lcom/illposed/osc/argument/OSCTimeTag64;->ntpTime:J

    return-wide v0
.end method

.method public getSeconds()J
    .locals 3

    iget-wide v0, p0, Lcom/illposed/osc/argument/OSCTimeTag64;->ntpTime:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/illposed/osc/argument/OSCTimeTag64;->ntpTime:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x1bd

    add-int/2addr v0, v1

    return v0
.end method

.method public isImmediate()Z
    .locals 5

    iget-wide v0, p0, Lcom/illposed/osc/argument/OSCTimeTag64;->ntpTime:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toDate(J)Ljava/util/Date;
    .locals 1

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/illposed/osc/argument/OSCTimeTag64;->toJavaTime(Ljava/lang/Long;)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 2

    .line 3
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/illposed/osc/argument/OSCTimeTag64;->toDate()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/illposed/osc/argument/OSCTimeTag64;->toDate(J)Ljava/util/Date;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/illposed/osc/argument/OSCTimeTag64;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
