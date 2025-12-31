.class public Lorg/h2/util/LocalDateTimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHRONO_UNIT_DAYS:Ljava/lang/Object;

.field private static final DATE_VALUE_OF:Ljava/lang/reflect/Method;

.field private static final DURATION_BETWEEN:Ljava/lang/reflect/Method;

.field private static final DURATION_TO_NANOS:Ljava/lang/reflect/Method;

.field private static final IS_JAVA8_DATE_API_PRESENT:Z

.field private static final LOCAL_DATE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final LOCAL_DATE_AT_START_OF_DAY:Ljava/lang/reflect/Method;

.field private static final LOCAL_DATE_GET_DAY_OF_MONTH:Ljava/lang/reflect/Method;

.field private static final LOCAL_DATE_GET_MONTH_VALUE:Ljava/lang/reflect/Method;

.field private static final LOCAL_DATE_GET_YEAR:Ljava/lang/reflect/Method;

.field private static final LOCAL_DATE_OF_YEAR_MONTH_DAY:Ljava/lang/reflect/Method;

.field private static final LOCAL_DATE_PARSE:Ljava/lang/reflect/Method;

.field private static final LOCAL_DATE_TIME:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final LOCAL_DATE_TIME_PARSE:Ljava/lang/reflect/Method;

.field private static final LOCAL_DATE_TIME_PLUS_NANOS:Ljava/lang/reflect/Method;

.field private static final LOCAL_DATE_TIME_TO_LOCAL_DATE:Ljava/lang/reflect/Method;

.field private static final LOCAL_DATE_TIME_TRUNCATED_TO:Ljava/lang/reflect/Method;

.field private static final LOCAL_TIME:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final LOCAL_TIME_OF_NANO:Ljava/lang/reflect/Method;

.field private static final LOCAL_TIME_PARSE:Ljava/lang/reflect/Method;

.field private static final LOCAL_TIME_TO_NANO:Ljava/lang/reflect/Method;

.field private static final OFFSET_DATE_TIME:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final OFFSET_DATE_TIME_GET_OFFSET:Ljava/lang/reflect/Method;

.field private static final OFFSET_DATE_TIME_OF_LOCAL_DATE_TIME_ZONE_OFFSET:Ljava/lang/reflect/Method;

.field private static final OFFSET_DATE_TIME_PARSE:Ljava/lang/reflect/Method;

.field private static final OFFSET_DATE_TIME_TO_LOCAL_DATE_TIME:Ljava/lang/reflect/Method;

.field private static final TO_LOCAL_DATE:Ljava/lang/reflect/Method;

.field private static final ZONE_OFFSET:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final ZONE_OFFSET_GET_TOTAL_SECONDS:Ljava/lang/reflect/Method;

.field private static final ZONE_OFFSET_OF_TOTAL_SECONDS:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v1, 0x1

    const-string v2, "java.time.LocalDate"

    invoke-static {v2}, Lorg/h2/util/LocalDateTimeUtils;->tryGetClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE:Ljava/lang/Class;

    const-string v3, "java.time.LocalTime"

    invoke-static {v3}, Lorg/h2/util/LocalDateTimeUtils;->tryGetClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME:Ljava/lang/Class;

    const-string v4, "java.time.LocalDateTime"

    invoke-static {v4}, Lorg/h2/util/LocalDateTimeUtils;->tryGetClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME:Ljava/lang/Class;

    const-string v5, "java.time.OffsetDateTime"

    invoke-static {v5}, Lorg/h2/util/LocalDateTimeUtils;->tryGetClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME:Ljava/lang/Class;

    const-string v6, "java.time.ZoneOffset"

    invoke-static {v6}, Lorg/h2/util/LocalDateTimeUtils;->tryGetClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/h2/util/LocalDateTimeUtils;->ZONE_OFFSET:Ljava/lang/Class;

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    sput-boolean v8, Lorg/h2/util/LocalDateTimeUtils;->IS_JAVA8_DATE_API_PRESENT:Z

    if-eqz v8, :cond_1

    const-string v8, "java.time.temporal.TemporalUnit"

    invoke-static {v8}, Lorg/h2/util/LocalDateTimeUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "java.time.temporal.ChronoUnit"

    invoke-static {v9}, Lorg/h2/util/LocalDateTimeUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "java.time.Duration"

    invoke-static {v10}, Lorg/h2/util/LocalDateTimeUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "java.time.temporal.Temporal"

    invoke-static {v11}, Lorg/h2/util/LocalDateTimeUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Class;

    const-class v13, Ljava/sql/Date;

    const-string v14, "toLocalDate"

    invoke-static {v13, v14, v12}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Lorg/h2/util/LocalDateTimeUtils;->TO_LOCAL_DATE:Ljava/lang/reflect/Method;

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array v15, v1, [Ljava/lang/Class;

    aput-object v12, v15, v7

    const-string v0, "ofNanoOfDay"

    invoke-static {v3, v0, v15}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME_OF_NANO:Ljava/lang/reflect/Method;

    const-string v0, "valueOf"

    new-array v15, v1, [Ljava/lang/Class;

    aput-object v2, v15, v7

    invoke-static {v13, v0, v15}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->DATE_VALUE_OF:Ljava/lang/reflect/Method;

    const-string v0, "toNanoOfDay"

    new-array v13, v7, [Ljava/lang/Class;

    invoke-static {v3, v0, v13}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME_TO_NANO:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Class;

    aput-object v0, v13, v7

    aput-object v0, v13, v1

    const/4 v15, 0x2

    aput-object v0, v13, v15

    const-string v15, "of"

    invoke-static {v2, v15, v13}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    sput-object v13, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_OF_YEAR_MONTH_DAY:Ljava/lang/reflect/Method;

    const-class v13, Ljava/lang/CharSequence;

    move-object/from16 v16, v9

    new-array v9, v1, [Ljava/lang/Class;

    aput-object v13, v9, v7

    const-string v1, "parse"

    invoke-static {v2, v1, v9}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_PARSE:Ljava/lang/reflect/Method;

    const-string v9, "getYear"

    move-object/from16 v17, v10

    new-array v10, v7, [Ljava/lang/Class;

    invoke-static {v2, v9, v10}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_GET_YEAR:Ljava/lang/reflect/Method;

    const-string v9, "getMonthValue"

    new-array v10, v7, [Ljava/lang/Class;

    invoke-static {v2, v9, v10}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_GET_MONTH_VALUE:Ljava/lang/reflect/Method;

    const-string v9, "getDayOfMonth"

    new-array v10, v7, [Ljava/lang/Class;

    invoke-static {v2, v9, v10}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_GET_DAY_OF_MONTH:Ljava/lang/reflect/Method;

    const-string v9, "atStartOfDay"

    new-array v10, v7, [Ljava/lang/Class;

    invoke-static {v2, v9, v10}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_AT_START_OF_DAY:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v13, v9, v7

    invoke-static {v3, v1, v9}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME_PARSE:Ljava/lang/reflect/Method;

    const-string v3, "plusNanos"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v12, v9, v7

    invoke-static {v4, v3, v9}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_PLUS_NANOS:Ljava/lang/reflect/Method;

    new-array v3, v7, [Ljava/lang/Class;

    invoke-static {v4, v14, v3}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_TO_LOCAL_DATE:Ljava/lang/reflect/Method;

    const-string v3, "truncatedTo"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v8, v9, v7

    invoke-static {v4, v3, v9}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_TRUNCATED_TO:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v13, v3, v7

    invoke-static {v4, v1, v3}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_PARSE:Ljava/lang/reflect/Method;

    const-string v3, "ofTotalSeconds"

    new-array v8, v2, [Ljava/lang/Class;

    aput-object v0, v8, v7

    invoke-static {v6, v3, v8}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->ZONE_OFFSET_OF_TOTAL_SECONDS:Ljava/lang/reflect/Method;

    const-string v0, "toLocalDateTime"

    new-array v2, v7, [Ljava/lang/Class;

    invoke-static {v5, v0, v2}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_TO_LOCAL_DATE_TIME:Ljava/lang/reflect/Method;

    const-string v0, "getOffset"

    new-array v2, v7, [Ljava/lang/Class;

    invoke-static {v5, v0, v2}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_GET_OFFSET:Ljava/lang/reflect/Method;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Class;

    aput-object v4, v2, v7

    const/4 v0, 0x1

    aput-object v6, v2, v0

    invoke-static {v5, v15, v2}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_OF_LOCAL_DATE_TIME_ZONE_OFFSET:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Class;

    aput-object v13, v2, v7

    invoke-static {v5, v1, v2}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_PARSE:Ljava/lang/reflect/Method;

    const-string v1, "getTotalSeconds"

    new-array v2, v7, [Ljava/lang/Class;

    invoke-static {v6, v1, v2}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/h2/util/LocalDateTimeUtils;->ZONE_OFFSET_GET_TOTAL_SECONDS:Ljava/lang/reflect/Method;

    const-string v1, "between"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v11, v2, v7

    aput-object v11, v2, v0

    move-object/from16 v0, v17

    invoke-static {v0, v1, v2}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/h2/util/LocalDateTimeUtils;->DURATION_BETWEEN:Ljava/lang/reflect/Method;

    const-string v1, "toNanos"

    new-array v2, v7, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lorg/h2/util/LocalDateTimeUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->DURATION_TO_NANOS:Ljava/lang/reflect/Method;

    const-string v0, "DAYS"

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lorg/h2/util/LocalDateTimeUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->CHRONO_UNIT_DAYS:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->TO_LOCAL_DATE:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME_OF_NANO:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->DATE_VALUE_OF:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME_TO_NANO:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_OF_YEAR_MONTH_DAY:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_PARSE:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_GET_YEAR:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_GET_MONTH_VALUE:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_GET_DAY_OF_MONTH:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_AT_START_OF_DAY:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME_PARSE:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_PLUS_NANOS:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_TO_LOCAL_DATE:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_TRUNCATED_TO:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_PARSE:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->ZONE_OFFSET_OF_TOTAL_SECONDS:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_TO_LOCAL_DATE_TIME:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_GET_OFFSET:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_OF_LOCAL_DATE_TIME_ZONE_OFFSET:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_PARSE:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->ZONE_OFFSET_GET_TOTAL_SECONDS:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->DURATION_BETWEEN:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/h2/util/LocalDateTimeUtils;->DURATION_TO_NANOS:Ljava/lang/reflect/Method;

    goto :goto_1

    :goto_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dateToLocalDate(Ljava/sql/Date;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->TO_LOCAL_DATE:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v0, "date conversion failed"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static dateValueFromLocalDate(Ljava/lang/Object;)J
    .locals 4

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_GET_YEAR:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_GET_MONTH_VALUE:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_GET_DAY_OF_MONTH:Ljava/lang/reflect/Method;

    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, v0

    invoke-static {v0, v1, v2, p0}, Lorg/h2/util/DateTimeUtils;->dateValue(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v2, "Java 8 or later but class "

    .line 10
    .line 11
    const-string v3, " is missing"

    .line 12
    .line 13
    invoke-static {v2, p0, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v1
.end method

.method private static getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Java 8 or later but field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is missing"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getLocalDateClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE:Ljava/lang/Class;

    return-object v0
.end method

.method public static getLocalDateTimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME:Ljava/lang/Class;

    return-object v0
.end method

.method public static getLocalTimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME:Ljava/lang/Class;

    return-object v0
.end method

.method private static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Java 8 or later but method "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "#"

    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, "("

    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, ") is missing"

    .line 41
    .line 42
    invoke-static {p0, p1, v2}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v1
.end method

.method public static getOffsetDateTimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME:Ljava/lang/Class;

    return-object v0
.end method

.method public static isJava8DateApiPresent()Z
    .locals 1

    sget-boolean v0, Lorg/h2/util/LocalDateTimeUtils;->IS_JAVA8_DATE_API_PRESENT:Z

    return v0
.end method

.method public static isLocalDate(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLocalDateTime(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLocalTime(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOffsetDateTime(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static localDateFromDateValue(J)Ljava/lang/Object;
    .locals 4

    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    move-result v0

    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    move-result v1

    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    move-result p0

    sget-object p1, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_OF_YEAR_MONTH_DAY:Ljava/lang/reflect/Method;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static localDateTimeFromDateNanos(JJ)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Lorg/h2/util/LocalDateTimeUtils;->localDateFromDateValue(J)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_AT_START_OF_DAY:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_PLUS_NANOS:Ljava/lang/reflect/Method;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static localDateTimeToValue(Ljava/lang/Object;)Lorg/h2/value/Value;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_TO_LOCAL_DATE:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/LocalDateTimeUtils;->dateValueFromLocalDate(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p0}, Lorg/h2/util/LocalDateTimeUtils;->timeNanosFromLocalDate(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v0, "local date time conversion failed"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static localDateToDateValue(Ljava/lang/Object;)Lorg/h2/value/Value;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->DATE_VALUE_OF:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/sql/Date;

    invoke-static {p0}, Lorg/h2/value/ValueDate;->get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v0, "date conversion failed"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static localTimeToTimeValue(Ljava/lang/Object;)Lorg/h2/value/Value;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME_TO_NANO:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v0, "time conversion failed"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static offsetDateTimeToValue(Ljava/lang/Object;)Lorg/h2/value/Value;
    .locals 5

    :try_start_0
    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_TO_LOCAL_DATE_TIME:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_TO_LOCAL_DATE:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_GET_OFFSET:Ljava/lang/reflect/Method;

    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2}, Lorg/h2/util/LocalDateTimeUtils;->dateValueFromLocalDate(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-static {v0}, Lorg/h2/util/LocalDateTimeUtils;->timeNanosFromLocalDate(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-static {p0}, Lorg/h2/util/LocalDateTimeUtils;->zoneOffsetToOffsetMinute(Ljava/lang/Object;)S

    move-result p0

    invoke-static {v1, v2, v3, v4, p0}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v0, "time conversion failed"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static parseLocalDate(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_PARSE:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error when parsing text \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseLocalDateTime(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_PARSE:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error when parsing text \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseLocalTime(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME_PARSE:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error when parsing text \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseOffsetDateTime(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_PARSE:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error when parsing text \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static timeNanosFromLocalDate(Ljava/lang/Object;)J
    .locals 5

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_TRUNCATED_TO:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lorg/h2/util/LocalDateTimeUtils;->CHRONO_UNIT_DAYS:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/h2/util/LocalDateTimeUtils;->DURATION_BETWEEN:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p0, v3, v1

    const/4 p0, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/h2/util/LocalDateTimeUtils;->DURATION_TO_NANOS:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static timestampWithTimeZoneToOffsetDateTime(Lorg/h2/api/TimestampWithTimeZone;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/h2/api/TimestampWithTimeZone;->getYMD()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/h2/api/TimestampWithTimeZone;->getNanosSinceMidnight()J

    move-result-wide v4

    :try_start_0
    invoke-static {v2, v3, v4, v5}, Lorg/h2/util/LocalDateTimeUtils;->localDateTimeFromDateNanos(JJ)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lorg/h2/api/TimestampWithTimeZone;->getTimeZoneOffsetMins()S

    move-result p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int p0, v3

    sget-object v3, Lorg/h2/util/LocalDateTimeUtils;->ZONE_OFFSET_OF_TOTAL_SECONDS:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    const/4 p0, 0x0

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/h2/util/LocalDateTimeUtils;->OFFSET_DATE_TIME_OF_LOCAL_DATE_TIME_ZONE_OFFSET:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    aput-object v3, v5, v1

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v0, "timestamp with time zone conversion failed"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static tryGetClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueToLocalDate(Lorg/h2/value/Value;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/util/LocalDateTimeUtils;->dateToLocalDate(Ljava/sql/Date;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static valueToLocalDateTime(Lorg/h2/value/ValueTimestamp;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestamp;->getDateValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestamp;->getTimeNanos()J

    move-result-wide v2

    :try_start_0
    invoke-static {v0, v1}, Lorg/h2/util/LocalDateTimeUtils;->localDateFromDateValue(J)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_AT_START_OF_DAY:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_DATE_TIME_PLUS_NANOS:Ljava/lang/reflect/Method;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v0, "timestamp conversion failed"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static valueToLocalTime(Lorg/h2/value/Value;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->LOCAL_TIME_OF_NANO:Ljava/lang/reflect/Method;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueTime;

    invoke-virtual {p0}, Lorg/h2/value/ValueTime;->getNanos()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v0, "time conversion failed"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static valueToOffsetDateTime(Lorg/h2/value/ValueTimestampTimeZone;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampTimeZone;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/api/TimestampWithTimeZone;

    invoke-static {p0}, Lorg/h2/util/LocalDateTimeUtils;->timestampWithTimeZoneToOffsetDateTime(Lorg/h2/api/TimestampWithTimeZone;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static zoneOffsetToOffsetMinute(Ljava/lang/Object;)S
    .locals 3

    sget-object v0, Lorg/h2/util/LocalDateTimeUtils;->ZONE_OFFSET_GET_TOTAL_SECONDS:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method
