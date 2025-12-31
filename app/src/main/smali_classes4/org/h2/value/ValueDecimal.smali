.class public Lorg/h2/value/ValueDecimal;
.super Lorg/h2/value/Value;
.source "SourceFile"


# static fields
.field private static final BIG_DECIMAL_SCALE_MAX:I = 0x186a0

.field static final DEFAULT_DISPLAY_SIZE:I = 0xffff

.field static final DEFAULT_PRECISION:I = 0xffff

.field static final DEFAULT_SCALE:I = 0x7fff

.field private static final DIVIDE_SCALE_ADD:I = 0x19

.field public static final ONE:Ljava/lang/Object;

.field public static final ZERO:Ljava/lang/Object;


# instance fields
.field private precision:I

.field private final value:Ljava/math/BigDecimal;

.field private valueString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/h2/value/ValueDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/h2/value/ValueDecimal;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lorg/h2/value/ValueDecimal;->ZERO:Ljava/lang/Object;

    new-instance v0, Lorg/h2/value/ValueDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/h2/value/ValueDecimal;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lorg/h2/value/ValueDecimal;->ONE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/math/BigDecimal;)V
    .locals 2

    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    const v0, 0x1600d

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;
    .locals 1

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/h2/value/ValueDecimal;->ZERO:Ljava/lang/Object;

    :goto_0
    check-cast p0, Lorg/h2/value/ValueDecimal;

    return-object p0

    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/h2/value/ValueDecimal;->ONE:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/h2/value/ValueDecimal;

    invoke-direct {v0, p0}, Lorg/h2/value/ValueDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    goto :goto_0
.end method

.method public static setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 1

    const v0, 0x186a0

    if-gt p1, v0, :cond_0

    const v0, -0x186a0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "scale"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    check-cast p1, Lorg/h2/value/ValueDecimal;

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1
.end method

.method public checkPrecision(J)Z
    .locals 4

    const-wide/32 v0, 0xffff

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getPrecision()J

    move-result-wide v0

    cmp-long v3, v0, p1

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    check-cast p1, Lorg/h2/value/ValueDecimal;

    iget-object p2, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public convertPrecision(JZ)Lorg/h2/value/Value;
    .locals 3

    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getPrecision()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p3, 0x55f3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public convertScale(ZI)Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x7fff

    if-lt p2, p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    if-ge p1, p2, :cond_2

    return-object p0

    :cond_2
    iget-object p1, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-static {p1, p2}, Lorg/h2/value/ValueDecimal;->setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 3

    .line 1
    check-cast p1, Lorg/h2/value/ValueDecimal;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    .line 12
    .line 13
    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/lit8 v1, v1, 0x19

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    invoke-virtual {v0, p1, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    new-instance p1, Ljava/math/BigDecimal;

    .line 59
    .line 60
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 61
    .line 62
    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_3
    const/16 p1, 0x55fc

    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getSQL()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/h2/value/ValueDecimal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    check-cast p1, Lorg/h2/value/ValueDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 4

    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getPrecision()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getMemory()I
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    add-int/lit8 v0, v0, 0x78

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    iget v0, p0, Lorg/h2/value/ValueDecimal;->precision:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    iput v0, p0, Lorg/h2/value/ValueDecimal;->precision:I

    :cond_0
    iget v0, p0, Lorg/h2/value/ValueDecimal;->precision:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    return v0
.end method

.method public getSignum()I
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->valueString:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_0

    :goto_0
    iput-object v0, p0, Lorg/h2/value/ValueDecimal;->valueString:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/value/ValueDecimal;->modulus(Lorg/h2/value/Value;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1
.end method

.method public modulus(Lorg/h2/value/Value;)Lorg/h2/value/ValueDecimal;
    .locals 1

    .line 2
    check-cast p1, Lorg/h2/value/ValueDecimal;

    iget-object v0, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x55fc

    invoke-virtual {p0}, Lorg/h2/value/ValueDecimal;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    check-cast p1, Lorg/h2/value/ValueDecimal;

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    check-cast p1, Lorg/h2/value/ValueDecimal;

    iget-object v0, p0, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/h2/value/ValueDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    return-object p1
.end method
