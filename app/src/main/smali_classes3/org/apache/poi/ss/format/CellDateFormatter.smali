.class public Lorg/apache/poi/ss/format/CellDateFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;
    }
.end annotation


# static fields
.field private static SIMPLE_DATE:Lorg/apache/poi/ss/format/CellDateFormatter;


# instance fields
.field private final EXCEL_EPOCH_CAL:Ljava/util/Calendar;

.field private amPmUpper:Z

.field private final dateFmt:Ljava/text/DateFormat;

.field private sFmt:Ljava/lang/String;

.field private showAmPm:Z

.field private showM:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/format/CellDateFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x770

    invoke-static {v2, v0, v1}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(III)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    new-instance v0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;-><init>(Lorg/apache/poi/ss/format/CellDateFormatter;Lorg/apache/poi/ss/format/CellDateFormatter$1;)V

    sget-object v1, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    invoke-static {p2, v1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->finish(Ljava/lang/StringBuffer;)V

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "((y)(?!y))(?<!yy)"

    const-string v1, "yy"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->dateFmt:Ljava/text/DateFormat;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public static synthetic access$002(Lorg/apache/poi/ss/format/CellDateFormatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->sFmt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Lorg/apache/poi/ss/format/CellDateFormatter;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    return p0
.end method

.method public static synthetic access$102(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    return p1
.end method

.method public static synthetic access$200(Lorg/apache/poi/ss/format/CellDateFormatter;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    return p0
.end method

.method public static synthetic access$202(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    return p1
.end method

.method public static synthetic access$302(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->amPmUpper:Z

    return p1
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    instance-of v5, v4, Ljava/lang/Number;

    const-wide/16 v6, 0x3e8

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-nez v10, :cond_1

    iget-object v4, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    goto :goto_1

    :cond_1
    iget-object v8, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    div-long v9, v4, v6

    long-to-int v10, v9

    const/16 v9, 0xd

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    rem-long/2addr v4, v6

    long-to-int v5, v4

    const/16 v4, 0xe

    invoke-virtual {v8, v4, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    :cond_2
    :goto_1
    iget-object v5, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->dateFmt:Ljava/text/DateFormat;

    invoke-virtual {v5, v4}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/text/CharacterIterator;->first()C

    invoke-interface {v5}, Ljava/text/CharacterIterator;->first()C

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    const v11, 0xffff

    if-eq v8, v11, :cond_8

    sget-object v11, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    invoke-interface {v5, v11}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    if-nez v9, :cond_7

    move-object v8, v4

    check-cast v8, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    new-instance v11, Ljava/util/Formatter;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v11, v0, v12}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    :try_start_0
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    rem-long/2addr v12, v6

    iget-object v8, v1, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    iget-object v14, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->sFmt:Ljava/lang/String;

    long-to-double v12, v12

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v15

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v12, v13, v3

    invoke-virtual {v11, v8, v14, v13}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v11}, Ljava/util/Formatter;->close()V

    add-int/lit8 v8, v9, 0x2

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v9, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Ljava/util/Formatter;->close()V

    throw v0

    :cond_3
    sget-object v11, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    invoke-interface {v5, v11}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_6

    if-nez v10, :cond_7

    iget-boolean v10, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    if-eqz v10, :cond_5

    iget-boolean v10, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->amPmUpper:Z

    if-eqz v10, :cond_4

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-boolean v8, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    if-eqz v8, :cond_5

    const/16 v8, 0x4d

    :goto_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-boolean v8, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    if-eqz v8, :cond_5

    const/16 v8, 0x6d

    goto :goto_3

    :cond_5
    :goto_4
    const/4 v10, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    :goto_5
    invoke-interface {v5}, Ljava/text/CharacterIterator;->next()C

    move-result v8

    goto/16 :goto_2

    :cond_8
    return-void
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 3

    const-class v0, Lorg/apache/poi/ss/format/CellDateFormatter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE:Lorg/apache/poi/ss/format/CellDateFormatter;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/format/CellDateFormatter;

    const-string v2, "mm/d/y"

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/format/CellDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE:Lorg/apache/poi/ss/format/CellDateFormatter;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellDateFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
