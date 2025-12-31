.class public Lorg/h2/tools/ConvertTraceFile;
.super Lorg/h2/util/Tool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/tools/ConvertTraceFile$Stat;
    }
.end annotation


# instance fields
.field private final stats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/tools/ConvertTraceFile$Stat;",
            ">;"
        }
    .end annotation
.end field

.field private timeTotal:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/ConvertTraceFile;->stats:Ljava/util/HashMap;

    return-void
.end method

.method private addToStats(Ljava/lang/String;IJ)V
    .locals 3

    iget-object v0, p0, Lorg/h2/tools/ConvertTraceFile;->stats:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/tools/ConvertTraceFile$Stat;

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/tools/ConvertTraceFile$Stat;

    invoke-direct {v0}, Lorg/h2/tools/ConvertTraceFile$Stat;-><init>()V

    iput-object p1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->sql:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/tools/ConvertTraceFile;->stats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->executeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->executeCount:I

    iget-wide v1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->resultCount:J

    int-to-long p1, p2

    add-long/2addr v1, p1

    iput-wide v1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->resultCount:J

    iget-wide p1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    add-long/2addr p1, p3

    iput-wide p1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    iget-wide p1, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    return-void
.end method

.method private convertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/LineNumberReader;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lorg/h2/util/IOUtils;->getBufferedReader(Ljava/io/InputStream;)Ljava/io/Reader;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/io/PrintWriter;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ".java"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v1, v2}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lorg/h2/util/IOUtils;->getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/io/PrintWriter;

    .line 46
    .line 47
    invoke-static {p3, v2}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-static {p3}, Lorg/h2/util/IOUtils;->getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-direct {v1, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 56
    .line 57
    .line 58
    const-string p3, "import java.io.*;"

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p3, "import java.sql.*;"

    .line 64
    .line 65
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p3, "import java.math.*;"

    .line 69
    .line 70
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p3, "import java.util.Calendar;"

    .line 74
    .line 75
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/16 p3, 0x5c

    .line 79
    .line 80
    const/16 v3, 0x2f

    .line 81
    .line 82
    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    if-lez p3, :cond_0

    .line 91
    .line 92
    add-int/lit8 p3, p3, 0x1

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v3, "public class "

    .line 101
    .line 102
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p2, " {"

    .line 109
    .line 110
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string p2, "    public static void main(String... args) throws Exception {"

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string p2, "        Class.forName(\"org.h2.Driver\");"

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    const-wide/16 v3, 0x0

    .line 135
    .line 136
    if-nez p2, :cond_4

    .line 137
    .line 138
    const-string p2, "    }"

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const/16 p2, 0x7d

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(C)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lorg/h2/tools/ConvertTraceFile;->stats:Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-lez p1, :cond_3

    .line 161
    .line 162
    const-string p1, "-----------------------------------------"

    .line 163
    .line 164
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string p2, "-- SQL Statement Statistics"

    .line 168
    .line 169
    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string p2, "-- time: total time in milliseconds (accumulated)"

    .line 173
    .line 174
    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string p2, "-- count: how many times the statement ran"

    .line 178
    .line 179
    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string p2, "-- result: total update count or row count"

    .line 183
    .line 184
    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string p1, "-- self accu    time   count  result sql"

    .line 191
    .line 192
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lorg/h2/tools/ConvertTraceFile;->stats:Ljava/util/HashMap;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {p1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 206
    .line 207
    .line 208
    iget-wide p2, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    .line 209
    .line 210
    cmp-long v0, p2, v3

    .line 211
    .line 212
    if-nez v0, :cond_2

    .line 213
    .line 214
    const-wide/16 p2, 0x1

    .line 215
    .line 216
    iput-wide p2, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    .line 217
    .line 218
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-eqz p2, :cond_3

    .line 227
    .line 228
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    check-cast p2, Lorg/h2/tools/ConvertTraceFile$Stat;

    .line 233
    .line 234
    int-to-long v2, v2

    .line 235
    iget-wide v4, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    .line 236
    .line 237
    add-long/2addr v2, v4

    .line 238
    long-to-int v2, v2

    .line 239
    const/16 p3, 0x64

    .line 240
    .line 241
    const-string v0, "-- "

    .line 242
    .line 243
    invoke-static {p3, v0}, LA/g;->o(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    const-wide/16 v3, 0x64

    .line 248
    .line 249
    iget-wide v5, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    .line 250
    .line 251
    mul-long v5, v5, v3

    .line 252
    .line 253
    iget-wide v3, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    .line 254
    .line 255
    div-long/2addr v5, v3

    .line 256
    const/4 v0, 0x3

    .line 257
    invoke-static {v5, v6, v0}, Lorg/h2/tools/ConvertTraceFile;->padNumberLeft(JI)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v3, "% "

    .line 265
    .line 266
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    mul-int/lit8 v3, v2, 0x64

    .line 270
    .line 271
    int-to-long v3, v3

    .line 272
    iget-wide v5, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    .line 273
    .line 274
    div-long/2addr v3, v5

    .line 275
    invoke-static {v3, v4, v0}, Lorg/h2/tools/ConvertTraceFile;->padNumberLeft(JI)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const/16 v0, 0x25

    .line 283
    .line 284
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget-wide v3, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    .line 288
    .line 289
    const/16 v0, 0x8

    .line 290
    .line 291
    invoke-static {v3, v4, v0}, Lorg/h2/tools/ConvertTraceFile;->padNumberLeft(JI)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget v3, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->executeCount:I

    .line 299
    .line 300
    int-to-long v3, v3

    .line 301
    invoke-static {v3, v4, v0}, Lorg/h2/tools/ConvertTraceFile;->padNumberLeft(JI)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    iget-wide v3, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->resultCount:J

    .line 309
    .line 310
    invoke-static {v3, v4, v0}, Lorg/h2/tools/ConvertTraceFile;->padNumberLeft(JI)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const/16 v0, 0x20

    .line 318
    .line 319
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget-object p2, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->sql:Ljava/lang/String;

    .line 323
    .line 324
    invoke-static {p2}, Lorg/h2/tools/ConvertTraceFile;->removeNewlines(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto :goto_1

    .line 339
    :cond_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_4
    const-string p3, "/**/"

    .line 344
    .line 345
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result p3

    .line 349
    if-eqz p3, :cond_5

    .line 350
    .line 351
    new-instance p3, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v3, "        "

    .line 354
    .line 355
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const/4 v3, 0x4

    .line 359
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto/16 :goto_0

    .line 374
    .line 375
    :cond_5
    const-string p3, "/*SQL"

    .line 376
    .line 377
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result p3

    .line 381
    if-eqz p3, :cond_1

    .line 382
    .line 383
    const-string p3, "*/"

    .line 384
    .line 385
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    move-result p3

    .line 389
    add-int/lit8 v5, p3, 0x2

    .line 390
    .line 391
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-static {v5}, Lorg/h2/util/StringUtils;->javaDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    const/4 v6, 0x5

    .line 400
    invoke-virtual {p2, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p2

    .line 404
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 405
    .line 406
    .line 407
    move-result p3

    .line 408
    if-lez p3, :cond_b

    .line 409
    .line 410
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p2

    .line 414
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 415
    .line 416
    .line 417
    move-result p3

    .line 418
    if-lez p3, :cond_9

    .line 419
    .line 420
    new-instance p3, Ljava/util/StringTokenizer;

    .line 421
    .line 422
    const-string v6, " :"

    .line 423
    .line 424
    invoke-direct {p3, p2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    move-object p2, v5

    .line 428
    const/4 v6, 0x0

    .line 429
    :cond_6
    :goto_2
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    if-eqz v7, :cond_a

    .line 434
    .line 435
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v7

    .line 439
    const-string v8, "l"

    .line 440
    .line 441
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v8

    .line 445
    if-eqz v8, :cond_7

    .line 446
    .line 447
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p2

    .line 451
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 452
    .line 453
    .line 454
    move-result p2

    .line 455
    new-instance v7, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v5, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object p2

    .line 464
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string p2, ";"

    .line 468
    .line 469
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p2

    .line 476
    goto :goto_2

    .line 477
    :cond_7
    const-string v8, "#"

    .line 478
    .line 479
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v8

    .line 483
    if-eqz v8, :cond_8

    .line 484
    .line 485
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    goto :goto_2

    .line 494
    :cond_8
    const-string v8, "t"

    .line 495
    .line 496
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v7

    .line 500
    if-eqz v7, :cond_6

    .line 501
    .line 502
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 507
    .line 508
    .line 509
    move-result-wide v3

    .line 510
    goto :goto_2

    .line 511
    :cond_9
    move-object p2, v5

    .line 512
    const/4 v6, 0x0

    .line 513
    :cond_a
    invoke-direct {p0, p2, v6, v3, v4}, Lorg/h2/tools/ConvertTraceFile;->addToStats(Ljava/lang/String;IJ)V

    .line 514
    .line 515
    .line 516
    :cond_b
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    goto/16 :goto_0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/h2/tools/ConvertTraceFile;

    invoke-direct {v0}, Lorg/h2/tools/ConvertTraceFile;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/ConvertTraceFile;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private static padNumberLeft(JI)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeNewlines(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public varargs runTool([Ljava/lang/String;)V
    .locals 6

    const-string v0, "test.trace.db"

    const-string v1, "Test"

    const-string v2, "test.sql"

    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_5

    array-length v4, p1

    if-ge v3, v4, :cond_5

    aget-object v4, p1, v3

    const-string v5, "-traceFile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    aget-object v0, p1, v3

    goto :goto_1

    :cond_0
    const-string v5, "-javaClass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    aget-object v1, p1, v3

    goto :goto_1

    :cond_1
    const-string v5, "-script"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, p1, v3

    goto :goto_1

    :cond_2
    const-string v5, "-help"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "-?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Lorg/h2/util/Tool;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/h2/util/Tool;->showUsage()V

    return-void

    :cond_5
    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lorg/h2/tools/ConvertTraceFile;->convertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
