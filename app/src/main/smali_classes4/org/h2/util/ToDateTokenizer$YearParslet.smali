.class Lorg/h2/util/ToDateTokenizer$YearParslet;
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
    name = "YearParslet"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/h2/util/ToDateParser;Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;Ljava/lang/String;)V
    .locals 7

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
    const-string v2, "Year may not be zero"

    .line 14
    .line 15
    const-string v3, "\' not supported yet."

    .line 16
    .line 17
    const-string v4, "token \'"

    .line 18
    .line 19
    const/16 v5, 0x64

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p3, ": Internal Error. Unhandled case: "

    .line 44
    .line 45
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :pswitch_0
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_BC_AD:Ljava/util/regex/Pattern;

    .line 60
    .line 61
    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "B"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x0

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    invoke-virtual {v0, v2, v2}, Ljava/util/Calendar;->set(II)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :cond_0
    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :pswitch_1
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_ONE_DIGIT:Ljava/util/regex/Pattern;

    .line 89
    .line 90
    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-ltz v1, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    :goto_0
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :pswitch_2
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS:Ljava/util/regex/Pattern;

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
    mul-int/lit8 v1, v1, 0x64

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_3
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS:Ljava/util/regex/Pattern;

    .line 122
    .line 123
    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-ltz v1, :cond_1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_4
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    :goto_1
    invoke-static {v4, p2, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {p1, p2}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    goto :goto_1

    .line 151
    :goto_2
    const/4 p2, 0x0

    .line 152
    goto/16 :goto_5

    .line 153
    .line 154
    :pswitch_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    div-int/2addr v1, v5

    .line 163
    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS:Ljava/util/regex/Pattern;

    .line 164
    .line 165
    invoke-static {v2, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    mul-int/lit8 v1, v1, 0x64

    .line 174
    .line 175
    add-int/2addr v1, v2

    .line 176
    :cond_2
    :goto_3
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :pswitch_7
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_TO_FOUR_DIGITS:Ljava/util/regex/Pattern;

    .line 181
    .line 182
    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    const/4 v4, 0x4

    .line 195
    if-ge v3, v4, :cond_4

    .line 196
    .line 197
    const/16 v3, 0x32

    .line 198
    .line 199
    if-ge v1, v3, :cond_3

    .line 200
    .line 201
    add-int/lit16 v1, v1, 0x7d0

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_3
    if-ge v1, v5, :cond_4

    .line 205
    .line 206
    add-int/lit16 v1, v1, 0x76c

    .line 207
    .line 208
    :cond_4
    :goto_4
    if-nez v1, :cond_2

    .line 209
    .line 210
    invoke-static {p1, v2}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :pswitch_8
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_THREE_DIGITS:Ljava/util/regex/Pattern;

    .line 215
    .line 216
    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-ltz v1, :cond_5

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :pswitch_9
    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PATTERN_FOUR_DIGITS:Ljava/util/regex/Pattern;

    .line 231
    .line 232
    invoke-static {v1, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    const-string v1, "+"

    .line 237
    .line 238
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_6

    .line 243
    .line 244
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_7

    .line 253
    .line 254
    invoke-static {p1, v2}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_7
    if-ltz v1, :cond_5

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :goto_5
    invoke-virtual {p1, p2, p3}, Lorg/h2/util/ToDateParser;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    nop

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
