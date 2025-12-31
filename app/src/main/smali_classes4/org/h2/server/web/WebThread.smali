.class Lorg/h2/server/web/WebThread;
.super Lorg/h2/server/web/WebApp;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ifModifiedSince:Ljava/lang/String;

.field private input:Ljava/io/InputStream;

.field protected output:Ljava/io/OutputStream;

.field protected final socket:Ljava/net/Socket;

.field private final thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lorg/h2/server/web/WebServer;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/h2/server/web/WebApp;-><init>(Lorg/h2/server/web/WebServer;)V

    iput-object p1, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    new-instance p1, Ljava/lang/Thread;

    const-string p2, "H2 Console thread"

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/h2/server/web/WebThread;->thread:Ljava/lang/Thread;

    return-void
.end method

.method private allow()Z
    .locals 2

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->getAllowOthers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/h2/util/NetUtils;->isLocalAddress(Ljava/net/Socket;)Z

    move-result v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private getAllowedFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/h2/server/web/WebThread;->allow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "notAllowed.jsp"

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "index.do"

    :cond_1
    return-object p1
.end method

.method private static getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseAttributes(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "data="

    .line 2
    .line 3
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x3d

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ltz v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/16 v0, 0x26

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ltz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    move-object v0, p1

    .line 50
    move-object p1, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move-object v0, p1

    .line 53
    :goto_1
    invoke-static {p1}, Lorg/h2/util/StringUtils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    .line 58
    .line 59
    invoke-virtual {v1, v2, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-object p1, v0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private parseHeader()Z
    .locals 9

    .line 1
    const-string v0, "parseHeader"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/h2/server/web/WebThread;->ifModifiedSince:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/server/web/WebThread;->readHeaderLine()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-nez v5, :cond_1

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    const-string v6, " "

    .line 22
    .line 23
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-direct {p0, v6}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v5}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const-string v7, "if-modified-since"

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_2

    .line 41
    .line 42
    invoke-static {v5}, Lorg/h2/server/web/WebThread;->getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iput-object v5, p0, Lorg/h2/server/web/WebThread;->ifModifiedSince:Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v7, "connection"

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    const/4 v8, 0x1

    .line 56
    if-eqz v7, :cond_3

    .line 57
    .line 58
    invoke-static {v5}, Lorg/h2/server/web/WebThread;->getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string v6, "keep-alive"

    .line 63
    .line 64
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_0

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const-string v7, "content-type"

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_4

    .line 79
    .line 80
    invoke-static {v5}, Lorg/h2/server/web/WebThread;->getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const-string v6, "multipart/form-data"

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_0

    .line 91
    .line 92
    const/4 v4, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const-string v7, "content-length"

    .line 95
    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_5

    .line 101
    .line 102
    invoke-static {v5}, Lorg/h2/server/web/WebThread;->getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    const-string v5, "len="

    .line 111
    .line 112
    invoke-static {v3, v5}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-direct {p0, v5}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    const-string v7, "user-agent"

    .line 121
    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_6

    .line 127
    .line 128
    const-string v5, "webkit/"

    .line 129
    .line 130
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_0

    .line 135
    .line 136
    iget-object v5, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 137
    .line 138
    if-eqz v5, :cond_0

    .line 139
    .line 140
    const-string v6, "frame-border"

    .line 141
    .line 142
    const-string v7, "1"

    .line 143
    .line 144
    invoke-virtual {v5, v6, v7}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object v5, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 148
    .line 149
    const-string v6, "frameset-border"

    .line 150
    .line 151
    const-string v7, "2"

    .line 152
    .line 153
    invoke-virtual {v5, v6, v7}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_6
    const-string v7, "accept-language"

    .line 159
    .line 160
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_a

    .line 165
    .line 166
    iget-object v6, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 167
    .line 168
    if-nez v6, :cond_7

    .line 169
    .line 170
    move-object v6, v0

    .line 171
    goto :goto_1

    .line 172
    :cond_7
    iget-object v6, v6, Lorg/h2/server/web/WebSession;->locale:Ljava/util/Locale;

    .line 173
    .line 174
    :goto_1
    if-nez v6, :cond_0

    .line 175
    .line 176
    invoke-static {v5}, Lorg/h2/server/web/WebThread;->getHeaderLineValue(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    new-instance v6, Ljava/util/StringTokenizer;

    .line 181
    .line 182
    const-string v7, ",;"

    .line 183
    .line 184
    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_8
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_0

    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    const-string v7, "q="

    .line 198
    .line 199
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-nez v7, :cond_8

    .line 204
    .line 205
    iget-object v7, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    .line 206
    .line 207
    invoke-virtual {v7, v5}, Lorg/h2/server/web/WebServer;->supportsLanguage(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-eqz v7, :cond_8

    .line 212
    .line 213
    const/16 v6, 0x2d

    .line 214
    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-ltz v6, :cond_9

    .line 220
    .line 221
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    add-int/lit8 v6, v6, 0x1

    .line 226
    .line 227
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    new-instance v6, Ljava/util/Locale;

    .line 232
    .line 233
    invoke-direct {v6, v7, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_9
    new-instance v6, Ljava/util/Locale;

    .line 238
    .line 239
    const-string v7, ""

    .line 240
    .line 241
    invoke-direct {v6, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :goto_2
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    iput-object v5, p0, Lorg/h2/server/web/WebApp;->headerLanguage:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v7, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 251
    .line 252
    if-eqz v7, :cond_0

    .line 253
    .line 254
    iput-object v6, v7, Lorg/h2/server/web/WebSession;->locale:Ljava/util/Locale;

    .line 255
    .line 256
    const-string v6, "language"

    .line 257
    .line 258
    invoke-virtual {v7, v6, v5}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    iget-object v5, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    .line 262
    .line 263
    iget-object v6, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 264
    .line 265
    iget-object v7, p0, Lorg/h2/server/web/WebApp;->headerLanguage:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v5, v6, v7}, Lorg/h2/server/web/WebServer;->readTranslations(Lorg/h2/server/web/WebSession;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    if-nez v5, :cond_0

    .line 281
    .line 282
    :goto_3
    if-eqz v4, :cond_b

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_b
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 286
    .line 287
    if-eqz v0, :cond_d

    .line 288
    .line 289
    if-lez v3, :cond_d

    .line 290
    .line 291
    invoke-static {v3}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    :goto_4
    if-ge v1, v3, :cond_c

    .line 296
    .line 297
    iget-object v4, p0, Lorg/h2/server/web/WebThread;->input:Ljava/io/InputStream;

    .line 298
    .line 299
    sub-int v5, v3, v1

    .line 300
    .line 301
    invoke-virtual {v4, v0, v1, v5}, Ljava/io/InputStream;->read([BII)I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    add-int/2addr v1, v4

    .line 306
    goto :goto_4

    .line 307
    :cond_c
    new-instance v1, Ljava/lang/String;

    .line 308
    .line 309
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 310
    .line 311
    .line 312
    invoke-direct {p0, v1}, Lorg/h2/server/web/WebThread;->parseAttributes(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_d
    :goto_5
    return v2
.end method

.method private process()Z
    .locals 8

    invoke-direct {p0}, Lorg/h2/server/web/WebThread;->readHeaderLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "POST "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v1, :cond_2

    if-ge v3, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, ""

    :goto_1
    const-string v3, ": "

    .line 1
    invoke-static {v0, v3, v1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/h2/server/web/WebThread;->getAllowedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    if-ltz v1, :cond_3

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/server/web/WebThread;->parseAttributes(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v6, "jsessionid"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v5}, Lorg/h2/server/web/WebServer;->getSession(Ljava/lang/String;)Lorg/h2/server/web/WebSession;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    :cond_3
    invoke-direct {p0}, Lorg/h2/server/web/WebThread;->parseHeader()Z

    move-result v2

    iget-object v1, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/server/web/WebApp;->processRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    return v4

    :cond_4
    iget-boolean v1, p0, Lorg/h2/server/web/WebApp;->cache:Z

    const-string v4, "\r\n"

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/h2/server/web/WebThread;->ifModifiedSince:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v5, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v5}, Lorg/h2/server/web/WebServer;->getStartDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "HTTP/1.1 304 Not Modified\r\n"

    goto/16 :goto_6

    :cond_5
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->getFile(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "File not found: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP/1.1 404 Not Found\r\nContent-Length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v3

    .line 3
    :goto_2
    invoke-static {v4, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 4
    :cond_6
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v5, "Cache-Control: no-cache\r\n"

    const-string v6, "HTTP/1.1 200 OK\r\nContent-Type: "

    if-eqz v3, :cond_a

    const-string v3, ".jsp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/String;

    sget-object v3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-boolean v1, Lorg/h2/engine/SysProperties;->CONSOLE_STREAM:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v1, v1, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    const-string v7, "chunks"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    if-eqz v1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    .line 5
    invoke-static {v3, v4, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0, v5}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v3, "Transfer-Encoding: chunked\r\n"

    .line 8
    invoke-static {v0, v3}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v3, v3, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    invoke-static {v0, v3}, Lorg/h2/server/web/PageParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v3, v0

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    const-string v1, "0\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return v2

    :cond_9
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v1, v1, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/h2/server/web/PageParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    :cond_a
    move-object v3, v1

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    .line 10
    invoke-static {v1, v4, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-boolean v1, p0, Lorg/h2/server/web/WebApp;->cache:Z

    if-nez v1, :cond_b

    .line 12
    invoke-static {v0, v5}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 13
    :cond_b
    const-string v1, "Cache-Control: max-age=10\r\n"

    .line 14
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    const-string v1, "Last-Modified: "

    .line 16
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1}, Lorg/h2/server/web/WebServer;->getStartDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    const-string v1, "Content-Length: "

    .line 18
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    array-length v1, v3

    goto/16 :goto_2

    .line 20
    :goto_6
    invoke-static {v0, v4}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Lorg/h2/server/web/WebThread;->trace(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    if-eqz v3, :cond_c

    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_c
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_d
    return v2
.end method

.method private readHeaderLine()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/h2/server/web/WebThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/h2/server/web/WebThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3

    :cond_2
    if-ne v1, v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    return-object v3

    :cond_4
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private trace(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0, p1}, Lorg/h2/server/web/WebServer;->trace(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public adminShutdown()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/server/web/WebThread;->stopNow()V

    invoke-super {p0}, Lorg/h2/server/web/WebApp;->adminShutdown()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public join(I)V
    .locals 3

    iget-object v0, p0, Lorg/h2/server/web/WebThread;->thread:Ljava/lang/Thread;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    return-void
.end method

.method public run()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/h2/server/web/WebThread;->input:Ljava/io/InputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    :cond_0
    iget-boolean v0, p0, Lorg/h2/server/web/WebApp;->stop:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/h2/server/web/WebThread;->process()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->output:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    iget-object v0, p0, Lorg/h2/server/web/WebThread;->input:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    :try_start_1
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_1
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0, p0}, Lorg/h2/server/web/WebServer;->remove(Lorg/h2/server/web/WebThread;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, p0}, Lorg/h2/server/web/WebServer;->remove(Lorg/h2/server/web/WebThread;)V

    throw v0

    :goto_1
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopNow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/server/web/WebApp;->stop:Z

    :try_start_0
    iget-object v0, p0, Lorg/h2/server/web/WebThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
