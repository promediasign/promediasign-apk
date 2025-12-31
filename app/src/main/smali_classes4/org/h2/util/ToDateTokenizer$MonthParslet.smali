.class Lorg/h2/util/ToDateTokenizer$MonthParslet;
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
    name = "MonthParslet"
.end annotation


# static fields
.field private static final ROMAN_MONTH:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, "XI"

    const-string v11, "XII"

    const-string v0, "I"

    const-string v1, "II"

    const-string v2, "III"

    const-string v3, "IV"

    const-string v4, "V"

    const-string v5, "VI"

    const-string v6, "VII"

    const-string v7, "VIII"

    const-string v8, "IX"

    const-string v9, "X"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer$MonthParslet;->ROMAN_MONTH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/h2/util/ToDateParser;Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;Ljava/lang/String;)V
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lorg/h2/util/ToDateParser;->getResultCalendar()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/h2/util/ToDateParser;->getInputStr()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sget-object v4, Lorg/h2/util/ToDateTokenizer$1;->$SwitchMap$org$h2$util$ToDateTokenizer$FormatTokenEnum:[I

    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    aget v4, v4, v5

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x2

    .line 23
    const/4 v7, 0x0

    .line 24
    packed-switch v4, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ": Internal Error. Unhandled case: "

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :pswitch_0
    sget-object v4, Lorg/h2/util/ToDateTokenizer$MonthParslet;->ROMAN_MONTH:[Ljava/lang/String;

    .line 62
    .line 63
    array-length v8, v4

    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v11, 0x0

    .line 67
    :goto_0
    if-ge v10, v8, :cond_1

    .line 68
    .line 69
    aget-object v12, v4, v10

    .line 70
    .line 71
    add-int/2addr v11, v5

    .line 72
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    if-lt v14, v13, :cond_0

    .line 81
    .line 82
    invoke-virtual {v3, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    if-eqz v13, :cond_0

    .line 91
    .line 92
    invoke-virtual {v2, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 93
    .line 94
    .line 95
    move-object v7, v12

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sget-object v2, Lorg/h2/util/ToDateTokenizer$MonthParslet;->ROMAN_MONTH:[Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const-string v3, "Issue happened when parsing token \'"

    .line 119
    .line 120
    const-string v4, "\'. Expected one of: "

    .line 121
    .line 122
    invoke-static {v3, v1, v4, v2}, LA/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    :goto_2
    move-object/from16 v1, p3

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :pswitch_1
    sget-object v3, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    .line 131
    .line 132
    invoke-static {v3, v0, v1}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    sub-int/2addr v1, v5

    .line 141
    invoke-virtual {v2, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :pswitch_2
    invoke-static {v2, v0, v6, v5}, Lorg/h2/util/ToDateTokenizer;->setByName(Ljava/util/Calendar;Lorg/h2/util/ToDateParser;II)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    goto :goto_2

    .line 150
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v2, "token \'"

    .line 155
    .line 156
    const-string v3, "\' not supported yet."

    .line 157
    .line 158
    invoke-static {v2, v1, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    :goto_3
    invoke-static {v0, v1}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :pswitch_4
    invoke-static {v2, v0, v6, v6}, Lorg/h2/util/ToDateTokenizer;->setByName(Ljava/util/Calendar;Lorg/h2/util/ToDateParser;II)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    goto :goto_2

    .line 171
    :goto_4
    invoke-virtual {v0, v7, v1}, Lorg/h2/util/ToDateParser;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
