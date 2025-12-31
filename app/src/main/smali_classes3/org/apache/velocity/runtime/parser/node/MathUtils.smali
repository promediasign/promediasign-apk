.class public abstract Lorg/apache/velocity/runtime/parser/node/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final BASE_BIGDECIMAL:I = 0x4

.field protected static final BASE_BIGINTEGER:I = 0x3

.field protected static final BASE_DOUBLE:I = 0x2

.field protected static final BASE_FLOAT:I = 0x1

.field protected static final BASE_LONG:I

.field protected static final DECIMAL_ZERO:Ljava/math/BigDecimal;

.field private static final ints:Ljava/util/Map;

.field private static final typesBySize:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/apache/velocity/runtime/parser/node/MathUtils;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/velocity/runtime/parser/node/MathUtils;->ints:Ljava/util/Map;

    const-wide/16 v1, 0x7f

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x7fff

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-class v3, Ljava/lang/Short;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v4, 0x7fffffff

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-class v4, Ljava/lang/Integer;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-class v5, Ljava/lang/Long;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-class v6, Ljava/math/BigInteger;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/velocity/runtime/parser/node/MathUtils;->typesBySize:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 9

    invoke-static {p0, p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->findCalculationBase(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long v4, v0, v2

    xor-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-gez v8, :cond_4

    xor-long v0, v4, v2

    cmp-long v2, v0, v6

    if-gez v2, :cond_4

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v4, v5, p0, p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->wrapPrimitive(JLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static compare(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 6

    invoke-static {p0, p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->findCalculationBase(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double v0, v4, p0

    if-gez v0, :cond_2

    return v2

    :cond_2
    cmpl-double v0, v4, p0

    if-lez v0, :cond_3

    return v3

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    return v2

    :cond_5
    cmpl-float p0, p0, p1

    if-lez p0, :cond_6

    return v3

    :cond_6
    return v1

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long v0, v4, p0

    if-gez v0, :cond_8

    return v2

    :cond_8
    if-lez v0, :cond_9

    return v3

    :cond_9
    return v1
.end method

.method public static divide(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    invoke-static {p0, p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->findCalculationBase(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1, p0, p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->wrapPrimitive(JLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static findCalculationBase(Ljava/lang/Number;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->isInteger(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of p0, p0, Ljava/math/BigInteger;

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    instance-of p0, p0, Ljava/lang/Double;

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static findCalculationBase(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 3

    .line 2
    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->isInteger(Ljava/lang/Number;)Z

    move-result v0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->isInteger(Ljava/lang/Number;)Z

    move-result v1

    instance-of v2, p0, Ljava/math/BigDecimal;

    if-nez v2, :cond_7

    instance-of v2, p1, Ljava/math/BigDecimal;

    if-nez v2, :cond_7

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    instance-of v2, p0, Ljava/math/BigInteger;

    if-nez v2, :cond_7

    instance-of v2, p1, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    instance-of p0, p0, Ljava/math/BigInteger;

    if-nez p0, :cond_3

    instance-of p0, p1, Ljava/math/BigInteger;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_4
    instance-of p0, p0, Ljava/lang/Double;

    if-nez p0, :cond_6

    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x2

    return p0

    :cond_7
    :goto_2
    const/4 p0, 0x4

    return p0
.end method

.method public static isInteger(Ljava/lang/Number;)Z
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/parser/node/MathUtils;->ints:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isZero(Ljava/lang/Number;)Z
    .locals 7

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->isInteger(Ljava/lang/Number;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/math/BigInteger;

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double p0, v5, v1

    if-nez p0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3

    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double p0, v5, v1

    if-nez p0, :cond_6

    const/4 v3, 0x1

    :cond_6
    return v3

    :cond_7
    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v0, Lorg/apache/velocity/runtime/parser/node/MathUtils;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 v3, 0x1

    :cond_8
    return v3
.end method

.method public static modulo(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    invoke-static {p0, p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->findCalculationBase(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Cannot calculate the modulo of BigDecimals."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    rem-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1, p0, p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->wrapPrimitive(JLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static multiply(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 9

    invoke-static {p0, p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->findCalculationBase(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    mul-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_4

    div-long v2, v4, v2

    cmp-long v6, v2, v0

    if-eqz v6, :cond_4

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v4, v5, p0, p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->wrapPrimitive(JLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static negate(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 5

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->findCalculationBase(Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    neg-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_4
    neg-long v0, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->wrapPrimitive(JLjava/lang/Class;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static subtract(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 9

    invoke-static {p0, p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->findCalculationBase(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v4, v0, v2

    xor-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-gez v8, :cond_4

    not-long v0, v2

    xor-long/2addr v0, v4

    cmp-long v2, v0, v6

    if-gez v2, :cond_4

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v4, v5, p0, p1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->wrapPrimitive(JLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    .locals 3

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/math/BigDecimal;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object v0
.end method

.method public static toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;
    .locals 2

    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static wrapPrimitive(JLjava/lang/Class;)Ljava/lang/Number;
    .locals 4

    .line 1
    const-class v0, Ljava/lang/Byte;

    const-class v1, Ljava/lang/Short;

    if-ne p2, v0, :cond_2

    const-wide/16 v2, 0x7f

    cmp-long p2, p0, v2

    if-gtz p2, :cond_1

    const-wide/16 v2, -0x80

    cmp-long p2, p0, v2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, p0

    int-to-byte p0, p1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    move-object p2, v1

    :cond_2
    const-class v0, Ljava/lang/Integer;

    if-ne p2, v1, :cond_5

    const-wide/16 v1, 0x7fff

    cmp-long p2, p0, v1

    if-gtz p2, :cond_4

    const-wide/16 v1, -0x8000

    cmp-long p2, p0, v1

    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    long-to-int p1, p0

    int-to-short p0, p1

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    move-object p2, v0

    :cond_5
    const-class v1, Ljava/lang/Long;

    if-ne p2, v0, :cond_8

    const-wide/32 v2, 0x7fffffff

    cmp-long p2, p0, v2

    if-gtz p2, :cond_7

    const-wide/32 v2, -0x80000000

    cmp-long p2, p0, v2

    if-gez p2, :cond_6

    goto :goto_2

    :cond_6
    long-to-int p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    move-object p2, v1

    :cond_8
    if-ne p2, v1, :cond_9

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static wrapPrimitive(JLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 3

    .line 2
    sget-object v0, Lorg/apache/velocity/runtime/parser/node/MathUtils;->typesBySize:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le v1, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_0
    invoke-static {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->wrapPrimitive(JLjava/lang/Class;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0
.end method
