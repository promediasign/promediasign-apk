.class public Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;
.super Ljava/text/SimpleDateFormat;
.source "SourceFile"


# static fields
.field public static final HH_BRACKET_SYMBOL:C = '\ue011'

.field public static final H_BRACKET_SYMBOL:C = '\ue010'

.field public static final LL_BRACKET_SYMBOL:C = '\ue017'

.field public static final L_BRACKET_SYMBOL:C = '\ue016'

.field public static final MMMMM_START_SYMBOL:C = '\ue001'

.field public static final MMMMM_TRUNCATE_SYMBOL:C = '\ue002'

.field public static final MM_BRACKET_SYMBOL:C = '\ue013'

.field public static final M_BRACKET_SYMBOL:C = '\ue012'

.field public static final SS_BRACKET_SYMBOL:C = '\ue015'

.field public static final S_BRACKET_SYMBOL:C = '\ue014'

.field private static final format1digit:Ljava/text/DecimalFormat;

.field private static final format2digits:Ljava/text/DecimalFormat;

.field private static final format3digit:Ljava/text/DecimalFormat;

.field private static final format4digits:Ljava/text/DecimalFormat;


# instance fields
.field private dateToBeFormatted:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v3, v4, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v4, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    invoke-static {v3, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    invoke-static {v5}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    invoke-static {v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->processFormatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->processFormatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->processFormatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private static processFormatPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "MMMMM"

    const-string v1, "\ue001MMM\ue002"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xe010

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[H]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xe011

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[HH]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xe012

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[m]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xe013

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[mm]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xe014

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[s]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xe015

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[ss]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "s.000"

    const-string v1, "s.SSS"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "s.00"

    const-string v1, "s.\ue017"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "s.0"

    const-string v1, "s.\ue016"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    iget-wide v2, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    iget-wide v4, p1, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 10

    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0xe001

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    const-string p2, "\ue001(\\p{L}|\\p{P})[\\p{L}\\p{P}]+\ue002"

    const-string v0, "$1"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const p2, 0xe010

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    const v2, 0xe011

    if-ne v0, p3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, p3, :cond_2

    :cond_1
    iget-wide v3, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    double-to-float v0, v3

    mul-float v0, v0, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    sget-object v3, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const p2, 0xe012

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const v2, 0xe013

    if-ne v0, p3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, p3, :cond_4

    :cond_3
    iget-wide v3, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    double-to-float v0, v3

    mul-float v0, v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    mul-float v0, v0, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    float-to-double v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const p2, 0xe014

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-wide/high16 v1, 0x4038000000000000L    # 24.0

    const v3, 0xe015

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    if-ne v0, p3, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, p3, :cond_6

    :cond_5
    iget-wide v6, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    mul-double v6, v6, v1

    mul-double v6, v6, v4

    mul-double v6, v6, v4

    double-to-float v0, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    sget-object v6, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    float-to-double v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    const p2, 0xe016

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const v3, 0xe017

    if-ne v0, p3, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, p3, :cond_8

    :cond_7
    iget-wide v6, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double v6, v6, v1

    mul-double v6, v6, v4

    mul-double v6, v6, v4

    double-to-float p3, v6

    float-to-int v0, p3

    int-to-float v0, v0

    sub-float/2addr p3, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v1, v1, p3

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p3, p3, v1

    float-to-double v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, Ljava/lang/Double;

    iget-wide v1, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDateToBeFormatted(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    return-void
.end method
