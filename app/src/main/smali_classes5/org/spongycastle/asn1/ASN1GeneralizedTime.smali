.class public Lorg/spongycastle/asn1/ASN1GeneralizedTime;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"


# instance fields
.field private time:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->time:[B

    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid date string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->time:[B

    return-void
.end method

.method private calculateGMTOffset()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const-string v2, "+"

    if-gez v1, :cond_0

    neg-int v1, v1

    const-string v3, "-"

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const v4, 0x36ee80

    div-int v5, v1, v4

    mul-int v4, v4, v5

    sub-int/2addr v1, v4

    const v4, 0xea60

    div-int/2addr v1, v4

    :try_start_0
    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    add-int/2addr v5, v0

    :catch_0
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "GMT"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convert(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    const-string v0, "0"

    .line 6
    .line 7
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method private hasFractionalSeconds()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->time:[B

    array-length v3, v2

    if-eq v1, v3, :cond_1

    aget-byte v2, v2, v1

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->time:[B

    check-cast p1, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->time:[B

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    const/16 v0, 0x18

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->time:[B

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method public encodedLength()I
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->time:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->time:[B

    .line 2
    .line 3
    invoke-static {v0}, Lorg/spongycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Z"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 23
    .line 24
    const-string v4, "yyyyMMddHHmmss.SSS\'Z\'"

    .line 25
    .line 26
    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    const-string v4, "yyyyMMddHHmmss\'Z\'"

    .line 33
    .line 34
    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    new-instance v4, Ljava/util/SimpleTimeZone;

    .line 38
    .line 39
    invoke-direct {v4, v3, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 43
    .line 44
    .line 45
    goto :goto_6

    .line 46
    :cond_1
    const/16 v2, 0x2d

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-gtz v2, :cond_4

    .line 53
    .line 54
    const/16 v2, 0x2b

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-lez v2, :cond_2

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 70
    .line 71
    const-string v2, "yyyyMMddHHmmss.SSS"

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    move-object v2, v1

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 79
    .line 80
    const-string v2, "yyyyMMddHHmmss"

    .line 81
    .line 82
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :goto_3
    new-instance v1, Ljava/util/SimpleTimeZone;

    .line 87
    .line 88
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-direct {v1, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 100
    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 114
    .line 115
    const-string v4, "yyyyMMddHHmmss.SSSz"

    .line 116
    .line 117
    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 122
    .line 123
    const-string v4, "yyyyMMddHHmmssz"

    .line 124
    .line 125
    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_5
    new-instance v4, Ljava/util/SimpleTimeZone;

    .line 129
    .line 130
    invoke-direct {v4, v3, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :goto_6
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_a

    .line 139
    .line 140
    const/16 v1, 0xe

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    const/4 v5, 0x1

    .line 147
    const/4 v6, 0x1

    .line 148
    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-ge v6, v7, :cond_7

    .line 153
    .line 154
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    const/16 v8, 0x30

    .line 159
    .line 160
    if-gt v8, v7, :cond_7

    .line 161
    .line 162
    const/16 v8, 0x39

    .line 163
    .line 164
    if-le v7, v8, :cond_6

    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_7
    :goto_8
    add-int/lit8 v7, v6, -0x1

    .line 171
    .line 172
    const/4 v8, 0x3

    .line 173
    if-le v7, v8, :cond_8

    .line 174
    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const/4 v7, 0x4

    .line 181
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    goto :goto_a

    .line 219
    :cond_8
    if-ne v7, v5, :cond_9

    .line 220
    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v7, "00"

    .line 227
    .line 228
    invoke-static {v4, v3, v6, v5, v7}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v4, v6, v5}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    :goto_9
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    goto :goto_a

    .line 255
    :cond_9
    const/4 v5, 0x2

    .line 256
    if-ne v7, v5, :cond_a

    .line 257
    .line 258
    new-instance v5, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v7, "0"

    .line 264
    .line 265
    invoke-static {v4, v3, v6, v5, v7}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v4, v6, v5}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_a
    :goto_a
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->time:[B

    .line 2
    .line 3
    invoke-static {v0}, Lorg/spongycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x5a

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    add-int/lit8 v2, v2, -0x1

    .line 32
    .line 33
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "GMT+00:00"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/lit8 v2, v1, -0x5

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const-string v5, "GMT"

    .line 61
    .line 62
    const/16 v6, 0x2d

    .line 63
    .line 64
    if-eq v4, v6, :cond_4

    .line 65
    .line 66
    const/16 v7, 0x2b

    .line 67
    .line 68
    if-ne v4, v7, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/lit8 v1, v1, -0x3

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eq v2, v6, :cond_3

    .line 82
    .line 83
    if-ne v2, v7, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->calculateGMTOffset()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0

    .line 102
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v3, v1, v2, v5}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, ":00"

    .line 118
    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    return-object v0

    .line 127
    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    add-int/lit8 v1, v1, -0x2

    .line 143
    .line 144
    const-string v3, ":"

    .line 145
    .line 146
    invoke-static {v0, v2, v1, v4, v3}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v1, v4}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->time:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
