.class public Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateNonWeekendHolidays(DD[D)I
    .locals 16

    move-object/from16 v0, p5

    cmpg-double v1, p1, p3

    if-gez v1, :cond_0

    move-wide/from16 v9, p1

    goto :goto_0

    :cond_0
    move-wide/from16 v9, p3

    :goto_0
    cmpl-double v2, p3, p1

    if-lez v2, :cond_1

    move-wide/from16 v11, p3

    goto :goto_1

    :cond_1
    move-wide/from16 v11, p1

    :goto_1
    array-length v13, v0

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v14, v13, :cond_4

    aget-wide v7, v0, v14

    move-object/from16 v2, p0

    move-wide v3, v9

    move-wide v5, v11

    move-wide/from16 p1, v7

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isInARange(DDD)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isWeekend(D)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v2, p0

    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v2, p0

    if-gtz v1, :cond_5

    goto :goto_4

    :cond_5
    neg-int v15, v15

    :goto_4
    return v15
.end method

.method public calculateWorkdays(DD[D)I
    .locals 7

    .line 1
    const/4 v5, 0x7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->pastDaysOfWeek(DDI)I

    move-result v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->pastDaysOfWeek(DDI)I

    move-result v1

    invoke-virtual/range {p0 .. p5}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->calculateNonWeekendHolidays(DD[D)I

    move-result p5

    sub-double/2addr p3, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, p1

    double-to-int p1, p3

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    sub-int/2addr p1, p5

    return p1
.end method

.method public calculateWorkdays(DI[D)Ljava/util/Date;
    .locals 6

    .line 2
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object p1

    const/4 p2, 0x1

    if-gez p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v2

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    const/4 p1, 0x6

    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->add(II)V

    int-to-double v4, v0

    add-double/2addr v2, v4

    const/4 p1, 0x7

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, p1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, v2, v3, p4}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isHoliday(D[D)Z

    move-result p1

    if-nez p1, :cond_1

    sub-int/2addr p3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public isHoliday(D[D)Z
    .locals 8

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isInARange(DDD)Z
    .locals 1

    cmpl-double v0, p5, p1

    if-ltz v0, :cond_0

    cmpg-double p1, p5, p3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNonWorkday(D[D)I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isWeekend(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isHoliday(D[D)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isWeekend(D)Z
    .locals 2

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x7

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public pastDaysOfWeek(DDI)I
    .locals 4

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    move-wide v1, p1

    goto :goto_0

    :cond_0
    move-wide v1, p3

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    cmpl-double v2, p3, p1

    if-lez v2, :cond_1

    move-wide p1, p3

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/4 p2, 0x0

    :goto_1
    if-gt v1, p1, :cond_3

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object p3

    int-to-double v2, v1

    invoke-static {v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p4, 0x7

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne p3, p5, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    neg-int p2, p2

    :goto_2
    return p2
.end method
