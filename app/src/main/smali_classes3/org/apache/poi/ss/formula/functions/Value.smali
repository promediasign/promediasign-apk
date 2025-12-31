.class public final Lorg/apache/poi/ss/formula/functions/Value;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "SourceFile"


# static fields
.field private static final ZERO:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Value;->ZERO:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method

.method private static convertTextToNumber(Ljava/lang/String;)Ljava/lang/Double;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x20

    const/16 v7, 0x2e

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge v2, v0, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-nez v11, :cond_a

    if-ne v10, v7, :cond_0

    goto :goto_4

    :cond_0
    if-eq v10, v6, :cond_9

    const/16 v6, 0x24

    if-eq v10, v6, :cond_7

    const/16 v6, 0x2b

    if-eq v10, v6, :cond_4

    const/16 v6, 0x2d

    if-eq v10, v6, :cond_1

    return-object v9

    :cond_1
    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    :goto_1
    return-object v9

    :cond_4
    if-nez v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    return-object v9

    :cond_7
    if-eqz v3, :cond_8

    return-object v9

    :cond_8
    const/4 v3, 0x1

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    :goto_4
    if-lt v2, v0, :cond_d

    if-nez v3, :cond_c

    if-nez v4, :cond_c

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    sget-object p0, Lorg/apache/poi/ss/formula/functions/Value;->ZERO:Ljava/lang/Double;

    return-object p0

    :cond_c
    :goto_5
    return-object v9

    :cond_d
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v5, -0x8000

    move v5, v2

    const/4 v2, 0x0

    const/16 v10, -0x8000

    :goto_6
    const/4 v11, 0x4

    if-ge v5, v0, :cond_1b

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_e
    if-eq v12, v6, :cond_18

    const/16 v13, 0x25

    if-eq v12, v13, :cond_17

    const/16 v13, 0x2c

    if-eq v12, v13, :cond_14

    if-eq v12, v7, :cond_11

    const/16 v13, 0x45

    if-eq v12, v13, :cond_f

    const/16 v13, 0x65

    if-eq v12, v13, :cond_f

    return-object v9

    :cond_f
    sub-int v12, v5, v10

    if-ge v12, v11, :cond_10

    return-object v9

    :cond_10
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v0

    goto :goto_8

    :cond_11
    if-eqz v1, :cond_12

    return-object v9

    :cond_12
    sub-int v1, v5, v10

    if-ge v1, v11, :cond_13

    return-object v9

    :cond_13
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    goto :goto_8

    :cond_14
    if-eqz v1, :cond_15

    return-object v9

    :cond_15
    sub-int v10, v5, v10

    if-ge v10, v11, :cond_16

    return-object v9

    :cond_16
    move v10, v5

    goto :goto_8

    :cond_17
    :goto_7
    const/4 v2, 0x1

    goto :goto_8

    :cond_18
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    goto :goto_7

    :cond_19
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1a

    return-object v9

    :cond_1a
    :goto_8
    add-int/2addr v5, v8

    goto :goto_6

    :cond_1b
    if-nez v1, :cond_1c

    sub-int/2addr v5, v10

    if-ge v5, v11, :cond_1c

    return-object v9

    :cond_1c
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1d

    neg-double v0, v0

    :cond_1d
    if-eqz v2, :cond_1e

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    :cond_1e
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v9
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Value;->convertTextToNumber(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
