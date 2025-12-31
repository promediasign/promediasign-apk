.class public Lch/qos/logback/core/rolling/helper/Compressor;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x2000


# instance fields
.field final compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/rolling/helper/CompressionMode;)V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/rolling/helper/Compressor;->compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;

    return-void
.end method

.method public static computeFileNameStrWithoutCompSuffix(Ljava/lang/String;Lch/qos/logback/core/rolling/helper/CompressionMode;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lch/qos/logback/core/rolling/helper/Compressor$1;->$SwitchMap$ch$qos$logback$core$rolling$helper$CompressionMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v3, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Execution should not reach this point"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, ".zip"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, -0x4

    :goto_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    const-string p1, ".gz"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method private gzCompress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "]."

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-instance p2, Lch/qos/logback/core/status/WarnStatus;

    .line 15
    .line 16
    const-string v0, "The file to compress named ["

    .line 17
    .line 18
    const-string v1, "] does not exist."

    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p2, p1, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string v2, ".gz"

    .line 32
    .line 33
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 44
    .line 45
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "The target compressed file named ["

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, "] exist already. Aborting file compression."

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v4, "GZ compressing ["

    .line 80
    .line 81
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v4, "] as ["

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v5, "]"

    .line 96
    .line 97
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {p0, v3}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v2}, Lch/qos/logback/core/rolling/helper/Compressor;->createMissingTargetDirsIfNecessary(Ljava/io/File;)V

    .line 108
    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 112
    .line 113
    new-instance v7, Ljava/io/FileInputStream;

    .line 114
    .line 115
    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 119
    .line 120
    .line 121
    :try_start_1
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    .line 122
    .line 123
    new-instance v8, Ljava/io/FileOutputStream;

    .line 124
    .line 125
    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {v7, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .line 130
    .line 131
    const/16 v3, 0x2000

    .line 132
    .line 133
    :try_start_2
    new-array v3, v3, [B

    .line 134
    .line 135
    :goto_0
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    const/4 v9, -0x1

    .line 140
    if-eq v8, v9, :cond_3

    .line 141
    .line 142
    const/4 v9, 0x0

    .line 143
    invoke-virtual {v7, v3, v9, v8}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :catchall_0
    move-exception p1

    .line 148
    :goto_1
    move-object v3, v6

    .line 149
    goto/16 :goto_7

    .line 150
    .line 151
    :catch_0
    move-exception v2

    .line 152
    :goto_2
    move-object v3, v6

    .line 153
    goto :goto_4

    .line 154
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v8, "Done ZIP compressing ["

    .line 160
    .line 161
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {p0, v2}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    .line 182
    .line 183
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 184
    .line 185
    .line 186
    :catch_1
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :catch_2
    nop

    .line 191
    goto :goto_6

    .line 192
    :catchall_1
    move-exception p1

    .line 193
    move-object v7, v3

    .line 194
    goto :goto_1

    .line 195
    :catch_3
    move-exception v2

    .line 196
    move-object v7, v3

    .line 197
    goto :goto_2

    .line 198
    :catchall_2
    move-exception p1

    .line 199
    move-object v7, v3

    .line 200
    goto :goto_7

    .line 201
    :catch_4
    move-exception v2

    .line 202
    move-object v7, v3

    .line 203
    :goto_4
    :try_start_5
    new-instance v4, Lch/qos/logback/core/status/ErrorStatus;

    .line 204
    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v6, "Error occurred while compressing ["

    .line 211
    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v6, "] into ["

    .line 219
    .line 220
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-direct {v4, p2, p0, v2}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v4}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 237
    .line 238
    .line 239
    if-eqz v3, :cond_4

    .line 240
    .line 241
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :catch_5
    nop

    .line 246
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_5
    :goto_6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 250
    .line 251
    .line 252
    move-result p2

    .line 253
    if-nez p2, :cond_6

    .line 254
    .line 255
    new-instance p2, Lch/qos/logback/core/status/WarnStatus;

    .line 256
    .line 257
    const-string v1, "Could not delete ["

    .line 258
    .line 259
    invoke-static {v1, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-direct {p2, p1, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 267
    .line 268
    .line 269
    :cond_6
    return-void

    .line 270
    :catchall_3
    move-exception p1

    .line 271
    :goto_7
    if-eqz v3, :cond_7

    .line 272
    .line 273
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 274
    .line 275
    .line 276
    goto :goto_8

    .line 277
    :catch_6
    nop

    .line 278
    :cond_7
    :goto_8
    if-eqz v7, :cond_8

    .line 279
    .line 280
    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 281
    .line 282
    .line 283
    :catch_7
    :cond_8
    throw p1
.end method

.method private zipCompress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "]."

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-instance p2, Lch/qos/logback/core/status/WarnStatus;

    .line 15
    .line 16
    const-string p3, "The file to compress named ["

    .line 17
    .line 18
    const-string v0, "] does not exist."

    .line 19
    .line 20
    invoke-static {p3, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p2, p1, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    if-nez p3, :cond_1

    .line 32
    .line 33
    new-instance p1, Lch/qos/logback/core/status/WarnStatus;

    .line 34
    .line 35
    const-string p2, "The innerEntryName parameter cannot be null"

    .line 36
    .line 37
    invoke-direct {p1, p2, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string v2, ".zip"

    .line 45
    .line 46
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    :cond_2
    new-instance v2, Ljava/io/File;

    .line 57
    .line 58
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    new-instance p1, Lch/qos/logback/core/status/WarnStatus;

    .line 68
    .line 69
    const-string p3, "The target compressed file named ["

    .line 70
    .line 71
    const-string v0, "] exist already."

    .line 72
    .line 73
    invoke-static {p3, p2, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v4, "ZIP compressing ["

    .line 87
    .line 88
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v4, "] as ["

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v5, "]"

    .line 103
    .line 104
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {p0, v3}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v2}, Lch/qos/logback/core/rolling/helper/Compressor;->createMissingTargetDirsIfNecessary(Ljava/io/File;)V

    .line 115
    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 119
    .line 120
    new-instance v7, Ljava/io/FileInputStream;

    .line 121
    .line 122
    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 126
    .line 127
    .line 128
    :try_start_1
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    .line 129
    .line 130
    new-instance v8, Ljava/io/FileOutputStream;

    .line 131
    .line 132
    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {v7, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    .line 137
    .line 138
    :try_start_2
    invoke-virtual {p0, p3}, Lch/qos/logback/core/rolling/helper/Compressor;->computeZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {v7, p3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 143
    .line 144
    .line 145
    const/16 p3, 0x2000

    .line 146
    .line 147
    new-array p3, p3, [B

    .line 148
    .line 149
    :goto_0
    invoke-virtual {v6, p3}, Ljava/io/InputStream;->read([B)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    const/4 v8, -0x1

    .line 154
    if-eq v3, v8, :cond_4

    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    invoke-virtual {v7, p3, v8, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :catchall_0
    move-exception p1

    .line 162
    :goto_1
    move-object v3, v6

    .line 163
    goto/16 :goto_7

    .line 164
    .line 165
    :catch_0
    move-exception p3

    .line 166
    :goto_2
    move-object v3, v6

    .line 167
    goto :goto_4

    .line 168
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v3, "Done ZIP compressing ["

    .line 174
    .line 175
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    invoke-virtual {p0, p3}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    .line 196
    .line 197
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 198
    .line 199
    .line 200
    :catch_1
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 201
    .line 202
    .line 203
    goto :goto_6

    .line 204
    :catch_2
    nop

    .line 205
    goto :goto_6

    .line 206
    :catchall_1
    move-exception p1

    .line 207
    move-object v7, v3

    .line 208
    goto :goto_1

    .line 209
    :catch_3
    move-exception p3

    .line 210
    move-object v7, v3

    .line 211
    goto :goto_2

    .line 212
    :catchall_2
    move-exception p1

    .line 213
    move-object v7, v3

    .line 214
    goto :goto_7

    .line 215
    :catch_4
    move-exception p3

    .line 216
    move-object v7, v3

    .line 217
    :goto_4
    :try_start_5
    new-instance v2, Lch/qos/logback/core/status/ErrorStatus;

    .line 218
    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string v5, "Error occurred while compressing ["

    .line 225
    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v5, "] into ["

    .line 233
    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-direct {v2, p2, p0, p3}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v2}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 251
    .line 252
    .line 253
    if-eqz v3, :cond_5

    .line 254
    .line 255
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 256
    .line 257
    .line 258
    goto :goto_5

    .line 259
    :catch_5
    nop

    .line 260
    :cond_5
    :goto_5
    if-eqz v7, :cond_6

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_6
    :goto_6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-nez p2, :cond_7

    .line 268
    .line 269
    new-instance p2, Lch/qos/logback/core/status/WarnStatus;

    .line 270
    .line 271
    const-string p3, "Could not delete ["

    .line 272
    .line 273
    invoke-static {p3, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-direct {p2, p1, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 281
    .line 282
    .line 283
    :cond_7
    return-void

    .line 284
    :catchall_3
    move-exception p1

    .line 285
    :goto_7
    if-eqz v3, :cond_8

    .line 286
    .line 287
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 288
    .line 289
    .line 290
    goto :goto_8

    .line 291
    :catch_6
    nop

    .line 292
    :cond_8
    :goto_8
    if-eqz v7, :cond_9

    .line 293
    .line 294
    :try_start_8
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 295
    .line 296
    .line 297
    :catch_7
    :cond_9
    throw p1
.end method


# virtual methods
.method public asyncCompress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;-><init>(Lch/qos/logback/core/rolling/helper/Compressor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-interface {p1}, Lch/qos/logback/core/Context;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public compress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lch/qos/logback/core/rolling/helper/Compressor$1;->$SwitchMap$ch$qos$logback$core$rolling$helper$CompressionMode:[I

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/Compressor;->compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "compress method called in NONE compression mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lch/qos/logback/core/rolling/helper/Compressor;->zipCompress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/rolling/helper/Compressor;->gzCompress(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public computeZipEntry(Ljava/io/File;)Ljava/util/zip/ZipEntry;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/rolling/helper/Compressor;->computeZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    return-object p1
.end method

.method public computeZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 1

    .line 2
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/Compressor;->compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;

    invoke-static {p1, v0}, Lch/qos/logback/core/rolling/helper/Compressor;->computeFileNameStrWithoutCompSuffix(Ljava/lang/String;Lch/qos/logback/core/rolling/helper/CompressionMode;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createMissingTargetDirsIfNecessary(Ljava/io/File;)V
    .locals 2

    invoke-static {p1}, Lch/qos/logback/core/util/FileUtil;->createMissingParentDirectories(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create parent directories for ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
