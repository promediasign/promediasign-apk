.class public Lorg/h2/value/ValueTimestamp;
.super Lorg/h2/value/Value;
.source "SourceFile"


# static fields
.field static final DEFAULT_SCALE:I = 0xa

.field static final DISPLAY_SIZE:I = 0x17

.field public static final PRECISION:I = 0x17


# instance fields
.field private final dateValue:J

.field private final timeNanos:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    cmp-long v0, p3, p1

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const-wide p1, 0x4e94914f0000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v0, p3, p1

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    iput-wide p3, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "timeNanos out of range "

    .line 27
    .line 28
    invoke-static {p2, p3, p4}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public static fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;
    .locals 1

    new-instance v0, Lorg/h2/value/ValueTimestamp;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/h2/value/ValueTimestamp;-><init>(JJ)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueTimestamp;

    return-object p0
.end method

.method public static fromMillis(J)Lorg/h2/value/ValueTimestamp;
    .locals 2

    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0
.end method

.method public static fromMillisNanos(JI)Lorg/h2/value/ValueTimestamp;
    .locals 4

    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide v0

    int-to-long v2, p2

    invoke-static {p0, p1}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    move-result-wide p0

    add-long/2addr p0, v2

    invoke-static {v0, v1, p0, p1}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;
    .locals 6

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result p0

    const v2, 0xf4240

    rem-int/2addr p0, v2

    int-to-long v2, p0

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    move-result-wide v4

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/h2/value/ValueTimestamp;->parseTry(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "TIMESTAMP"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x55f7

    invoke-static {v1, v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static parseTry(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x54

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :cond_0
    if-gez v2, :cond_1

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, -0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 26
    .line 27
    :goto_0
    const/4 v4, 0x0

    .line 28
    invoke-static {v0, v4, v2}, Lorg/h2/util/DateTimeUtils;->parseDateValue(Ljava/lang/String;II)J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    const-wide/16 v6, 0x0

    .line 33
    .line 34
    if-gez v3, :cond_2

    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v8, "Z"

    .line 43
    .line 44
    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const-string v9, "UTC"

    .line 49
    .line 50
    if-eqz v8, :cond_3

    .line 51
    .line 52
    invoke-static {v9}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    add-int/lit8 v3, v3, -0x1

    .line 57
    .line 58
    :goto_1
    move-object v10, v1

    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_3
    const/16 v8, 0x2b

    .line 62
    .line 63
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->indexOf(II)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-gez v8, :cond_4

    .line 68
    .line 69
    const/16 v8, 0x2d

    .line 70
    .line 71
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->indexOf(II)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    :cond_4
    if-ltz v8, :cond_6

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "GMT"

    .line 80
    .line 81
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v8, v1}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_5

    .line 101
    .line 102
    move-object v10, v3

    .line 103
    move v3, v8

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string v2, " ("

    .line 108
    .line 109
    invoke-static {v1, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, "?)"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_6
    add-int/lit8 v8, v2, 0x1

    .line 134
    .line 135
    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->indexOf(II)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-lez v1, :cond_8

    .line 140
    .line 141
    add-int/lit8 v3, v1, 0x1

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_7

    .line 160
    .line 161
    move v3, v1

    .line 162
    move-object v10, v8

    .line 163
    goto :goto_2

    .line 164
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_8
    const/4 v1, 0x0

    .line 171
    goto :goto_1

    .line 172
    :goto_2
    const/4 v1, 0x1

    .line 173
    add-int/2addr v2, v1

    .line 174
    invoke-static {v0, v2, v3, v1}, Lorg/h2/util/DateTimeUtils;->parseTimeNanos(Ljava/lang/String;IIZ)J

    .line 175
    .line 176
    .line 177
    move-result-wide v0

    .line 178
    if-eqz v10, :cond_a

    .line 179
    .line 180
    invoke-static {v4, v5}, Lorg/h2/util/DateTimeUtils;->yearFromDateValue(J)I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    invoke-static {v4, v5}, Lorg/h2/util/DateTimeUtils;->monthFromDateValue(J)I

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    invoke-static {v4, v5}, Lorg/h2/util/DateTimeUtils;->dayFromDateValue(J)I

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    const-wide/32 v2, 0xf4240

    .line 193
    .line 194
    .line 195
    div-long v4, v0, v2

    .line 196
    .line 197
    mul-long v14, v4, v2

    .line 198
    .line 199
    sub-long/2addr v0, v14

    .line 200
    const-wide/16 v14, 0x3e8

    .line 201
    .line 202
    div-long v16, v4, v14

    .line 203
    .line 204
    mul-long v14, v14, v16

    .line 205
    .line 206
    sub-long/2addr v4, v14

    .line 207
    const-wide/16 v14, 0x3c

    .line 208
    .line 209
    div-long v14, v16, v14

    .line 210
    .line 211
    long-to-int v8, v14

    .line 212
    mul-int/lit8 v14, v8, 0x3c

    .line 213
    .line 214
    int-to-long v14, v14

    .line 215
    sub-long v14, v16, v14

    .line 216
    .line 217
    div-int/lit8 v16, v8, 0x3c

    .line 218
    .line 219
    mul-int/lit8 v17, v16, 0x3c

    .line 220
    .line 221
    sub-int v8, v8, v17

    .line 222
    .line 223
    long-to-int v15, v14

    .line 224
    long-to-int v5, v4

    .line 225
    move/from16 v14, v16

    .line 226
    .line 227
    move v4, v15

    .line 228
    move v15, v8

    .line 229
    move/from16 v16, v4

    .line 230
    .line 231
    move/from16 v17, v5

    .line 232
    .line 233
    invoke-static/range {v10 .. v17}, Lorg/h2/util/DateTimeUtils;->getMillis(Ljava/util/TimeZone;IIIIIII)J

    .line 234
    .line 235
    .line 236
    move-result-wide v4

    .line 237
    new-instance v8, Ljava/sql/Date;

    .line 238
    .line 239
    invoke-direct {v8, v4, v5}, Ljava/sql/Date;-><init>(J)V

    .line 240
    .line 241
    .line 242
    invoke-static {v9}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-static {v8, v4}, Lorg/h2/util/DateTimeUtils;->convertToLocal(Ljava/util/Date;Ljava/util/Calendar;)J

    .line 251
    .line 252
    .line 253
    move-result-wide v4

    .line 254
    cmp-long v8, v4, v6

    .line 255
    .line 256
    if-ltz v8, :cond_9

    .line 257
    .line 258
    move-wide v6, v4

    .line 259
    goto :goto_3

    .line 260
    :cond_9
    const-wide/32 v6, 0x5265bff

    .line 261
    .line 262
    .line 263
    sub-long v6, v4, v6

    .line 264
    .line 265
    :goto_3
    const-wide/32 v8, 0x5265c00

    .line 266
    .line 267
    .line 268
    div-long/2addr v6, v8

    .line 269
    invoke-static {v6, v7}, Lorg/h2/util/DateTimeUtils;->dateValueFromAbsoluteDay(J)J

    .line 270
    .line 271
    .line 272
    move-result-wide v10

    .line 273
    mul-long v6, v6, v8

    .line 274
    .line 275
    sub-long/2addr v4, v6

    .line 276
    mul-long v4, v4, v2

    .line 277
    .line 278
    add-long v6, v4, v0

    .line 279
    .line 280
    move-wide v4, v10

    .line 281
    goto :goto_4

    .line 282
    :cond_a
    move-wide v6, v0

    .line 283
    :goto_4
    invoke-static {v4, v5, v6, v7}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    return-object v0
.end method


# virtual methods
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 6

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueTimestamp;

    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->absoluteDayFromDateValue(J)J

    move-result-wide v0

    iget-wide v2, p1, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v2, v3}, Lorg/h2/util/DateTimeUtils;->absoluteDayFromDateValue(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    iget-wide v4, p1, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Lorg/h2/util/DateTimeUtils;->normalizeTimestamp(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 4

    check-cast p1, Lorg/h2/value/ValueTimestamp;

    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    iget-wide v2, p1, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p2

    if-eqz p2, :cond_0

    return p2

    :cond_0
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    iget-wide p1, p1, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    invoke-static {v0, v1, p1, p2}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public convertScale(ZI)Lorg/h2/value/Value;
    .locals 3

    const/16 p1, 0xa

    if-lt p2, p1, :cond_0

    return-object p0

    :cond_0
    if-ltz p2, :cond_2

    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDecimal;->setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v0, v1, p1, p2}, Lorg/h2/value/ValueTimestamp;->fromDateValueAndNanos(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "scale"

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/h2/value/ValueTimestamp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/h2/value/ValueTimestamp;

    iget-wide v3, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    iget-wide v5, p1, Lorg/h2/value/ValueTimestamp;->dateValue:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    iget-wide v5, p1, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDateValue()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    return-wide v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestamp;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x17

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIMESTAMP \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestamp;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-wide v1, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v0, v1, v2}, Lorg/h2/value/ValueDate;->appendDate(Ljava/lang/StringBuilder;J)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueTime;->appendTime(Ljava/lang/StringBuilder;JZ)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeNanos()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    return-wide v0
.end method

.method public getTimestamp()Ljava/sql/Timestamp;
    .locals 4

    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    iget-wide v2, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/DateTimeUtils;->convertDateValueToTimestamp(JJ)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    iget-wide v3, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    xor-long/2addr v0, v3

    ushr-long v2, v3, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestamp;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 6

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueTimestamp;

    iget-wide v0, p0, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v0, v1}, Lorg/h2/util/DateTimeUtils;->absoluteDayFromDateValue(J)J

    move-result-wide v0

    iget-wide v2, p1, Lorg/h2/value/ValueTimestamp;->dateValue:J

    invoke-static {v2, v3}, Lorg/h2/util/DateTimeUtils;->absoluteDayFromDateValue(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    iget-wide v4, p1, Lorg/h2/value/ValueTimestamp;->timeNanos:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/DateTimeUtils;->normalizeTimestamp(JJ)Lorg/h2/value/ValueTimestamp;

    move-result-object p1

    return-object p1
.end method
