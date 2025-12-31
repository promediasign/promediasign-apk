.class public abstract Lcom/fasterxml/jackson/core/io/NumberInput;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MAX_LONG_STR:Ljava/lang/String;

.field static final MIN_LONG_STR_NO_SIGN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    return-void
.end method

.method private static _badBD(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 2
    .line 3
    const-string v1, "Value \""

    .line 4
    .line 5
    const-string v2, "\" can not be represented as BigDecimal"

    .line 6
    .line 7
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static inLongRange([CIIZ)Z
    .locals 5

    if-eqz p3, :cond_0

    sget-object p3, Lcom/fasterxml/jackson/core/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/fasterxml/jackson/core/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge p2, v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    if-le p2, v0, :cond_2

    return v2

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-ge p2, v0, :cond_5

    add-int v3, p1, p2

    aget-char v3, p0, v3

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v3, v4

    if-eqz v3, :cond_4

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public static parseBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->_badBD(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method

.method public static parseBigDecimal([C)Ljava/math/BigDecimal;
    .locals 2

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigDecimal([CII)Ljava/math/BigDecimal;
    .locals 1

    .line 3
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1, p2}, Ljava/math/BigDecimal;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->_badBD(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2

    const-string v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static parseInt([CII)I
    .locals 4

    aget-char v0, p0, p1

    add-int/lit8 v0, v0, -0x30

    const/4 v1, 0x4

    if-le p2, v1, :cond_1

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v2, p1, 0x1

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, p1, 0x2

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v2, p1, 0x3

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, p1, 0x4

    aget-char v3, p0, v0

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, -0x4

    if-le p2, v1, :cond_0

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 p2, p1, 0x5

    aget-char p2, p0, p2

    add-int/lit8 p2, p2, -0x30

    add-int/2addr p2, v2

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 v0, p1, 0x6

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 p2, p1, 0x7

    aget-char p2, p0, p2

    add-int/lit8 p2, p2, -0x30

    add-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 p1, p1, 0x8

    aget-char p0, p0, p1

    add-int/lit8 p0, p0, -0x30

    add-int/2addr p0, p2

    return p0

    :cond_0
    move p1, v0

    move v0, v2

    :cond_1
    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    const/4 v1, 0x2

    if-le p2, v1, :cond_2

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    const/4 v1, 0x3

    if-le p2, v1, :cond_2

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr p1, v1

    aget-char p0, p0, p1

    add-int/lit8 p0, p0, -0x30

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public static parseLong([CII)J
    .locals 5

    const/16 v0, 0x9

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt([CII)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long v1, v1, v3

    add-int/2addr p1, p2

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt([CII)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v1, p0

    return-wide v1
.end method
