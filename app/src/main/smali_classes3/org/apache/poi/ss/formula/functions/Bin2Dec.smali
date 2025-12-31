.class public Lorg/apache/poi/ss/formula/functions/Bin2Dec;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Bin2Dec;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method

.method private getDecimalValue(Ljava/lang/String;)I
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v5, v2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    int-to-double v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int v2, v7

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, -0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return v3
.end method

.method private static toggleBits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-wide/16 v3, 0x1

    shl-long v5, v3, v2

    sub-long/2addr v5, v3

    xor-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 1
    const-string p1, "-"

    instance-of p2, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz p2, :cond_0

    check-cast p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result p2

    invoke-interface {p3, p2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0xa

    if-le p3, v0, :cond_1

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x1

    if-ge p3, v0, :cond_2

    move-object p3, p2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    :goto_1
    if-eqz p2, :cond_3

    :try_start_0
    invoke-direct {p0, p3}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->getDecimalValue(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->toggleBits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->getDecimalValue(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-direct {p2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    :catch_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p2, p1}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method
