.class public Lorg/h2/value/ValueDate;
.super Lorg/h2/value/Value;
.source "SourceFile"


# static fields
.field public static final DISPLAY_SIZE:I = 0xa

.field public static final PRECISION:I = 0x8


# instance fields
.field private final dateValue:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    iput-wide p1, p0, Lorg/h2/value/ValueDate;->dateValue:J

    return-void
.end method

.method public static appendDate(Ljava/lang/StringBuilder;J)V
    .locals 4

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    move-result v0

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    move-result v1

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    move-result p1

    if-lez v0, :cond_0

    const/16 p2, 0x2710

    if-ge v0, p2, :cond_0

    const/4 p2, 0x4

    int-to-long v2, v0

    invoke-static {p0, p2, v2, v3}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p2, 0x2d

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v0, v1

    const/4 v2, 0x2

    invoke-static {p0, v2, v0, v1}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long p1, p1

    invoke-static {p0, v2, p1, p2}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    return-void
.end method

.method public static fromDateValue(J)Lorg/h2/value/ValueDate;
    .locals 1

    new-instance v0, Lorg/h2/value/ValueDate;

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueDate;-><init>(J)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueDate;

    return-object p0
.end method

.method public static fromMillis(J)Lorg/h2/value/ValueDate;
    .locals 0

    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/h2/value/ValueDate;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/h2/util/DateTimeUtils;->parseDateValue(Ljava/lang/String;II)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueDate;->fromDateValue(J)Lorg/h2/value/ValueDate;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "DATE"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x55f7

    invoke-static {v1, v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueDate;->dateValue:J

    check-cast p1, Lorg/h2/value/ValueDate;

    iget-wide p1, p1, Lorg/h2/value/ValueDate;->dateValue:J

    invoke-static {v0, v1, p1, p2}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/h2/value/ValueDate;

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lorg/h2/value/ValueDate;->dateValue:J

    check-cast p1, Lorg/h2/value/ValueDate;

    iget-wide v3, p1, Lorg/h2/value/ValueDate;->dateValue:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDate()Ljava/sql/Date;
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueDate;->dateValue:J

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->convertDateValueToDate(J)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateValue()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueDate;->dateValue:J

    return-wide v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueDate;->getDate()Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DATE \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/value/ValueDate;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-wide v1, p0, Lorg/h2/value/ValueDate;->dateValue:J

    invoke-static {v0, v1, v2}, Lorg/h2/value/ValueDate;->appendDate(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/h2/value/ValueDate;->dateValue:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueDate;->getDate()Ljava/sql/Date;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    return-void
.end method
