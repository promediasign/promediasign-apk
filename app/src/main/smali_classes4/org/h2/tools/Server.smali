.class public Lorg/h2/tools/Server;
.super Lorg/h2/util/Tool;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/h2/server/ShutdownHandler;


# instance fields
.field private pg:Lorg/h2/tools/Server;

.field private final service:Lorg/h2/server/Service;

.field private shutdownHandler:Lorg/h2/server/ShutdownHandler;

.field private started:Z

.field private tcp:Lorg/h2/tools/Server;

.field private web:Lorg/h2/tools/Server;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    return-void
.end method

.method public varargs constructor <init>(Lorg/h2/server/Service;[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    invoke-direct {p0, p2}, Lorg/h2/tools/Server;->verifyArgs([Ljava/lang/String;)V

    iput-object p1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    :try_start_0
    invoke-interface {p1, p2}, Lorg/h2/server/Service;->init([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public static varargs createPgServer([Ljava/lang/String;)Lorg/h2/tools/Server;
    .locals 2

    new-instance v0, Lorg/h2/tools/Server;

    new-instance v1, Lorg/h2/server/pg/PgServer;

    invoke-direct {v1}, Lorg/h2/server/pg/PgServer;-><init>()V

    invoke-direct {v0, v1, p0}, Lorg/h2/tools/Server;-><init>(Lorg/h2/server/Service;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs createTcpServer([Ljava/lang/String;)Lorg/h2/tools/Server;
    .locals 2

    new-instance v0, Lorg/h2/server/TcpServer;

    invoke-direct {v0}, Lorg/h2/server/TcpServer;-><init>()V

    new-instance v1, Lorg/h2/tools/Server;

    invoke-direct {v1, v0, p0}, Lorg/h2/tools/Server;-><init>(Lorg/h2/server/Service;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/h2/server/TcpServer;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V

    return-object v1
.end method

.method public static varargs createWebServer([Ljava/lang/String;)Lorg/h2/tools/Server;
    .locals 2

    new-instance v0, Lorg/h2/server/web/WebServer;

    invoke-direct {v0}, Lorg/h2/server/web/WebServer;-><init>()V

    new-instance v1, Lorg/h2/tools/Server;

    invoke-direct {v1, v0, p0}, Lorg/h2/tools/Server;-><init>(Lorg/h2/server/Service;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/h2/server/web/WebServer;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V

    return-object v1
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/h2/tools/Server;

    invoke-direct {v0}, Lorg/h2/tools/Server;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/Server;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method public static openBrowser(Ljava/lang/String;)V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "%url"

    .line 4
    .line 5
    :try_start_0
    const-string v3, "os.name"

    .line 6
    .line 7
    const-string v4, "linux"

    .line 8
    .line 9
    invoke-static {v3, v4}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v3}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "h2.browser"

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-static {v5, v6}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    :try_start_1
    const-string v7, "BROWSER"

    .line 31
    .line 32
    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :catch_1
    nop

    .line 41
    :cond_0
    :goto_0
    const-string v7, "windows"

    .line 42
    .line 43
    if-eqz v5, :cond_5

    .line 44
    .line 45
    :try_start_2
    const-string v6, "call:"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    const/4 v2, 0x5

    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object p0, v1, v0

    .line 61
    .line 62
    invoke-static {v2, v1}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    const/16 v3, 0x2c

    .line 73
    .line 74
    invoke-static {v5, v3, v0}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :goto_1
    array-length v5, v3

    .line 79
    if-ge v0, v5, :cond_2

    .line 80
    .line 81
    aget-object v5, v3, v0

    .line 82
    .line 83
    invoke-static {v5, v2, p0}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    aput-object v5, v3, v0

    .line 88
    .line 89
    add-int/2addr v0, v1

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    const-string v0, "cmd.exe"

    .line 102
    .line 103
    const-string v1, "/C"

    .line 104
    .line 105
    filled-new-array {v0, v1, v5, p0}, [Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    filled-new-array {v5, p0}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void

    .line 121
    :cond_5
    :try_start_3
    const-string v2, "java.awt.Desktop"

    .line 122
    .line 123
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const-string v5, "isDesktopSupported"

    .line 128
    .line 129
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v5, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Ljava/lang/Boolean;

    .line 138
    .line 139
    new-instance v8, Ljava/net/URI;

    .line 140
    .line 141
    invoke-direct {v8, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_6

    .line 149
    .line 150
    const-string v5, "getDesktop"

    .line 151
    .line 152
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v5, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    const-string v6, "browse"

    .line 161
    .line 162
    new-array v9, v1, [Ljava/lang/Class;

    .line 163
    .line 164
    const-class v10, Ljava/net/URI;

    .line 165
    .line 166
    aput-object v10, v9, v0

    .line 167
    .line 168
    invoke-virtual {v2, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    new-array v6, v1, [Ljava/lang/Object;

    .line 173
    .line 174
    aput-object v8, v6, v0

    .line 175
    .line 176
    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :catch_2
    :cond_6
    :try_start_4
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_7

    .line 185
    .line 186
    const-string v0, "rundll32"

    .line 187
    .line 188
    const-string v1, "url.dll,FileProtocolHandler"

    .line 189
    .line 190
    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    const-string v2, "mac"

    .line 199
    .line 200
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_a

    .line 205
    .line 206
    const-string v2, "darwin"

    .line 207
    .line 208
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_8

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_8
    const-string v5, "xdg-open"

    .line 216
    .line 217
    const-string v6, "chromium"

    .line 218
    .line 219
    const-string v7, "google-chrome"

    .line 220
    .line 221
    const-string v8, "firefox"

    .line 222
    .line 223
    const-string v9, "mozilla-firefox"

    .line 224
    .line 225
    const-string v10, "mozilla"

    .line 226
    .line 227
    const-string v11, "konqueror"

    .line 228
    .line 229
    const-string v12, "netscape"

    .line 230
    .line 231
    const-string v13, "opera"

    .line 232
    .line 233
    const-string v14, "midori"

    .line 234
    .line 235
    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    :goto_3
    const/16 v3, 0xa

    .line 240
    .line 241
    if-ge v0, v3, :cond_9

    .line 242
    .line 243
    aget-object v3, v2, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 244
    .line 245
    :try_start_5
    filled-new-array {v3, p0}, [Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 250
    .line 251
    .line 252
    goto :goto_5

    .line 253
    :catch_3
    add-int/2addr v0, v1

    .line 254
    goto :goto_3

    .line 255
    :cond_9
    :try_start_6
    new-instance v0, Ljava/lang/Exception;

    .line 256
    .line 257
    const-string v1, "Browser detection failed and system property h2.browser not set"

    .line 258
    .line 259
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v0

    .line 263
    :cond_a
    :goto_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const-string v1, "open"

    .line 268
    .line 269
    filled-new-array {v1, p0}, [Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 274
    .line 275
    .line 276
    :goto_5
    return-void

    .line 277
    :goto_6
    new-instance v1, Ljava/lang/Exception;

    .line 278
    .line 279
    const-string v2, "Failed to start a browser to open the URL "

    .line 280
    .line 281
    const-string v3, ": "

    .line 282
    .line 283
    invoke-static {v2, p0, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v1
.end method

.method public static shutdownTcpServer(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/h2/server/TcpServer;->shutdown(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static startWebServer(Ljava/sql/Connection;)V
    .locals 4

    new-instance v0, Lorg/h2/server/web/WebServer;

    invoke-direct {v0}, Lorg/h2/server/web/WebServer;-><init>()V

    new-instance v1, Lorg/h2/tools/Server;

    const-string v2, "-webPort"

    const-string v3, "0"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/h2/tools/Server;-><init>(Lorg/h2/server/Service;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    new-instance v2, Lorg/h2/tools/Server;

    invoke-direct {v2}, Lorg/h2/tools/Server;-><init>()V

    iput-object v1, v2, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    invoke-virtual {v0, v2}, Lorg/h2/server/web/WebServer;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V

    invoke-virtual {v0, p0}, Lorg/h2/server/web/WebServer;->addSession(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lorg/h2/tools/Server;->openBrowser(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->isStopped()Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method private stopAll()V
    .locals 4

    iget-object v0, p0, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    iput-object v1, p0, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    :cond_0
    iget-object v0, p0, Lorg/h2/tools/Server;->tcp:Lorg/h2/tools/Server;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    iput-object v1, p0, Lorg/h2/tools/Server;->tcp:Lorg/h2/tools/Server;

    :cond_1
    iget-object v0, p0, Lorg/h2/tools/Server;->pg:Lorg/h2/tools/Server;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    iput-object v1, p0, Lorg/h2/tools/Server;->pg:Lorg/h2/tools/Server;

    :cond_2
    return-void
.end method

.method private varargs verifyArgs([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_21

    array-length v1, p1

    if-ge v0, v1, :cond_21

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "-?"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "-help"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v2, "-web"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v2, "-webAllowOthers"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v2, "-webDaemon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v2, "-webSSL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v2, "-webPort"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0, v1}, Lorg/h2/util/Tool;->throwUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto/16 :goto_2

    :cond_7
    const-string v2, "-browser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v2, "-tcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_2

    :cond_9
    const-string v2, "-tcpAllowOthers"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_2

    :cond_a
    const-string v2, "-tcpDaemon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_2

    :cond_b
    const-string v2, "-tcpSSL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_2

    :cond_c
    const-string v2, "-tcpPort"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_1

    :cond_d
    const-string v2, "-tcpPassword"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_1

    :cond_e
    const-string v2, "-tcpShutdown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_1

    :cond_f
    const-string v2, "-tcpShutdownForce"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_2

    :cond_10
    const-string v2, "-pg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_2

    :cond_11
    const-string v2, "-pgAllowOthers"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_2

    :cond_12
    const-string v2, "-pgDaemon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_2

    :cond_13
    const-string v2, "-pgPort"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_1

    :cond_14
    const-string v2, "-ftp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "-ftpPort"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_1

    :cond_15
    const-string v2, "-ftpDir"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_1

    :cond_16
    const-string v2, "-ftpRead"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_1

    :cond_17
    const-string v2, "-ftpWrite"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_1

    :cond_18
    const-string v2, "-ftpWritePassword"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_1

    :cond_19
    const-string v2, "-ftpTask"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_1a
    const-string v2, "-properties"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const-string v2, "-trace"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_2

    :cond_1c
    const-string v2, "-ifExists"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_2

    :cond_1d
    const-string v2, "-baseDir"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const-string v2, "-key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_1f
    const-string v2, "-tool"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_20
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_21
    return-void
.end method

.method private static wait(I)V
    .locals 2

    int-to-long v0, p0

    mul-long v0, v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v0}, Lorg/h2/server/Service;->getPort()I

    move-result v0

    return v0
.end method

.method public getService()Lorg/h2/server/Service;
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/h2/tools/Server;->started:Z

    if-nez v1, :cond_0

    const-string v1, "Not started"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " server running at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->getAllowOthers()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "others can connect"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v1, "only local connections"

    goto :goto_1

    :goto_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " server could not be started. Possible cause: another server is already running at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->getURL()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v0}, Lorg/h2/server/Service;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRunning(Z)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v0, p1}, Lorg/h2/server/Service;->isRunning(Z)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v0}, Lorg/h2/server/Service;->listen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-eqz v0, :cond_1a

    array-length v14, v0

    if-ge v6, v14, :cond_1a

    aget-object v14, v0, v6

    if-nez v14, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v15, "-?"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "-help"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v15, "-web"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v8, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_2
    const-string v15, "-webAllowOthers"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v15, "-webDaemon"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v15, "-webSSL"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v15, "-webPort"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v1, v14}, Lorg/h2/util/Tool;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto/16 :goto_2

    :cond_7
    const-string v15, "-browser"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v8, 0x0

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_8
    const-string v15, "-tcp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_9
    const-string v15, "-tcpAllowOthers"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    goto/16 :goto_2

    :cond_a
    const-string v15, "-tcpDaemon"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    goto/16 :goto_2

    :cond_b
    const-string v15, "-tcpSSL"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    goto/16 :goto_2

    :cond_c
    const-string v15, "-tcpPort"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    goto :goto_1

    :cond_d
    const-string v15, "-tcpPassword"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v0, v6

    goto/16 :goto_2

    :cond_e
    const-string v15, "-tcpShutdown"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    add-int/lit8 v6, v6, 0x1

    aget-object v3, v0, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_f
    const-string v15, "-tcpShutdownForce"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_10
    const-string v15, "-pg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_14

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/4 v8, 0x0

    const/4 v11, 0x1

    goto :goto_2

    :cond_11
    const-string v15, "-pgAllowOthers"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    goto :goto_2

    :cond_12
    const-string v15, "-pgDaemon"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    goto :goto_2

    :cond_13
    const-string v15, "-pgPort"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto/16 :goto_1

    :cond_14
    const-string v15, "-properties"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    goto/16 :goto_1

    :cond_15
    const-string v15, "-trace"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    goto :goto_2

    :cond_16
    const-string v15, "-ifExists"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    goto :goto_2

    :cond_17
    const-string v15, "-baseDir"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    goto/16 :goto_1

    :cond_18
    const-string v15, "-key"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    add-int/lit8 v6, v6, 0x2

    :goto_2
    add-int/2addr v6, v4

    goto/16 :goto_0

    :cond_19
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/h2/util/Tool;->showUsage()V

    return-void

    :cond_1a
    invoke-direct/range {p0 .. p1}, Lorg/h2/tools/Server;->verifyArgs([Ljava/lang/String;)V

    if-eqz v8, :cond_1b

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto :goto_4

    :cond_1b
    move v4, v10

    :goto_4
    if-eqz v7, :cond_1c

    iget-object v6, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Shutting down TCP Server at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3, v5, v9, v2}, Lorg/h2/tools/Server;->shutdownTcpServer(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1c
    if-eqz v4, :cond_1d

    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/h2/tools/Server;->createTcpServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v2

    iput-object v2, v1, Lorg/h2/tools/Server;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v2}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    iget-object v2, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    iget-object v3, v1, Lorg/h2/tools/Server;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v3}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lorg/h2/tools/Server;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v2, v1}, Lorg/h2/tools/Server;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_1d
    :goto_5
    if-eqz v11, :cond_1e

    invoke-static/range {p1 .. p1}, Lorg/h2/tools/Server;->createPgServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v2

    iput-object v2, v1, Lorg/h2/tools/Server;->pg:Lorg/h2/tools/Server;

    invoke-virtual {v2}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    iget-object v2, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    iget-object v3, v1, Lorg/h2/tools/Server;->pg:Lorg/h2/tools/Server;

    invoke-virtual {v3}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1e
    if-eqz v12, :cond_21

    invoke-static/range {p1 .. p1}, Lorg/h2/tools/Server;->createWebServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    invoke-virtual {v0, v1}, Lorg/h2/tools/Server;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x0

    :goto_6
    move-object v2, v0

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    goto :goto_6

    :goto_7
    iget-object v0, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    iget-object v3, v1, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    invoke-virtual {v3}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v13, :cond_1f

    :try_start_3
    iget-object v0, v1, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/tools/Server;->openBrowser(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    :try_start_4
    iget-object v3, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1f
    :goto_8
    if-nez v2, :cond_20

    goto :goto_a

    :cond_20
    throw v2

    :cond_21
    if-eqz v13, :cond_22

    iget-object v0, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    const-string v2, "The browser can only start if a web server is started (-web)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_a

    :goto_9
    invoke-direct/range {p0 .. p0}, Lorg/h2/tools/Server;->stopAll()V

    throw v0

    :cond_22
    :goto_a
    return-void
.end method

.method public setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/tools/Server;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/Server;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/server/ShutdownHandler;->shutdown()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/h2/tools/Server;->stopAll()V

    :goto_0
    return-void
.end method

.method public start()Lorg/h2/tools/Server;
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/h2/tools/Server;->started:Z

    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->start()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v2}, Lorg/h2/server/Service;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v2}, Lorg/h2/server/Service;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v3}, Lorg/h2/server/Service;->isDaemon()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-static {v2}, Lorg/h2/tools/Server;->wait(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p0

    :cond_0
    add-int/2addr v2, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const-string v0, "timeout; please check your network configuration, specially the file /etc/hosts"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fcd

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/tools/Server;->started:Z

    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/server/Service;->stop()V

    :cond_0
    return-void
.end method
