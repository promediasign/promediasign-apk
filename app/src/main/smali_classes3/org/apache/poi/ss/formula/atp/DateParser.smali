.class public Lorg/apache/poi/ss/formula/atp/DateParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static makeDate(III)Ljava/util/Calendar;
    .locals 8

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v1, 0xc

    if-gt p1, v1, :cond_1

    add-int/lit8 v3, p1, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v2, p0

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(IIIIII)Ljava/util/Calendar;

    move-result-object p0

    if-lt p2, v0, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-gt p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 4

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v1, v2, :cond_4

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    aget-object v1, v0, v1

    .line 17
    .line 18
    const/16 v2, 0x20

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    :try_start_0
    aget-object v2, v0, v3

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    aget-object v0, v0, v3

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-ltz v2, :cond_3

    .line 49
    .line 50
    if-ltz v0, :cond_3

    .line 51
    .line 52
    if-ltz v1, :cond_3

    .line 53
    .line 54
    const/16 v3, 0xc

    .line 55
    .line 56
    if-le v2, v3, :cond_1

    .line 57
    .line 58
    if-le v0, v3, :cond_1

    .line 59
    .line 60
    if-gt v1, v3, :cond_3

    .line 61
    .line 62
    :cond_1
    const/16 v3, 0x76c

    .line 63
    .line 64
    if-lt v2, v3, :cond_2

    .line 65
    .line 66
    const/16 v3, 0x270f

    .line 67
    .line 68
    if-ge v2, v3, :cond_2

    .line 69
    .line 70
    invoke-static {v2, v0, v1}, Lorg/apache/poi/ss/formula/atp/DateParser;->makeDate(III)Ljava/util/Calendar;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 76
    .line 77
    const-string v1, "Unable to determine date format for text \'"

    .line 78
    .line 79
    const-string v2, "\'"

    .line 80
    .line 81
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_3
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    .line 90
    .line 91
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 92
    .line 93
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :catch_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    .line 98
    .line 99
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 100
    .line 101
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_4
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    .line 106
    .line 107
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 108
    .line 109
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .line 110
    .line 111
    .line 112
    throw p0
.end method
