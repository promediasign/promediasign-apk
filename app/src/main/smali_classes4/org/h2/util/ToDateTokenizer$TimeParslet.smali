.class Lorg/h2/util/ToDateTokenizer$TimeParslet;
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
    name = "TimeParslet"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/h2/util/ToDateParser;Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getResultCalendar()Ljava/util/Calendar;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sget-object v2, Lorg/h2/util/ToDateTokenizer$1;->$SwitchMap$org$h2$util$ToDateTokenizer$FormatTokenEnum:[I

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    aget v2, v2, v3

    .line 13
    .line 14
    const/16 v3, 0xd

    .line 15
    .line 16
    const/16 v4, 0xc

    .line 17
    .line 18
    const/16 v5, 0xb

    .line 19
    .line 20
    const/16 v6, 0x9

    .line 21
    .line 22
    const v7, 0x36ee80

    .line 23
    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p3, ": Internal Error. Unhandled case: "

    .line 49
    .line 50
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const-string v0, "token \'"

    .line 69
    .line 70
    const-string v1, "\' not supported yet."

    .line 71
    .line 72
    invoke-static {v0, p2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {p1, p2}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :pswitch_1
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getInputStr()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    array-length v4, v3

    .line 94
    const/4 v5, 0x0

    .line 95
    :goto_0
    if-ge v5, v4, :cond_2

    .line 96
    .line 97
    aget-object v6, v3, v5

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-lt v10, v7, :cond_0

    .line 108
    .line 109
    invoke-virtual {p2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_0

    .line 118
    .line 119
    invoke-virtual {v2, v6}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 123
    .line 124
    .line 125
    move-object v9, v6

    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    :cond_0
    add-int/2addr v5, v0

    .line 129
    goto :goto_0

    .line 130
    :pswitch_2
    sget-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    .line 131
    .line 132
    invoke-static {v0, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    rem-int/2addr v2, v7

    .line 149
    mul-int p2, p2, v7

    .line 150
    .line 151
    add-int/2addr p2, v2

    .line 152
    invoke-virtual {v0, p2}, Ljava/util/TimeZone;->setRawOffset(I)V

    .line 153
    .line 154
    .line 155
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_4

    .line 159
    .line 160
    :pswitch_3
    sget-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    .line 161
    .line 162
    invoke-static {v0, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    div-int/2addr v2, v7

    .line 179
    mul-int v2, v2, v7

    .line 180
    .line 181
    add-int/2addr v2, p2

    .line 182
    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->setRawOffset(I)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :pswitch_4
    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PATTERN_AM_PM:Ljava/util/regex/Pattern;

    .line 187
    .line 188
    invoke-static {v2, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    const-string v2, "A"

    .line 197
    .line 198
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    if-eqz p2, :cond_1

    .line 203
    .line 204
    invoke-virtual {v1, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_4

    .line 208
    .line 209
    :cond_1
    invoke-virtual {v1, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_4

    .line 213
    .line 214
    :pswitch_5
    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PATTERN_NUMBER:Ljava/util/regex/Pattern;

    .line 215
    .line 216
    invoke-static {v2, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    const-string p2, "%-9s"

    .line 221
    .line 222
    new-array v0, v0, [Ljava/lang/Object;

    .line 223
    .line 224
    aput-object v9, v0, v8

    .line 225
    .line 226
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    const/16 v0, 0x20

    .line 231
    .line 232
    const/16 v2, 0x30

    .line 233
    .line 234
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-virtual {p2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 243
    .line 244
    .line 245
    move-result-wide v2

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    invoke-virtual {p1, p2}, Lorg/h2/util/ToDateParser;->setNanos(I)V

    .line 255
    .line 256
    .line 257
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    div-double/2addr v2, v4

    .line 263
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 264
    .line 265
    .line 266
    move-result-wide v2

    .line 267
    long-to-int p2, v2

    .line 268
    const/16 v0, 0xe

    .line 269
    .line 270
    :goto_2
    invoke-virtual {v1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :pswitch_6
    sget-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_NUMBER:Ljava/util/regex/Pattern;

    .line 275
    .line 276
    invoke-static {v0, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result p2

    .line 284
    invoke-virtual {v1, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v4, v8}, Ljava/util/Calendar;->set(II)V

    .line 288
    .line 289
    .line 290
    :goto_3
    invoke-virtual {v1, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :pswitch_7
    sget-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    .line 295
    .line 296
    invoke-static {v0, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    goto :goto_3

    .line 305
    :pswitch_8
    sget-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    .line 306
    .line 307
    invoke-static {v0, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result p2

    .line 315
    invoke-virtual {v1, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 316
    .line 317
    .line 318
    goto :goto_4

    .line 319
    :pswitch_9
    sget-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    .line 320
    .line 321
    invoke-static {v0, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    const/16 v0, 0xa

    .line 330
    .line 331
    goto :goto_2

    .line 332
    :pswitch_a
    sget-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    .line 333
    .line 334
    invoke-static {v0, p1, p2}, Lorg/h2/util/ToDateTokenizer;->matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result p2

    .line 342
    invoke-virtual {v1, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 343
    .line 344
    .line 345
    :cond_2
    :goto_4
    invoke-virtual {p1, v9, p3}, Lorg/h2/util/ToDateParser;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
