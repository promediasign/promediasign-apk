.class public Lch/qos/logback/core/util/Duration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DAYS_COEFFICIENT:J = 0x5265c00L

.field private static final DOUBLE_GROUP:I = 0x1

.field private static final DOUBLE_PART:Ljava/lang/String; = "([0-9]*(.[0-9]+)?)"

.field private static final DURATION_PATTERN:Ljava/util/regex/Pattern;

.field static final HOURS_COEFFICIENT:J = 0x36ee80L

.field static final MINUTES_COEFFICIENT:J = 0xea60L

.field static final SECONDS_COEFFICIENT:J = 0x3e8L

.field private static final UNIT_GROUP:I = 0x3

.field private static final UNIT_PART:Ljava/lang/String; = "(|milli(second)?|second(e)?|minute|hour|day)s?"


# instance fields
.field final millis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "([0-9]*(.[0-9]+)?)\\s*(|milli(second)?|second(e)?|minute|hour|day)s?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/qos/logback/core/util/Duration;->DURATION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lch/qos/logback/core/util/Duration;->millis:J

    return-void
.end method

.method public static buildByDays(D)Lch/qos/logback/core/util/Duration;
    .locals 3

    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide v1, 0x4194997000000000L    # 8.64E7

    mul-double p0, p0, v1

    double-to-long p0, p0

    invoke-direct {v0, p0, p1}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static buildByHours(D)Lch/qos/logback/core/util/Duration;
    .locals 3

    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide v1, 0x414b774000000000L    # 3600000.0

    mul-double p0, p0, v1

    double-to-long p0, p0

    invoke-direct {v0, p0, p1}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static buildByMilliseconds(D)Lch/qos/logback/core/util/Duration;
    .locals 1

    new-instance v0, Lch/qos/logback/core/util/Duration;

    double-to-long p0, p0

    invoke-direct {v0, p0, p1}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static buildByMinutes(D)Lch/qos/logback/core/util/Duration;
    .locals 3

    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide v1, 0x40ed4c0000000000L    # 60000.0

    mul-double p0, p0, v1

    double-to-long p0, p0

    invoke-direct {v0, p0, p1}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static buildBySeconds(D)Lch/qos/logback/core/util/Duration;
    .locals 3

    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v1

    double-to-long p0, p0

    invoke-direct {v0, p0, p1}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static buildUnbounded()Lch/qos/logback/core/util/Duration;
    .locals 3

    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/util/Duration;
    .locals 3

    .line 1
    sget-object v0, Lch/qos/logback/core/util/Duration;->DURATION_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_7

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    const-string p0, "milli"

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_6

    .line 38
    .line 39
    const-string p0, "millisecond"

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_6

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const-string p0, "second"

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_5

    .line 61
    .line 62
    const-string p0, "seconde"

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string p0, "minute"

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    invoke-static {v1, v2}, Lch/qos/logback/core/util/Duration;->buildByMinutes(D)Lch/qos/logback/core/util/Duration;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_2
    const-string p0, "hour"

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    invoke-static {v1, v2}, Lch/qos/logback/core/util/Duration;->buildByHours(D)Lch/qos/logback/core/util/Duration;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_3
    const-string p0, "day"

    .line 98
    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_4

    .line 104
    .line 105
    invoke-static {v1, v2}, Lch/qos/logback/core/util/Duration;->buildByDays(D)Lch/qos/logback/core/util/Duration;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    const-string v1, "Unexpected "

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_5
    :goto_0
    invoke-static {v1, v2}, Lch/qos/logback/core/util/Duration;->buildBySeconds(D)Lch/qos/logback/core/util/Duration;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :cond_6
    :goto_1
    invoke-static {v1, v2}, Lch/qos/logback/core/util/Duration;->buildByMilliseconds(D)Lch/qos/logback/core/util/Duration;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string v1, "String value ["

    .line 135
    .line 136
    const-string v2, "] is not in the expected format."

    .line 137
    .line 138
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0
.end method


# virtual methods
.method public getMilliseconds()J
    .locals 2

    iget-wide v0, p0, Lch/qos/logback/core/util/Duration;->millis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-wide v0, p0, Lch/qos/logback/core/util/Duration;->millis:J

    .line 2
    .line 3
    const-wide/16 v2, 0x3e8

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-wide v1, p0, Lch/qos/logback/core/util/Duration;->millis:J

    .line 15
    .line 16
    const-string v3, " milliseconds"

    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_0
    const-wide/32 v4, 0xea60

    .line 24
    .line 25
    .line 26
    cmp-long v6, v0, v4

    .line 27
    .line 28
    if-gez v6, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-wide v4, p0, Lch/qos/logback/core/util/Duration;->millis:J

    .line 36
    .line 37
    div-long/2addr v4, v2

    .line 38
    const-string v1, " seconds"

    .line 39
    .line 40
    invoke-static {v0, v4, v5, v1}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_1
    const-wide/32 v2, 0x36ee80

    .line 46
    .line 47
    .line 48
    cmp-long v6, v0, v2

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    if-gez v6, :cond_2

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-wide v1, p0, Lch/qos/logback/core/util/Duration;->millis:J

    .line 58
    .line 59
    div-long/2addr v1, v4

    .line 60
    const-string v3, " minutes"

    .line 61
    .line 62
    invoke-static {v0, v1, v2, v3}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :cond_2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-wide v4, p0, Lch/qos/logback/core/util/Duration;->millis:J

    .line 71
    .line 72
    div-long/2addr v4, v2

    .line 73
    const-string v1, " hours"

    .line 74
    .line 75
    invoke-static {v0, v4, v5, v1}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0
.end method
