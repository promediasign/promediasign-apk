.class public Lorg/h2/util/ToChar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/util/ToChar$Capitalization;
    }
.end annotation


# static fields
.field private static final JULIAN_EPOCH:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Ljava/util/GregorianCalendar;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v7, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    new-instance v0, Ljava/sql/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x1269

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/h2/util/ToChar;->JULIAN_EPOCH:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSign(Ljava/lang/StringBuilder;IZZZZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    if-gez p1, :cond_0

    const/16 p1, 0x3c

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_0
    if-eqz p6, :cond_9

    const/16 p1, 0x20

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p5, ""

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    if-gez p1, :cond_3

    const-string p5, "-"

    goto :goto_2

    :cond_3
    if-nez p2, :cond_5

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p6, :cond_6

    const-string p5, " "

    goto :goto_2

    :cond_5
    :goto_1
    const-string p5, "+"

    :cond_6
    :goto_2
    if-nez p4, :cond_8

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v0, p5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    return-void
.end method

.method private static calculateScale(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/16 v2, 0x39

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static varargs containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;
    .locals 10

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_5

    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_4

    move-object v5, v3

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    add-int v7, p1, v6

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_0

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    if-eq v9, v8, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v3, :cond_1

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    :cond_1
    if-nez v5, :cond_2

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v3, v5}, Lorg/h2/util/ToChar$Capitalization;->toCapitalization(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method private static findDecimalSeparator(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getYear(Ljava/util/Calendar;)I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static toChar(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_37

    const-string v5, "TM"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    const-string v5, "TM9"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1c

    :cond_1
    const-string v5, "TME"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "0"

    const/16 v9, 0xa

    const-string v10, ""

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "E"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v1, :cond_2

    const/16 v6, 0x2d

    goto :goto_1

    :cond_2
    const/16 v6, 0x2b

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v9, :cond_3

    goto :goto_2

    :cond_3
    move-object v8, v10

    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v5, "RN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v11, 0x0

    if-eqz v5, :cond_6

    const-string v2, "r"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/h2/util/ToChar;->toRomanNumeral(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    const-string v3, " "

    invoke-static {v0, v2, v3, v11}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    :cond_6
    const-string v5, "FMRN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v12, 0x2

    if-eqz v5, :cond_9

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/h2/util/ToChar;->toRomanNumeral(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0

    :cond_9
    const-string v5, "X"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static/range {p0 .. p1}, Lorg/h2/util/ToChar;->toHex(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v13

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    const-string v14, "S"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_b
    move-object v15, v1

    :goto_4
    invoke-virtual {v3, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1
    invoke-static {v15, v4, v11}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    .line 2
    :cond_c
    const-string v14, "MI"

    invoke-virtual {v3, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 3
    invoke-static {v15, v12, v11}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    .line 4
    :cond_d
    const-string v14, "PR"

    invoke-virtual {v3, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 5
    invoke-static {v15, v12, v11}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    .line 6
    :cond_e
    const-string v14, "V"

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v2, 0x39

    const/16 v6, 0x30

    if-ltz v14, :cond_12

    add-int/lit8 v7, v14, 0x1

    move v9, v7

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v9, v4, :cond_11

    invoke-virtual {v15, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_f

    if-ne v4, v2, :cond_10

    :cond_f
    add-int/lit8 v12, v12, 0x1

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {v0, v12}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_12
    const-string v4, "EEEE"

    invoke-virtual {v15, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x4

    if-eqz v4, :cond_13

    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v4

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v9

    sub-int/2addr v4, v9

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 7
    invoke-static {v15, v7, v11}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    :cond_13
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 8
    :goto_6
    const-string v4, "FM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v9

    if-nez v3, :cond_14

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :cond_14
    const-string v4, "[Bb]"

    invoke-virtual {v15, v4, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/util/ToChar;->findDecimalSeparator(Ljava/lang/String;)I

    move-result v9

    invoke-static {v4, v9}, Lorg/h2/util/ToChar;->calculateScale(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v15

    if-ge v14, v15, :cond_15

    invoke-virtual {v0, v14, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_15
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    :goto_7
    if-ltz v7, :cond_17

    if-ge v7, v9, :cond_17

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v2, :cond_16

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v7, 0x1

    .line 9
    invoke-static {v4, v15, v14}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 10
    :cond_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v15

    sget-object v11, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v15, v11}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v11

    if-gez v11, :cond_18

    invoke-static {v0}, Lorg/h2/util/ToChar;->zeroesAfterDecimalSeparator(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_18
    move-object v11, v10

    :goto_8
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v14, v9, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v16

    sub-int v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    const/16 v16, 0x1

    :goto_9
    if-ltz v14, :cond_28

    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v22, v16, 0x1

    if-eq v6, v2, :cond_19

    const/16 v2, 0x30

    if-ne v6, v2, :cond_1a

    :cond_19
    move-object/from16 v23, v8

    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_1a
    const/16 v2, 0x2c

    if-ne v6, v2, :cond_1d

    if-gez v15, :cond_1c

    if-lez v14, :cond_1b

    add-int/lit8 v2, v14, -0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v23, v8

    const/16 v8, 0x30

    if-ne v2, v8, :cond_26

    :goto_a
    const/4 v2, 0x0

    goto :goto_b

    :cond_1b
    move-object/from16 v23, v8

    goto/16 :goto_10

    :cond_1c
    move-object/from16 v23, v8

    goto :goto_a

    :goto_b
    invoke-virtual {v7, v2, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :cond_1d
    move-object/from16 v23, v8

    const/16 v2, 0x47

    if-eq v6, v2, :cond_24

    const/16 v2, 0x67

    if-ne v6, v2, :cond_1e

    goto :goto_e

    :cond_1e
    const/16 v2, 0x43

    if-eq v6, v2, :cond_1f

    const/16 v2, 0x63

    if-ne v6, v2, :cond_20

    :cond_1f
    const/4 v6, 0x0

    goto :goto_d

    :cond_20
    const/16 v2, 0x4c

    if-eq v6, v2, :cond_21

    const/16 v2, 0x6c

    if-eq v6, v2, :cond_21

    const/16 v2, 0x55

    if-eq v6, v2, :cond_21

    const/16 v2, 0x75

    if-ne v6, v2, :cond_22

    :cond_21
    const/4 v6, 0x0

    goto :goto_c

    :cond_22
    const/16 v2, 0x24

    if-ne v6, v2, :cond_23

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_23
    const v2, 0x15f9a

    invoke-static {v2, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :goto_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v16, v16, 0xa

    goto :goto_11

    :goto_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v16, v16, 0x7

    goto :goto_11

    :cond_24
    :goto_e
    if-gez v15, :cond_25

    if-lez v14, :cond_26

    add-int/lit8 v2, v14, -0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x30

    if-ne v2, v6, :cond_26

    :cond_25
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_10

    :goto_f
    if-ltz v15, :cond_27

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v2, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, -0x1

    :cond_26
    :goto_10
    move/from16 v16, v22

    goto :goto_11

    :cond_27
    const/16 v8, 0x30

    if-ne v6, v8, :cond_26

    if-nez v12, :cond_26

    invoke-virtual {v7, v2, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_10

    :goto_11
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v8, v23

    const/16 v2, 0x39

    goto/16 :goto_9

    :cond_28
    move-object/from16 v23, v8

    if-ltz v15, :cond_29

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "#"

    invoke-static {v10, v0, v2, v1}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v9, v2, :cond_31

    add-int/lit8 v16, v16, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x64

    if-eq v2, v6, :cond_2b

    const/16 v6, 0x44

    if-ne v2, v6, :cond_2a

    goto :goto_13

    :cond_2a
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_12
    const/4 v2, 0x1

    goto :goto_14

    :cond_2b
    :goto_13
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :goto_14
    add-int/2addr v9, v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    sub-int/2addr v2, v5

    :goto_15
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v9, v5, :cond_31

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v16, v16, 0x1

    const/16 v6, 0x39

    if-eq v5, v6, :cond_2c

    const/16 v8, 0x30

    if-ne v5, v8, :cond_2d

    :cond_2c
    const v8, 0x15f9a

    goto :goto_16

    :cond_2d
    const v8, 0x15f9a

    invoke-static {v8, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :goto_16
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v2, v13, :cond_2e

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/16 v13, 0x30

    goto :goto_17

    :cond_2e
    const/16 v13, 0x30

    if-eq v5, v13, :cond_2f

    if-eqz v3, :cond_30

    :cond_2f
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_30
    :goto_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_31
    move/from16 v1, v16

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v16

    move-object v15, v7

    move/from16 v21, v3

    invoke-static/range {v15 .. v21}, Lorg/h2/util/ToChar;->addSign(Ljava/lang/StringBuilder;IZZZZZ)V

    if-eqz v12, :cond_34

    const/16 v0, 0x45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_32

    const/16 v6, 0x2d

    goto :goto_18

    :cond_32
    const/16 v6, 0x2b

    :goto_18
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_33

    move-object/from16 v8, v23

    goto :goto_19

    :cond_33
    move-object v8, v10

    :goto_19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_34
    if-eqz v3, :cond_36

    const/16 v0, 0x20

    const/4 v2, 0x0

    if-eqz v12, :cond_35

    invoke-virtual {v7, v2, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_35
    :goto_1a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v3, v1, :cond_36

    invoke-virtual {v7, v2, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_36
    :goto_1b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_37
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_38
    return-object v0
.end method

.method public static toChar(Ljava/sql/Timestamp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 28

    .line 16
    move-object/from16 v0, p0

    const-string v1, "0000"

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-nez p1, :cond_0

    const-string v12, "DD-MON-YY HH.MI.SS.FF PM"

    goto :goto_0

    :cond_0
    move-object/from16 v12, p1

    :goto_0
    new-instance v13, Ljava/util/GregorianCalendar;

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v13, v14}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    invoke-virtual/range {p0 .. p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v15, v2, :cond_32

    const-string v2, "A.D."

    const-string v3, "B.C."

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v15, v4}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v10, :cond_1

    goto :goto_2

    :cond_1
    move-object v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x4

    :goto_4
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/16 v6, 0xe

    :goto_5
    const/16 v7, 0x2d

    const/4 v9, 0x0

    :goto_6
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_1d

    :cond_2
    const-string v2, "AD"

    const-string v3, "BC"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v15, v4}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v10, :cond_3

    goto :goto_7

    :cond_3
    move-object v2, v3

    :goto_7
    invoke-virtual {v4, v2}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v15, v11

    goto :goto_4

    :cond_4
    const-string v2, "A.M."

    const-string v3, "P.M."

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v15, v4}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v4

    const/16 v5, 0x9

    if-eqz v4, :cond_5

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_5
    const-string v2, "AM"

    const-string v3, "PM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v15, v4}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_7

    :cond_6
    const-string v2, "DL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEEE, MMMM d, yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_7
    const-string v2, "DS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const-string v2, "TS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "h:mm:ss aa"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    const-string v2, "DDD"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x6

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_a
    add-int/2addr v15, v9

    goto/16 :goto_4

    :cond_a
    const-string v2, "DD"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    const-string v3, "%02d"

    if-eqz v2, :cond_b

    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :cond_b
    const-string v2, "DY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEE"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :cond_c
    const-string v2, "DAY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    const-string v4, " "

    if-eqz v2, :cond_e

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "EEEE"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    if-eqz v16, :cond_d

    invoke-static {v3, v5, v4, v10}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    :cond_d
    invoke-virtual {v2, v3}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_e
    const-string v2, "D"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    const/4 v7, 0x7

    if-eqz v2, :cond_f

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_b
    add-int/2addr v15, v10

    goto/16 :goto_4

    :cond_f
    const-string v2, "J"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    sget-wide v4, Lorg/h2/util/ToChar;->JULIAN_EPOCH:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_10
    const-string v2, "HH24"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    const/16 v5, 0xb

    const-string v10, "00"

    if-eqz v2, :cond_11

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    :goto_c
    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_11
    const-string v2, "HH12"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    const/16 v7, 0xa

    if-eqz v2, :cond_12

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_c

    :cond_12
    const-string v2, "HH"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    if-eqz v2, :cond_13

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    :goto_e
    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :cond_13
    const-string v2, "MI"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    const/16 v7, 0xc

    if-eqz v2, :cond_14

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :cond_14
    const-string v2, "SSSSS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0xe10

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v2

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v15, v8

    goto/16 :goto_4

    :cond_15
    const-string v2, "SS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    if-eqz v2, :cond_16

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_e

    :cond_16
    const-string v26, "FF8"

    const-string v27, "FF9"

    const-string v19, "FF1"

    const-string v20, "FF2"

    const-string v21, "FF3"

    const-string v22, "FF4"

    const-string v23, "FF5"

    const-string v24, "FF6"

    const-string v25, "FF7"

    filled-new-array/range {v19 .. v27}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v15, v2}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v2

    if-eqz v2, :cond_17

    add-int/lit8 v2, v15, 0x2

    add-int/2addr v15, v9

    invoke-virtual {v12, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-double v3, v4

    sub-int/2addr v2, v9

    int-to-double v6, v2

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v3

    double-to-int v3, v6

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_17
    const-string v6, "FF"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v15, v6}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v6

    if-eqz v6, :cond_18

    const/16 v6, 0xe

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    :goto_f
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_10
    add-int/2addr v15, v11

    :goto_11
    const/4 v2, 0x5

    :goto_12
    const/4 v3, 0x1

    :goto_13
    const/4 v4, 0x3

    goto/16 :goto_5

    :cond_18
    const/16 v6, 0xe

    const-string v7, "TZR"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v15, v7}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v7

    if-eqz v7, :cond_19

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    :goto_14
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    add-int/2addr v15, v3

    goto :goto_11

    :cond_19
    const-string v7, "TZD"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v15, v7}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v7

    if-eqz v7, :cond_1a

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    :goto_15
    add-int/2addr v15, v7

    goto :goto_11

    :cond_1a
    const/4 v7, 0x3

    const-string v8, "IW"

    const-string v9, "WW"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v15, v8}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v8

    if-eqz v8, :cond_1b

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_f

    :cond_1b
    const-string v7, "W"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v15, v7}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v7

    if-eqz v7, :cond_1c

    const/4 v2, 0x5

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x7

    div-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    add-int/2addr v15, v3

    const/4 v2, 0x5

    goto :goto_13

    :cond_1c
    const-string v7, "Y,YYY"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v15, v7}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v7

    if-eqz v7, :cond_1d

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#,###"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {v13}, Lorg/h2/util/ToChar;->getYear(Ljava/util/Calendar;)I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    add-int/2addr v15, v2

    goto/16 :goto_11

    :cond_1d
    const-string v7, "SYYYY"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v15, v7}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_1e

    const/16 v3, 0x2d

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1e
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :cond_1f
    const-string v7, "IYYY"

    const-string v8, "RRRR"

    const-string v9, "YYYY"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v15, v7}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v7

    if-eqz v7, :cond_20

    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lorg/h2/util/ToChar;->getYear(Ljava/util/Calendar;)I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x4

    goto/16 :goto_11

    :cond_20
    const-string v7, "YYY"

    const-string v8, "IYY"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v15, v7}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v7

    if-eqz v7, :cond_21

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lorg/h2/util/ToChar;->getYear(Ljava/util/Calendar;)I

    move-result v4

    rem-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_14

    :cond_21
    const-string v7, "IY"

    const-string v8, "RR"

    const-string v9, "YY"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v15, v7}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v7

    if-eqz v7, :cond_22

    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lorg/h2/util/ToChar;->getYear(Ljava/util/Calendar;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    int-to-long v7, v4

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :cond_22
    const-string v7, "I"

    const-string v8, "Y"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v15, v7}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v7

    if-eqz v7, :cond_23

    invoke-static {v13}, Lorg/h2/util/ToChar;->getYear(Ljava/util/Calendar;)I

    move-result v3

    const/16 v4, 0xa

    rem-int/2addr v3, v4

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    goto/16 :goto_15

    :cond_23
    const/4 v7, 0x1

    const-string v8, "MONTH"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v15, v8}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v8

    if-eqz v8, :cond_25

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v9, "MMMM"

    invoke-direct {v3, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    if-eqz v16, :cond_24

    const/16 v9, 0x9

    invoke-static {v3, v9, v4, v7}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    :cond_24
    invoke-virtual {v8, v3}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    add-int/2addr v15, v2

    goto/16 :goto_12

    :cond_25
    const/4 v2, 0x5

    const-string v4, "MON"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v15, v4}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v4

    if-eqz v4, :cond_26

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "MMM"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    add-int/2addr v15, v3

    goto/16 :goto_12

    :cond_26
    const-string v4, "MM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v15, v4}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v13, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_17
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v15, v11

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/16 v7, 0x2d

    goto/16 :goto_6

    :cond_27
    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string v3, "RM"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v15, v3}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual {v13, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v7

    invoke-static {v4}, Lorg/h2/util/ToChar;->toRomanNumeral(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/util/ToChar$Capitalization;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    :cond_28
    const-string v3, "Q"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v15, v3}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v13, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x3

    div-int/2addr v3, v4

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v7, v7, v17

    double-to-int v3, v7

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :cond_29
    :goto_18
    add-int/2addr v15, v3

    :cond_2a
    :goto_19
    const/16 v7, 0x2d

    goto/16 :goto_1d

    :cond_2b
    const/4 v3, 0x1

    const/4 v4, 0x3

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-string v7, "X"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v15, v7}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v7

    if-eqz v7, :cond_2c

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_2c
    const-string v7, "FM"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v15, v7}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v7

    if-eqz v7, :cond_2d

    xor-int/lit8 v16, v16, 0x1

    :goto_1a
    add-int/2addr v15, v11

    const/4 v3, 0x1

    goto :goto_19

    :cond_2d
    const-string v3, "FX"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v15, v3}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v3

    if-eqz v3, :cond_2e

    goto :goto_1a

    :cond_2e
    const-string v3, "\""

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v15, v3}, Lorg/h2/util/ToChar;->containsAt(Ljava/lang/String;I[Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;

    move-result-object v3

    if-eqz v3, :cond_2f

    const/4 v3, 0x1

    :goto_1b
    add-int/2addr v15, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v15, v7, :cond_2a

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_29

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_2f
    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x2d

    if-eq v3, v7, :cond_31

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x2f

    if-eq v3, v8, :cond_31

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x2c

    if-eq v3, v8, :cond_31

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x2e

    if-eq v3, v8, :cond_31

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x3b

    if-eq v3, v8, :cond_31

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x3a

    if-eq v3, v8, :cond_31

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x20

    if-ne v3, v8, :cond_30

    goto :goto_1c

    :cond_30
    const v0, 0x15f9a

    invoke-static {v0, v12}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_31
    :goto_1c
    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    add-int/2addr v15, v3

    :goto_1d
    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_32
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toHex(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-eq v8, v9, :cond_0

    const/16 v9, 0x58

    if-eq v8, v9, :cond_0

    const/16 v9, 0x78

    if-ne v8, v9, :cond_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v7, v6, :cond_3

    add-int/2addr v7, v1

    const-string p0, "#"

    const-string p1, ""

    invoke-static {p1, v7, p0, v1}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    if-eqz v4, :cond_5

    invoke-static {p0, v7, v3, v5}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    const-string v0, " "

    invoke-static {p0, p1, v0, v5}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_1
    return-object p0
.end method

.method private static toRomanNumeral(I)Ljava/lang/String;
    .locals 15

    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-string v13, "IV"

    const-string v14, "I"

    const-string v2, "M"

    const-string v3, "CM"

    const-string v4, "D"

    const-string v5, "CD"

    const-string v6, "C"

    const-string v7, "XC"

    const-string v8, "L"

    const-string v9, "XL"

    const-string v10, "X"

    const-string v11, "IX"

    const-string v12, "V"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget v5, v1, v4

    aget-object v6, v2, v4

    :goto_1
    if-lt p0, v5, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x3e8
        0x384
        0x1f4
        0x190
        0x64
        0x5a
        0x32
        0x28
        0xa
        0x9
        0x5
        0x4
        0x1
    .end array-data
.end method

.method private static zeroesAfterDecimalSeparator(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x30

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    add-int/lit8 v1, p0, -0x1

    :goto_1
    new-array p0, v1, [C

    invoke-static {p0, v3}, Ljava/util/Arrays;->fill([CC)V

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
