.class public final Lorg/apache/xmlbeans/GDuration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/GDurationSpecification;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _CY:I

.field private _D:I

.field private _M:I

.field private _fs:Ljava/math/BigDecimal;

.field private _h:I

.field private _m:I

.field private _s:I

.field private _sign:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/GDuration;->_sign:I

    sget-object v0, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    iput-object v0, p0, Lorg/apache/xmlbeans/GDuration;->_fs:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(IIIIIIILjava/math/BigDecimal;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/xmlbeans/GDuration;->_sign:I

    iput p2, p0, Lorg/apache/xmlbeans/GDuration;->_CY:I

    iput p3, p0, Lorg/apache/xmlbeans/GDuration;->_M:I

    iput p4, p0, Lorg/apache/xmlbeans/GDuration;->_D:I

    iput p5, p0, Lorg/apache/xmlbeans/GDuration;->_h:I

    iput p6, p0, Lorg/apache/xmlbeans/GDuration;->_m:I

    iput p7, p0, Lorg/apache/xmlbeans/GDuration;->_s:I

    if-nez p8, :cond_2

    sget-object p8, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    :cond_2
    iput-object p8, p0, Lorg/apache/xmlbeans/GDuration;->_fs:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 16

    .line 3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/GDate;->isSpace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xmlbeans/GDate;->isSpace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    iput v5, v0, Lorg/apache/xmlbeans/GDuration;->_sign:I

    if-ge v4, v2, :cond_2

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_2

    const/4 v6, -0x1

    iput v6, v0, Lorg/apache/xmlbeans/GDuration;->_sign:I

    add-int/lit8 v4, v4, 0x1

    :cond_2
    if-ge v4, v2, :cond_1a

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x50

    if-ne v6, v7, :cond_1a

    add-int/2addr v4, v5

    sget-object v6, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    iput-object v6, v0, Lorg/apache/xmlbeans/GDuration;->_fs:Ljava/math/BigDecimal;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v4, v2, :cond_18

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x54

    const-string v10, "illegal duration"

    const/4 v11, 0x3

    if-ne v8, v9, :cond_6

    if-nez v7, :cond_5

    if-gt v6, v11, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v2, :cond_3

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "T in duration must precede time fields"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duration must have no more than one T\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_3
    invoke-static {v8}, Lorg/apache/xmlbeans/GDate;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-static {v8}, Lorg/apache/xmlbeans/GDate;->digitVal(C)I

    move-result v8

    :goto_4
    add-int/2addr v4, v5

    if-ge v4, v2, :cond_7

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    invoke-static {v9}, Lorg/apache/xmlbeans/GDate;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_16

    const/16 v12, 0x2e

    const/16 v13, 0x53

    if-ne v9, v12, :cond_b

    move v12, v4

    :cond_8
    add-int/2addr v12, v5

    if-ge v12, v2, :cond_9

    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lorg/apache/xmlbeans/GDate;->isDigit(C)Z

    move-result v14

    if-nez v14, :cond_8

    :cond_9
    new-instance v14, Ljava/math/BigDecimal;

    invoke-interface {v1, v4, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v14, v0, Lorg/apache/xmlbeans/GDuration;->_fs:Ljava/math/BigDecimal;

    if-ge v12, v2, :cond_a

    if-ne v9, v13, :cond_a

    move v4, v12

    goto :goto_6

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_6
    const/16 v10, 0x4d

    const/4 v12, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x2

    const-string v3, "time in duration must follow T"

    if-eqz v6, :cond_c

    if-eq v6, v5, :cond_d

    if-eq v6, v15, :cond_e

    if-eq v6, v11, :cond_f

    if-eq v6, v14, :cond_11

    if-ne v6, v12, :cond_15

    goto :goto_7

    :cond_c
    const/16 v6, 0x59

    if-ne v9, v6, :cond_d

    iput v8, v0, Lorg/apache/xmlbeans/GDuration;->_CY:I

    const/4 v6, 0x1

    goto :goto_8

    :cond_d
    if-ne v9, v10, :cond_e

    iput v8, v0, Lorg/apache/xmlbeans/GDuration;->_M:I

    const/4 v6, 0x2

    goto :goto_8

    :cond_e
    const/16 v6, 0x44

    if-ne v9, v6, :cond_f

    iput v8, v0, Lorg/apache/xmlbeans/GDuration;->_D:I

    const/4 v6, 0x3

    goto :goto_8

    :cond_f
    const/16 v6, 0x48

    if-ne v9, v6, :cond_11

    if-eqz v7, :cond_10

    iput v8, v0, Lorg/apache/xmlbeans/GDuration;->_h:I

    const/4 v6, 0x4

    goto :goto_8

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    if-ne v9, v10, :cond_13

    if-eqz v7, :cond_12

    iput v8, v0, Lorg/apache/xmlbeans/GDuration;->_m:I

    const/4 v6, 0x5

    goto :goto_8

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_7
    if-ne v9, v13, :cond_15

    if-eqz v7, :cond_14

    iput v8, v0, Lorg/apache/xmlbeans/GDuration;->_s:I

    const/4 v3, 0x6

    const/4 v6, 0x6

    :goto_8
    add-int/2addr v4, v5

    goto/16 :goto_2

    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duration must specify Y M D T H M S in order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    mul-int/lit8 v8, v8, 0xa

    invoke-static {v9}, Lorg/apache/xmlbeans/GDate;->digitVal(C)I

    move-result v3

    add-int/2addr v8, v3

    goto/16 :goto_4

    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "illegal duration at char["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "]: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    if-eqz v6, :cond_19

    return-void

    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "duration must contain at least one number and its designator: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duration must begin with P"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/GDurationSpecification;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getSign()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDuration;->_sign:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getYear()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDuration;->_CY:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getMonth()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDuration;->_M:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getDay()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDuration;->_D:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getHour()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDuration;->_h:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getMinute()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDuration;->_m:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getSecond()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDuration;->_s:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/GDuration;->_fs:Ljava/math/BigDecimal;

    return-void
.end method

.method private _add(Lorg/apache/xmlbeans/GDurationSpecification;I)Lorg/apache/xmlbeans/GDuration;
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/GDuration;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDuration;-><init>(Lorg/apache/xmlbeans/GDurationSpecification;)V

    iget v1, v0, Lorg/apache/xmlbeans/GDuration;->_CY:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getYear()I

    move-result v2

    mul-int v2, v2, p2

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xmlbeans/GDuration;->_CY:I

    iget v1, v0, Lorg/apache/xmlbeans/GDuration;->_M:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getMonth()I

    move-result v2

    mul-int v2, v2, p2

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xmlbeans/GDuration;->_M:I

    iget v1, v0, Lorg/apache/xmlbeans/GDuration;->_D:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getDay()I

    move-result v2

    mul-int v2, v2, p2

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xmlbeans/GDuration;->_D:I

    iget v1, v0, Lorg/apache/xmlbeans/GDuration;->_h:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getHour()I

    move-result v2

    mul-int v2, v2, p2

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xmlbeans/GDuration;->_h:I

    iget v1, v0, Lorg/apache/xmlbeans/GDuration;->_m:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getMinute()I

    move-result v2

    mul-int v2, v2, p2

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xmlbeans/GDuration;->_m:I

    iget v1, v0, Lorg/apache/xmlbeans/GDuration;->_s:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getSecond()I

    move-result v2

    mul-int v2, v2, p2

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xmlbeans/GDuration;->_s:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, v0, Lorg/apache/xmlbeans/GDuration;->_fs:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lorg/apache/xmlbeans/GDuration;->_fs:Ljava/math/BigDecimal;

    goto :goto_1

    :cond_1
    if-lez p2, :cond_2

    iget-object p2, v0, Lorg/apache/xmlbeans/GDuration;->_fs:Ljava/math/BigDecimal;

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p2, v0, Lorg/apache/xmlbeans/GDuration;->_fs:Ljava/math/BigDecimal;

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/xmlbeans/GDurationSpecification;)Lorg/apache/xmlbeans/GDuration;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_sign:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getSign()I

    move-result v1

    mul-int v1, v1, v0

    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/GDuration;->_add(Lorg/apache/xmlbeans/GDurationSpecification;I)Lorg/apache/xmlbeans/GDuration;

    move-result-object p1

    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/GDuration;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDuration;-><init>(Lorg/apache/xmlbeans/GDurationSpecification;)V

    return-object v0
.end method

.method public final compareToGDuration(Lorg/apache/xmlbeans/GDurationSpecification;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/GDurationBuilder;->compareDurations(Lorg/apache/xmlbeans/GDurationSpecification;Lorg/apache/xmlbeans/GDurationSpecification;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/xmlbeans/GDuration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/xmlbeans/GDuration;

    iget v1, p0, Lorg/apache/xmlbeans/GDuration;->_sign:I

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDuration;->getSign()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/xmlbeans/GDuration;->_CY:I

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDuration;->getYear()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/xmlbeans/GDuration;->_M:I

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDuration;->getMonth()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/xmlbeans/GDuration;->_D:I

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDuration;->getDay()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/xmlbeans/GDuration;->_h:I

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDuration;->getHour()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/xmlbeans/GDuration;->_m:I

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDuration;->getMinute()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/xmlbeans/GDuration;->_s:I

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDuration;->getSecond()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/GDuration;->_fs:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDuration;->getFraction()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getDay()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_D:I

    return v0
.end method

.method public getFraction()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/GDuration;->_fs:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getHour()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_h:I

    return v0
.end method

.method public final getMinute()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_m:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_M:I

    return v0
.end method

.method public final getSecond()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_s:I

    return v0
.end method

.method public final getSign()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_sign:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_CY:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_s:I

    iget v1, p0, Lorg/apache/xmlbeans/GDuration;->_m:I

    mul-int/lit8 v1, v1, 0x43

    add-int/2addr v1, v0

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_h:I

    mul-int/lit16 v0, v0, 0xe17

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xmlbeans/GDuration;->_D:I

    const v2, 0x15187

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_M:I

    const v2, 0x28de87

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xmlbeans/GDuration;->_CY:I

    const v2, 0x1ea6e07

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_sign:I

    const v2, 0xb5d6f9

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final isImmutable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/GDurationBuilder;->isValidDuration(Lorg/apache/xmlbeans/GDurationSpecification;)Z

    move-result v0

    return v0
.end method

.method public subtract(Lorg/apache/xmlbeans/GDurationSpecification;)Lorg/apache/xmlbeans/GDuration;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/GDuration;->_sign:I

    neg-int v0, v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getSign()I

    move-result v1

    mul-int v1, v1, v0

    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/GDuration;->_add(Lorg/apache/xmlbeans/GDurationSpecification;I)Lorg/apache/xmlbeans/GDuration;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/GDurationBuilder;->formatDuration(Lorg/apache/xmlbeans/GDurationSpecification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
