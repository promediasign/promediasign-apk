.class public Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;
.super Ljava/text/Format;
.source "SourceFile"


# static fields
.field private static final TO_10_SF:Ljava/math/MathContext;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final decimalFormat:Ljava/text/DecimalFormat;

.field private final decimalSymbols:Ljava/text/DecimalFormatSymbols;

.field private final integerFormat:Ljava/text/DecimalFormat;

.field private final scientificFormat:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/math/MathContext;

    const/16 v1, 0xa

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->TO_10_SF:Ljava/math/MathContext;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#####E0"

    invoke-direct {v0, v1, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->scientificFormat:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->integerFormat:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##########"

    invoke-direct {v0, v1, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x42374876e8000000L    # 1.0E11

    cmpl-double v6, v2, v4

    if-gez v6, :cond_4

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-eqz v6, :cond_3

    const-wide v4, 0x4202a05f20000000L    # 1.0E10

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->TO_10_SF:Ljava/math/MathContext;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->integerFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->scientificFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->integerFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;->integerFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
