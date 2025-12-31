.class public Lorg/h2/util/ToDateParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/util/ToDateParser$ConfigParam;
    }
.end annotation


# instance fields
.field private formatStr:Ljava/lang/String;

.field private final functionName:Lorg/h2/util/ToDateParser$ConfigParam;

.field private inputStr:Ljava/lang/String;

.field private nanos:Ljava/lang/Integer;

.field private final resultCalendar:Ljava/util/Calendar;

.field private final unmodifiedFormatStr:Ljava/lang/String;

.field private final unmodifiedInputStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/h2/util/ToDateParser$ConfigParam;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    const/16 v1, 0x7b2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iput-object p1, p0, Lorg/h2/util/ToDateParser;->functionName:Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    iput-object p2, p0, Lorg/h2/util/ToDateParser;->unmodifiedInputStr:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser$ConfigParam;->getDefaultFormatStr()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_2
    iget-object p1, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/util/ToDateParser;->unmodifiedFormatStr:Ljava/lang/String;

    return-void
.end method

.method private static getDateParser(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/util/ToDateParser;
    .locals 2

    new-instance v0, Lorg/h2/util/ToDateParser;

    sget-object v1, Lorg/h2/util/ToDateParser$ConfigParam;->TO_DATE:Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-direct {v0, v1, p0, p1}, Lorg/h2/util/ToDateParser;-><init>(Lorg/h2/util/ToDateParser$ConfigParam;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/h2/util/ToDateParser;->parse(Lorg/h2/util/ToDateParser;)Lorg/h2/util/ToDateParser;

    return-object v0
.end method

.method private getResultingTimestamp()Ljava/sql/Timestamp;
    .locals 5

    invoke-virtual {p0}, Lorg/h2/util/ToDateParser;->getResultCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iget-object v1, p0, Lorg/h2/util/ToDateParser;->nanos:Ljava/lang/Integer;

    const/16 v2, 0xe

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const v3, 0xf4240

    mul-int v1, v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    new-instance v2, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v2, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object v2
.end method

.method private static getTimestampParser(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/util/ToDateParser;
    .locals 2

    new-instance v0, Lorg/h2/util/ToDateParser;

    sget-object v1, Lorg/h2/util/ToDateParser$ConfigParam;->TO_TIMESTAMP:Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-direct {v0, v1, p0, p1}, Lorg/h2/util/ToDateParser;-><init>(Lorg/h2/util/ToDateParser$ConfigParam;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/h2/util/ToDateParser;->parse(Lorg/h2/util/ToDateParser;)Lorg/h2/util/ToDateParser;

    return-object v0
.end method

.method private hasToParseData()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static parse(Lorg/h2/util/ToDateParser;)Lorg/h2/util/ToDateParser;
    .locals 2

    :goto_0
    invoke-direct {p0}, Lorg/h2/util/ToDateParser;->hasToParseData()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/h2/util/ToDateParser;->getFormatStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->getTokensInQuestion(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/h2/util/ToDateParser;->removeFirstChar()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    invoke-virtual {v1, p0}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->parseFormatStrWithToken(Lorg/h2/util/ToDateParser;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private removeFirstChar()V
    .locals 2

    iget-object v0, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static toDate(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 0

    invoke-static {p0, p1}, Lorg/h2/util/ToDateParser;->getDateParser(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/util/ToDateParser;

    move-result-object p0

    invoke-direct {p0}, Lorg/h2/util/ToDateParser;->getResultingTimestamp()Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public static toTimestamp(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 0

    invoke-static {p0, p1}, Lorg/h2/util/ToDateParser;->getTimestampParser(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/util/ToDateParser;

    move-result-object p0

    invoke-direct {p0}, Lorg/h2/util/ToDateParser;->getResultingTimestamp()Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFormatStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/util/ToDateParser;->functionName:Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lorg/h2/util/ToDateParser;->resultCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setNanos(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/util/ToDateParser;->nanos:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lorg/h2/util/ToDateParser;->inputStr:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, Lorg/h2/util/ToDateParser;->unmodifiedInputStr:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sub-int/2addr v3, v2

    .line 16
    if-gtz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sub-int/2addr v2, v1

    .line 20
    :goto_0
    iget-object v4, p0, Lorg/h2/util/ToDateParser;->unmodifiedFormatStr:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    iget-object v5, p0, Lorg/h2/util/ToDateParser;->formatStr:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    sub-int/2addr v4, v5

    .line 33
    iget-object v5, p0, Lorg/h2/util/ToDateParser;->functionName:Lorg/h2/util/ToDateParser$ConfigParam;

    .line 34
    .line 35
    iget-object v6, p0, Lorg/h2/util/ToDateParser;->unmodifiedInputStr:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v7, p0, Lorg/h2/util/ToDateParser;->unmodifiedFormatStr:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v8, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v9, "\n    "

    .line 42
    .line 43
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v5, "(\'"

    .line 50
    .line 51
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, "\', \'"

    .line 58
    .line 59
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v5, "\')"

    .line 63
    .line 64
    invoke-static {v7, v5, v8}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v7, "%"

    .line 71
    .line 72
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v8, p0, Lorg/h2/util/ToDateParser;->functionName:Lorg/h2/util/ToDateParser$ConfigParam;

    .line 76
    .line 77
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    add-int/2addr v8, v3

    .line 86
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v3, "s"

    .line 90
    .line 91
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    const-string v8, ""

    .line 99
    .line 100
    new-array v9, v1, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object v8, v9, v0

    .line 103
    .line 104
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    if-gtz v2, :cond_1

    .line 109
    .line 110
    move-object v2, v8

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    invoke-static {v2, v7, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-array v9, v1, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v8, v9, v0

    .line 119
    .line 120
    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :goto_1
    if-gtz v4, :cond_2

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    invoke-static {v4, v7, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    .line 132
    .line 133
    aput-object v8, v1, v0

    .line 134
    .line 135
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    :goto_2
    const-string v0, "\n      "

    .line 140
    .line 141
    const-string v1, "^"

    .line 142
    .line 143
    const-string v3, " ,  "

    .line 144
    .line 145
    invoke-static {v0, v6, v1, v2, v3}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, "^ <-- Parsing failed at this point"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    return-object v0
.end method
