.class public Lorg/apache/poi/ss/usermodel/DateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
    }
.end annotation


# static fields
.field public static final DAY_MILLISECONDS:J = 0x5265c00L

.field public static final HOURS_PER_DAY:I = 0x18

.field public static final MINUTES_PER_HOUR:I = 0x3c

.field public static final SECONDS_PER_DAY:I = 0x15180

.field public static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final date_ptrn1:Ljava/util/regex/Pattern;

.field private static final date_ptrn2:Ljava/util/regex/Pattern;

.field private static final date_ptrn3a:Ljava/util/regex/Pattern;

.field private static final date_ptrn3b:Ljava/util/regex/Pattern;

.field private static final date_ptrn4:Ljava/util/regex/Pattern;

.field private static final date_ptrn5:Ljava/util/regex/Pattern;

.field private static lastCachedResult:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static lastFormatIndex:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static lastFormatString:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\[\\$\\-.*?\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn1:Ljava/util/regex/Pattern;

    const-string v0, "^\\[[a-zA-Z]+\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn2:Ljava/util/regex/Pattern;

    const-string v0, "[yYmMdDhHsS]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3a:Ljava/util/regex/Pattern;

    const-string v0, "^[\\[\\]yYmMdDhHsS\\-T/\u5e74\u6708\u65e5,. :\"\\\\]+0*[ampAMP/]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3b:Ljava/util/regex/Pattern;

    const-string v0, "^\\[([hH]+|[mM]+|[sS]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn4:Ljava/util/regex/Pattern;

    const-string v0, "^\\[DBNum(1|2|3)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn5:Ljava/util/regex/Pattern;

    new-instance v0, Lorg/apache/poi/ss/usermodel/DateUtil$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DateUtil$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absoluteDay(Ljava/util/Calendar;Z)I
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->daysInPriorYears(IZ)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static cache(Ljava/lang/String;IZ)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object p1, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object p0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static convertTime(Ljava/lang/String;)D
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->convertTimeInternal(Ljava/lang/String;)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/usermodel/DateUtil$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-wide v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    const-string v1, "Bad time format \'"

    .line 8
    .line 9
    const-string v2, "\' expected \'HH:MM\' or \'HH:MM:SS\' - "

    .line 10
    .line 11
    invoke-static {v1, p0, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method private static convertTimeInternal(Ljava/lang/String;)D
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-gt v0, v1, :cond_2

    .line 11
    .line 12
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    array-length v0, p0

    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    aget-object v0, p0, v1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Expected 2 or 3 fields but got ("

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    array-length p0, p0

    .line 38
    const-string v2, ")"

    .line 39
    .line 40
    invoke-static {v2, p0, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    const-string v0, "00"

    .line 49
    .line 50
    :goto_0
    const/4 v1, 0x0

    .line 51
    aget-object v1, p0, v1

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    aget-object p0, p0, v2

    .line 55
    .line 56
    const-string v2, "hour"

    .line 57
    .line 58
    const/16 v3, 0x18

    .line 59
    .line 60
    invoke-static {v1, v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const-string v2, "minute"

    .line 65
    .line 66
    const/16 v3, 0x3c

    .line 67
    .line 68
    invoke-static {p0, v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    const-string v2, "second"

    .line 73
    .line 74
    invoke-static {v0, v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    mul-int/lit8 v1, v1, 0x3c

    .line 79
    .line 80
    add-int/2addr v1, p0

    .line 81
    mul-int/lit8 v1, v1, 0x3c

    .line 82
    .line 83
    add-int/2addr v1, v0

    .line 84
    int-to-double v0, v1

    .line 85
    const-wide v2, 0x40f5180000000000L    # 86400.0

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    div-double/2addr v0, v2

    .line 91
    return-wide v0

    .line 92
    :cond_2
    new-instance p0, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    .line 93
    .line 94
    const-string v0, "Bad length"

    .line 95
    .line 96
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method private static dayStart(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    return-object p0
.end method

.method private static daysInPriorYears(IZ)I
    .locals 5

    const/16 v0, 0x76c

    if-nez p1, :cond_0

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v1, 0x770

    if-eqz p1, :cond_2

    if-lt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'year\' must be 1900 or greater"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    add-int/lit8 v2, p0, -0x1

    div-int/lit8 v3, v2, 0x4

    div-int/lit8 v4, v2, 0x64

    sub-int/2addr v3, v4

    div-int/lit16 v2, v2, 0x190

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x1cc

    if-eqz p1, :cond_3

    const/16 v0, 0x770

    :cond_3
    const/16 p1, 0x16d

    invoke-static {p0, v0, p1, v2}, Lch/qos/logback/core/joran/util/a;->b(IIII)I

    move-result p0

    return p0
.end method

.method public static getExcelDate(Ljava/util/Calendar;Z)D
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->internalGetExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getExcelDate(Ljava/util/Date;)D
    .locals 2

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getExcelDate(Ljava/util/Date;Z)D
    .locals 1

    .line 3
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->internalGetExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getJavaCalendar(D)Ljava/util/Calendar;
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaCalendar(DZ)Ljava/util/Calendar;
    .locals 2

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaCalendar(DZLjava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;
    .locals 3

    .line 4
    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide v1, 0x4194997000000000L    # 8.64E7

    mul-double p0, p0, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v1

    double-to-int p0, p0

    if-eqz p3, :cond_1

    invoke-static {p3}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object p1

    :goto_0
    invoke-static {p1, v0, p0, p2, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->setCalendar(Ljava/util/Calendar;IIZZ)V

    return-object p1
.end method

.method public static getJavaCalendarUTC(DZ)Ljava/util/Calendar;
    .locals 2

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaDate(D)Ljava/util/Date;
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaDate(DLjava/util/TimeZone;)Ljava/util/Date;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaDate(DZ)Ljava/util/Date;
    .locals 2

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaDate(DZLjava/util/TimeZone;)Ljava/util/Date;
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static internalGetExcelDate(Ljava/util/Calendar;Z)D
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x76c

    if-lt v1, v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x770

    if-ge v0, v1, :cond_2

    :cond_1
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0

    :cond_2
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3c

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    int-to-double v0, v1

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->dayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->absoluteDay(Ljava/util/Calendar;Z)I

    move-result p0

    int-to-double v2, p0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_3

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double p0, v0, v4

    if-ltz p0, :cond_3

    add-double/2addr v0, v2

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    sub-double/2addr v0, v2

    :cond_4
    :goto_0
    return-wide v0
.end method

.method public static isADateFormat(ILjava/lang/String;)Z
    .locals 10

    .line 1
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isInternalDateFormat(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1, p0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {p1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCached(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x3b

    if-ge v4, v2, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v2, -0x1

    if-ge v4, v7, :cond_4

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-ne v6, v9, :cond_3

    const/16 v5, 0x20

    if-eq v8, v5, :cond_5

    if-eq v8, v9, :cond_5

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :cond_3
    if-ne v6, v5, :cond_4

    const/16 v5, 0x40

    if-ne v8, v5, :cond_4

    move v4, v7

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    :pswitch_0
    add-int/2addr v4, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn4:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p1, p0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    return v1

    :cond_7
    sget-object v3, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn5:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn1:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn2:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_8

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_8
    sget-object v1, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    :cond_9
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    invoke-static {p1, p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    :cond_a
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isADateFormat(Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;)Z
    .locals 1

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getIdx()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isCached(Ljava/lang/String;I)Z
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Z

    move-result p0

    return p0
.end method

.method public static isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Z
    .locals 3

    .line 2
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->from(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public static isCellInternalDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isInternalDateFormat(I)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static isInternalDateFormat(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidExcelDate(D)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1
    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static parseInt(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, p2, :cond_0

    if-gt p0, p3, :cond_0

    return p0

    :cond_0
    new-instance p2, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is outside the allowable range(0.."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    new-instance p2, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    const-string p3, "Bad int format \'"

    const-string v0, "\' for "

    const-string v1, " field"

    .line 2
    invoke-static {p3, p0, v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {p2, p0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static parseYYYYMMDDDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseYYYYMMDDDateInternal(Ljava/lang/String;)Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/ss/usermodel/DateUtil$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    const-string v1, "Bad time format "

    .line 8
    .line 9
    const-string v2, " expected \'YYYY/MM/DD\' - "

    .line 10
    .line 11
    invoke-static {v1, p0, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method private static parseYYYYMMDDDateInternal(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x8000

    const/16 v3, 0x7fff

    const-string v4, "year"

    invoke-static {v0, v4, v1, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "month"

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-static {v2, v1, v4, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    const-string v2, "day"

    const/16 v3, 0x1f

    invoke-static {p0, v2, v4, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    sub-int/2addr v1, v4

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(III)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    const-string v0, "Bad length"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setCalendar(Ljava/util/Calendar;IIZZ)V
    .locals 8

    if-eqz p3, :cond_0

    const/16 p3, 0x770

    const/4 v0, 0x1

    const/16 v2, 0x770

    goto :goto_1

    :cond_0
    const/16 p3, 0x3d

    const/16 v0, 0x76c

    if-ge p1, p3, :cond_1

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x76c

    goto :goto_1

    :cond_1
    const/4 p3, -0x1

    const/4 v0, -0x1

    goto :goto_0

    :goto_1
    add-int v4, p1, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->clear(I)V

    :cond_2
    if-eqz p4, :cond_3

    const/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->clear(I)V

    :cond_3
    return-void
.end method
