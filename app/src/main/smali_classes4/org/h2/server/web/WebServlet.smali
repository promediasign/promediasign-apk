.class public Lorg/h2/server/web/WebServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient server:Lorg/h2/server/web/WebServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method

.method private allow(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->getAllowOthers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method private getAllowedFile(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/server/web/WebServlet;->allow(Ljavax/servlet/http/HttpServletRequest;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "notAllowed.jsp"

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "index.do"

    return-object p1

    :cond_1
    return-object p2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->stop()V

    return-void
.end method

.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 5

    .line 1
    const-string v0, "utf-8"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->setCharacterEncoding(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "/"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/h2/server/web/WebServlet;->getAllowedFile(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/Properties;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v1, v3, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getParameterNames()Ljava/util/Enumeration;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v1, v3, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const-string v2, "jsessionid"

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    iget-object v3, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Lorg/h2/server/web/WebServer;->getSession(Ljava/lang/String;)Lorg/h2/server/web/WebSession;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const/4 v2, 0x0

    .line 123
    :goto_2
    new-instance v3, Lorg/h2/server/web/WebApp;

    .line 124
    .line 125
    iget-object v4, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    .line 126
    .line 127
    invoke-direct {v3, v4}, Lorg/h2/server/web/WebApp;-><init>(Lorg/h2/server/web/WebServer;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v2, v1}, Lorg/h2/server/web/WebApp;->setSession(Lorg/h2/server/web/WebSession;Ljava/util/Properties;)V

    .line 131
    .line 132
    .line 133
    const-string v1, "if-modified-since"

    .line 134
    .line 135
    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v3, v0, p1}, Lorg/h2/server/web/WebApp;->processRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v3}, Lorg/h2/server/web/WebApp;->getSession()Lorg/h2/server/web/WebSession;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v3}, Lorg/h2/server/web/WebApp;->getMimeType()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v3}, Lorg/h2/server/web/WebApp;->getCache()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_5

    .line 160
    .line 161
    iget-object v4, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    .line 162
    .line 163
    invoke-virtual {v4}, Lorg/h2/server/web/WebServer;->getStartDateTime()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_5

    .line 172
    .line 173
    const/16 p1, 0x130

    .line 174
    .line 175
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_5
    iget-object v1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    .line 180
    .line 181
    invoke-virtual {v1, p1}, Lorg/h2/server/web/WebServer;->getFile(Ljava/lang/String;)[B

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-nez v1, :cond_6

    .line 186
    .line 187
    const/16 v0, 0x194

    .line 188
    .line 189
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 190
    .line 191
    .line 192
    const-string v0, "File not found: "

    .line 193
    .line 194
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    sget-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    goto :goto_4

    .line 205
    :cond_6
    if-eqz v0, :cond_7

    .line 206
    .line 207
    const-string v4, ".jsp"

    .line 208
    .line 209
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_7

    .line 214
    .line 215
    new-instance p1, Ljava/lang/String;

    .line 216
    .line 217
    sget-object v4, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    .line 218
    .line 219
    invoke-direct {p1, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, v0, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    .line 223
    .line 224
    invoke-static {p1, v0}, Lorg/h2/server/web/PageParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    :cond_7
    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const-string p1, "Cache-Control"

    .line 236
    .line 237
    if-nez v3, :cond_8

    .line 238
    .line 239
    const-string v0, "no-cache"

    .line 240
    .line 241
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_8
    const-string v0, "max-age=10"

    .line 246
    .line 247
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    .line 251
    .line 252
    invoke-virtual {p1}, Lorg/h2/server/web/WebServer;->getStartDateTime()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    const-string v0, "Last-Modified"

    .line 257
    .line 258
    invoke-interface {p2, v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :goto_3
    move-object p1, v1

    .line 262
    :goto_4
    if-eqz p1, :cond_9

    .line 263
    .line 264
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-virtual {p2, p1}, Ljavax/servlet/ServletOutputStream;->write([B)V

    .line 269
    .line 270
    .line 271
    :cond_9
    return-void
.end method

.method public doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/h2/server/web/WebServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public init()V
    .locals 7

    invoke-virtual {p0}, Lorg/h2/server/web/WebServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Lorg/h2/server/web/WebServer;

    invoke-direct {v1}, Lorg/h2/server/web/WebServer;-><init>()V

    iput-object v1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebServer;->setAllowChunked(Z)V

    iget-object v1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->init([Ljava/lang/String;)V

    return-void
.end method
