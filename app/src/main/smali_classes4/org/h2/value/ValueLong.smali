.class public Lorg/h2/value/ValueLong;
.super Lorg/h2/value/Value;
.source "SourceFile"


# static fields
.field public static final DISPLAY_SIZE:I = 0x14

.field public static final MAX:Ljava/math/BigInteger;

.field private static final MIN:Ljava/math/BigInteger;

.field public static final MIN_BD:Ljava/math/BigDecimal;

.field public static final PRECISION:I = 0x13

.field private static final STATIC_CACHE:[Lorg/h2/value/ValueLong;

.field private static final STATIC_SIZE:I = 0x64


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/h2/value/ValueLong;->MAX:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    sput-object v2, Lorg/h2/value/ValueLong;->MIN_BD:Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/h2/value/ValueLong;->MIN:Ljava/math/BigInteger;

    const/16 v0, 0x64

    new-array v1, v0, [Lorg/h2/value/ValueLong;

    sput-object v1, Lorg/h2/value/ValueLong;->STATIC_CACHE:[Lorg/h2/value/ValueLong;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lorg/h2/value/ValueLong;->STATIC_CACHE:[Lorg/h2/value/ValueLong;

    new-instance v3, Lorg/h2/value/ValueLong;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lorg/h2/value/ValueLong;-><init>(J)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    iput-wide p1, p0, Lorg/h2/value/ValueLong;->value:J

    return-void
.end method

.method public static get(J)Lorg/h2/value/ValueLong;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x64

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    sget-object v0, Lorg/h2/value/ValueLong;->STATIC_CACHE:[Lorg/h2/value/ValueLong;

    long-to-int p1, p0

    aget-object p0, v0, p1

    return-object p0

    :cond_0
    new-instance v0, Lorg/h2/value/ValueLong;

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueLong;-><init>(J)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueLong;

    return-object p0
.end method

.method private getOverflow()Lorg/h2/message/DbException;
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x55f3

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    return-object v0
.end method

.method private static isInteger(J)Z
    .locals 3

    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 6

    check-cast p1, Lorg/h2/value/ValueLong;

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    iget-wide v2, p1, Lorg/h2/value/ValueLong;->value:J

    add-long/2addr v2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    iget-wide v4, p1, Lorg/h2/value/ValueLong;->value:J

    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    move-result p1

    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    move-result v1

    if-ne v0, p1, :cond_1

    if-eq v1, p1, :cond_1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/h2/value/ValueLong;->getOverflow()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1
.end method

.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 2

    check-cast p1, Lorg/h2/value/ValueLong;

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    iget-wide p1, p1, Lorg/h2/value/ValueLong;->value:J

    invoke-static {v0, v1, p1, p2}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    check-cast p1, Lorg/h2/value/ValueLong;

    iget-wide v0, p1, Lorg/h2/value/ValueLong;->value:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lorg/h2/value/ValueLong;->value:J

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    invoke-virtual {p0}, Lorg/h2/value/ValueLong;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/h2/value/ValueLong;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    check-cast p1, Lorg/h2/value/ValueLong;

    iget-wide v2, p1, Lorg/h2/value/ValueLong;->value:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getLong()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    return-wide v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x13

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueLong;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignum()I
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    check-cast p1, Lorg/h2/value/ValueLong;

    iget-wide v0, p1, Lorg/h2/value/ValueLong;->value:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lorg/h2/value/ValueLong;->value:J

    rem-long/2addr v2, v0

    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    invoke-virtual {p0}, Lorg/h2/value/ValueLong;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 11

    check-cast p1, Lorg/h2/value/ValueLong;

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    iget-wide v2, p1, Lorg/h2/value/ValueLong;->value:J

    mul-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_3

    const-wide/16 v8, 0x1

    cmp-long v10, v0, v8

    if-eqz v10, :cond_3

    cmp-long v10, v2, v6

    if-eqz v10, :cond_3

    cmp-long v6, v2, v8

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->isInteger(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lorg/h2/value/ValueLong;->value:J

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->isInteger(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1

    :cond_1
    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v1, p1, Lorg/h2/value/ValueLong;->value:J

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lorg/h2/value/ValueLong;->MIN:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    sget-object v0, Lorg/h2/value/ValueLong;->MAX:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lorg/h2/value/ValueLong;->getOverflow()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/h2/value/Value;
    .locals 5

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    neg-long v0, v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/h2/value/ValueLong;->getOverflow()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    invoke-interface {p1, p2, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    check-cast p1, Lorg/h2/value/ValueLong;

    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    iget-wide v1, p1, Lorg/h2/value/ValueLong;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->signum(J)I

    move-result v1

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/ValueLong;->negate()Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/value/ValueLong;->add(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/h2/value/ValueLong;->value:J

    iget-wide v2, p1, Lorg/h2/value/ValueLong;->value:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1
.end method
