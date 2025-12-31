.class public Lorg/apache/poi/ss/usermodel/FractionFormat;
.super Ljava/text/Format;
.source "SourceFile"


# static fields
.field private static final DENOM_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOGGER:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final exactDenom:I

.field private final maxDenom:I

.field private final wholePartFormatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/FractionFormat;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->LOGGER:Lorg/apache/poi/util/POILogger;

    const-string v0, "(?:(#+)|(\\d+))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/FractionFormat;->DENOM_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->wholePartFormatString:Ljava/lang/String;

    sget-object p1, Lorg/apache/poi/ss/usermodel/FractionFormat;->DENOM_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    const/16 v0, 0x64

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    move v1, p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x4

    if-le p1, p2, :cond_3

    const/4 p1, 0x4

    :cond_3
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double p1, p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-int p1, p1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    const/16 v1, 0x64

    :goto_1
    if-gtz v1, :cond_5

    if-gtz p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    iput v0, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    iput p1, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->maxDenom:I

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Number;)Ljava/lang/String;
    .locals 13

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const/4 p1, 0x1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    add-double v10, v8, v6

    cmpl-double v12, v10, v3

    if-nez v12, :cond_1

    const-string p1, "0"

    return-object p1

    :cond_1
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v10

    const-string v11, "-"

    if-nez v10, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_2

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    double-to-int v0, v8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :try_start_0
    iget v10, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->exactDenom:I

    if-lez v10, :cond_4

    invoke-static {v6, v7, v10}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionExactDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v3

    goto/16 :goto_2

    :cond_4
    iget v10, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->maxDenom:I

    invoke-static {v6, v7, v10}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_5

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v2, ""

    iget-object v5, p0, Lorg/apache/poi/ss/usermodel/FractionFormat;->wholePartFormatString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "/"

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result p1

    double-to-int v2, v8

    mul-int p1, p1, v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v2

    if-nez v2, :cond_7

    double-to-int p1, v8

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v6

    if-ne v2, v6, :cond_8

    double-to-int v0, v8

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    cmpl-double p1, v8, v3

    if-lez p1, :cond_9

    double-to-int p1, v8

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_2
    sget-object v4, Lorg/apache/poi/ss/usermodel/FractionFormat;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Can\'t format fraction"

    aput-object v6, v5, v0

    aput-object v3, v5, p1

    const/4 p1, 0x5

    invoke-virtual {v4, p1, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/FractionFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string p2, "Reverse parsing not supported"

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
