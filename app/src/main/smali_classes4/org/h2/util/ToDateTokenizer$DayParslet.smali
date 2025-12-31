.class Lorg/h2/util/ToDateTokenizer$DayParslet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/util/ToDateTokenizer$ToDateParslet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/ToDateTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayParslet"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/h2/util/ToDateParser;Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getResultCalendar()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/h2/util/ToDateTokenizer$1;->$SwitchMap$org$h2$util$ToDateTokenizer$FormatTokenEnum:[I

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    const/4 v3, 0x7

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p3, ": Internal Error. Unhandled case: "

    .line 37
    .line 38
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :pswitch_0
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_NUMBER:Ljava/util/regex/Pattern;

    .line 53
    .line 54
    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 59
    .line 60
    const-string v2, "Myydd"

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :catch_0
    const-string v0, "Failed to parse Julian date: "

    .line 74
    .line 75
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {p1, v0}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :pswitch_1
    const/4 p2, 0x1

    .line 84
    :goto_0
    invoke-static {v0, p1, v3, p2}, Lorg/h2/util/ToDateTokenizer;->setByName(Ljava/util/Calendar;Lorg/h2/util/ToDateParser;II)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    goto :goto_3

    .line 89
    :pswitch_2
    const/4 p2, 0x2

    .line 90
    goto :goto_0

    .line 91
    :pswitch_3
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_ONE_DIGIT:Ljava/util/regex/Pattern;

    .line 92
    .line 93
    :goto_1
    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    :goto_2
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :pswitch_4
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_5
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_NUMBER:Ljava/util/regex/Pattern;

    .line 109
    .line 110
    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/4 v2, 0x6

    .line 119
    goto :goto_2

    .line 120
    :goto_3
    invoke-virtual {p1, p2, p3}, Lorg/h2/util/ToDateParser;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
