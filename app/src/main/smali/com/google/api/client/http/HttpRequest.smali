.class public final Lcom/google/api/client/http/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private connectTimeout:I

.field private content:Lcom/google/api/client/http/HttpContent;

.field private contentLoggingLimit:I

.field private curlLoggingEnabled:Z

.field private encoding:Lcom/google/api/client/http/HttpEncoding;

.field private executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private followRedirects:Z

.field private headers:Lcom/google/api/client/http/HttpHeaders;

.field private ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

.field private loggingEnabled:Z

.field private numRetries:I

.field private objectParser:Lcom/google/api/client/util/ObjectParser;

.field private readTimeout:I

.field private requestMethod:Ljava/lang/String;

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

.field private responseReturnRawInputStream:Z

.field private retryOnExecuteIOException:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sleeper:Lcom/google/api/client/util/Sleeper;

.field private suppressUserAgentSuffix:Z

.field private throwExceptionOnExecuteError:Z

.field private final tracer:Lio/opencensus/trace/Tracer;

.field private final transport:Lcom/google/api/client/http/HttpTransport;

.field private unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

.field private url:Lcom/google/api/client/http/GenericUrl;

.field private writeTimeout:I


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->curlLoggingEnabled:Z

    const/16 v1, 0x4e20

    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->writeTimeout:I

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    sget-object v0, Lcom/google/api/client/util/Sleeper;->DEFAULT:Lcom/google/api/client/util/Sleeper;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    invoke-static {}, Lcom/google/api/client/http/OpenCensusUtils;->getTracer()Lio/opencensus/trace/Tracer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->tracer:Lio/opencensus/trace/Tracer;

    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->responseReturnRawInputStream:Z

    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {p0, p2}, Lcom/google/api/client/http/HttpRequest;->setRequestMethod(Ljava/lang/String;)Lcom/google/api/client/http/HttpRequest;

    return-void
.end method

.method private static addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lio/opencensus/trace/AttributeValue;->stringAttributeValue(Ljava/lang/String;)Lio/opencensus/trace/AttributeValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/Span;->putAttribute(Ljava/lang/String;Lio/opencensus/trace/AttributeValue;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/client/http/HttpResponse;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 11
    .line 12
    .line 13
    iget v0, v1, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 14
    .line 15
    iget-object v4, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v4}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v4, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 21
    .line 22
    invoke-static {v4}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object v4, v1, Lcom/google/api/client/http/HttpRequest;->tracer:Lio/opencensus/trace/Tracer;

    .line 26
    .line 27
    sget-object v5, Lcom/google/api/client/http/OpenCensusUtils;->SPAN_NAME_HTTP_REQUEST_EXECUTE:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Lio/opencensus/trace/Tracer;->spanBuilder(Ljava/lang/String;)Lio/opencensus/trace/SpanBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {}, Lcom/google/api/client/http/OpenCensusUtils;->isRecordEvent()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v4, v5}, Lio/opencensus/trace/SpanBuilder;->setRecordEvents(Z)Lio/opencensus/trace/SpanBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Lio/opencensus/trace/SpanBuilder;->startSpan()Lio/opencensus/trace/Span;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    move v6, v0

    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v8, "retry #"

    .line 50
    .line 51
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v8, v1, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 55
    .line 56
    sub-int/2addr v8, v6

    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v4, v7}, Lio/opencensus/trace/Span;->addAnnotation(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, v1, Lcom/google/api/client/http/HttpRequest;->executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-interface {v0, v1}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v0, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v7, "http.method"

    .line 86
    .line 87
    iget-object v8, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v4, v7, v8}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v7, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 93
    .line 94
    invoke-virtual {v7}, Lcom/google/api/client/http/GenericUrl;->getHost()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    const-string v8, "http.host"

    .line 99
    .line 100
    invoke-static {v4, v8, v7}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v7, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 104
    .line 105
    invoke-virtual {v7}, Lcom/google/api/client/http/GenericUrl;->getRawPath()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    const-string v8, "http.path"

    .line 110
    .line 111
    invoke-static {v4, v8, v7}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v7, "http.url"

    .line 115
    .line 116
    invoke-static {v4, v7, v0}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v7, v1, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 120
    .line 121
    iget-object v8, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v7, v8, v0}, Lcom/google/api/client/http/HttpTransport;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    sget-object v8, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 128
    .line 129
    iget-boolean v9, v1, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    .line 130
    .line 131
    if-eqz v9, :cond_3

    .line 132
    .line 133
    sget-object v9, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 134
    .line 135
    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-eqz v9, :cond_3

    .line 140
    .line 141
    const/4 v9, 0x1

    .line 142
    goto :goto_2

    .line 143
    :cond_3
    const/4 v9, 0x0

    .line 144
    :goto_2
    if-eqz v9, :cond_5

    .line 145
    .line 146
    const-string v10, "-------------- REQUEST  --------------"

    .line 147
    .line 148
    invoke-static {v10}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    sget-object v11, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v12, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const/16 v12, 0x20

    .line 163
    .line 164
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-boolean v11, v1, Lcom/google/api/client/http/HttpRequest;->curlLoggingEnabled:Z

    .line 174
    .line 175
    if-eqz v11, :cond_4

    .line 176
    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v12, "curl -v --compressed"

    .line 180
    .line 181
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v12, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 185
    .line 186
    const-string v13, "GET"

    .line 187
    .line 188
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    if-nez v12, :cond_6

    .line 193
    .line 194
    const-string v12, " -X "

    .line 195
    .line 196
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-object v12, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_4
    :goto_3
    const/4 v11, 0x0

    .line 206
    goto :goto_4

    .line 207
    :cond_5
    const/4 v10, 0x0

    .line 208
    goto :goto_3

    .line 209
    :cond_6
    :goto_4
    iget-object v12, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 210
    .line 211
    invoke-virtual {v12}, Lcom/google/api/client/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    iget-boolean v13, v1, Lcom/google/api/client/http/HttpRequest;->suppressUserAgentSuffix:Z

    .line 216
    .line 217
    if-nez v13, :cond_8

    .line 218
    .line 219
    const-string v13, "http.user_agent"

    .line 220
    .line 221
    if-nez v12, :cond_7

    .line 222
    .line 223
    iget-object v14, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 224
    .line 225
    const-string v15, "Google-HTTP-Java-Client/1.30.0 (gzip)"

    .line 226
    .line 227
    invoke-virtual {v14, v15}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 228
    .line 229
    .line 230
    invoke-static {v4, v13, v15}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_7
    const-string v14, " Google-HTTP-Java-Client/1.30.0 (gzip)"

    .line 235
    .line 236
    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v14

    .line 240
    iget-object v15, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 241
    .line 242
    invoke-virtual {v15, v14}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 243
    .line 244
    .line 245
    invoke-static {v4, v13, v14}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_8
    :goto_5
    iget-object v13, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 249
    .line 250
    invoke-static {v4, v13}, Lcom/google/api/client/http/OpenCensusUtils;->propagateTracingContext(Lio/opencensus/trace/Span;Lcom/google/api/client/http/HttpHeaders;)V

    .line 251
    .line 252
    .line 253
    iget-object v13, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 254
    .line 255
    invoke-static {v13, v10, v11, v8, v7}, Lcom/google/api/client/http/HttpHeaders;->serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;)V

    .line 256
    .line 257
    .line 258
    iget-boolean v13, v1, Lcom/google/api/client/http/HttpRequest;->suppressUserAgentSuffix:Z

    .line 259
    .line 260
    if-nez v13, :cond_9

    .line 261
    .line 262
    iget-object v13, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 263
    .line 264
    invoke-virtual {v13, v12}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 265
    .line 266
    .line 267
    :cond_9
    iget-object v12, v1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 268
    .line 269
    if-eqz v12, :cond_b

    .line 270
    .line 271
    invoke-interface {v12}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    if-eqz v13, :cond_a

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_a
    const/4 v13, 0x0

    .line 279
    goto :goto_7

    .line 280
    :cond_b
    :goto_6
    const/4 v13, 0x1

    .line 281
    :goto_7
    const-string v14, "\'"

    .line 282
    .line 283
    if-eqz v12, :cond_15

    .line 284
    .line 285
    iget-object v15, v1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 286
    .line 287
    invoke-interface {v15}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v15

    .line 291
    if-eqz v9, :cond_c

    .line 292
    .line 293
    new-instance v2, Lcom/google/api/client/util/LoggingStreamingContent;

    .line 294
    .line 295
    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 296
    .line 297
    iget v5, v1, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    .line 298
    .line 299
    invoke-direct {v2, v12, v8, v3, v5}, Lcom/google/api/client/util/LoggingStreamingContent;-><init>(Lcom/google/api/client/util/StreamingContent;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    .line 300
    .line 301
    .line 302
    move-object v12, v2

    .line 303
    :cond_c
    iget-object v2, v1, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    .line 304
    .line 305
    if-nez v2, :cond_d

    .line 306
    .line 307
    iget-object v2, v1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 308
    .line 309
    invoke-interface {v2}, Lcom/google/api/client/http/HttpContent;->getLength()J

    .line 310
    .line 311
    .line 312
    move-result-wide v2

    .line 313
    move-object v5, v4

    .line 314
    move-wide v3, v2

    .line 315
    const/4 v2, 0x0

    .line 316
    goto :goto_9

    .line 317
    :cond_d
    invoke-interface {v2}, Lcom/google/api/client/http/HttpEncoding;->getName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    new-instance v3, Lcom/google/api/client/http/HttpEncodingStreamingContent;

    .line 322
    .line 323
    iget-object v5, v1, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    .line 324
    .line 325
    invoke-direct {v3, v12, v5}, Lcom/google/api/client/http/HttpEncodingStreamingContent;-><init>(Lcom/google/api/client/util/StreamingContent;Lcom/google/api/client/http/HttpEncoding;)V

    .line 326
    .line 327
    .line 328
    if-eqz v13, :cond_e

    .line 329
    .line 330
    invoke-static {v3}, Lcom/google/api/client/util/IOUtils;->computeLength(Lcom/google/api/client/util/StreamingContent;)J

    .line 331
    .line 332
    .line 333
    move-result-wide v16

    .line 334
    goto :goto_8

    .line 335
    :cond_e
    const-wide/16 v16, -0x1

    .line 336
    .line 337
    :goto_8
    move-object v12, v3

    .line 338
    move-object v5, v4

    .line 339
    move-wide/from16 v3, v16

    .line 340
    .line 341
    :goto_9
    move-object/from16 v16, v5

    .line 342
    .line 343
    if-eqz v9, :cond_12

    .line 344
    .line 345
    const-string v5, " -H \'"

    .line 346
    .line 347
    if-eqz v15, :cond_f

    .line 348
    .line 349
    const-string v1, "Content-Type: "

    .line 350
    .line 351
    invoke-virtual {v1, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    move/from16 v17, v6

    .line 359
    .line 360
    sget-object v6, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    if-eqz v11, :cond_10

    .line 366
    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    goto :goto_a

    .line 386
    :cond_f
    move/from16 v17, v6

    .line 387
    .line 388
    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    .line 389
    .line 390
    const-string v1, "Content-Encoding: "

    .line 391
    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    sget-object v6, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    if-eqz v11, :cond_11

    .line 405
    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    :cond_11
    const-wide/16 v5, 0x0

    .line 425
    .line 426
    cmp-long v1, v3, v5

    .line 427
    .line 428
    if-ltz v1, :cond_13

    .line 429
    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v5, "Content-Length: "

    .line 433
    .line 434
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    sget-object v1, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 448
    .line 449
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    goto :goto_b

    .line 453
    :cond_12
    move/from16 v17, v6

    .line 454
    .line 455
    :cond_13
    :goto_b
    if-eqz v11, :cond_14

    .line 456
    .line 457
    const-string v1, " -d \'@-\'"

    .line 458
    .line 459
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    :cond_14
    invoke-virtual {v7, v15}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContentType(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7, v2}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContentEncoding(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v7, v3, v4}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContentLength(J)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v7, v12}, Lcom/google/api/client/http/LowLevelHttpRequest;->setStreamingContent(Lcom/google/api/client/util/StreamingContent;)V

    .line 472
    .line 473
    .line 474
    goto :goto_c

    .line 475
    :cond_15
    move-object/from16 v16, v4

    .line 476
    .line 477
    move/from16 v17, v6

    .line 478
    .line 479
    :goto_c
    if-eqz v9, :cond_17

    .line 480
    .line 481
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v8, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    if-eqz v11, :cond_17

    .line 489
    .line 490
    const-string v1, " -- \'"

    .line 491
    .line 492
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string v1, "\'\"\'\"\'"

    .line 496
    .line 497
    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    if-eqz v12, :cond_16

    .line 508
    .line 509
    const-string v0, " << $$$"

    .line 510
    .line 511
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    :cond_16
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v8, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    :cond_17
    if-eqz v13, :cond_18

    .line 522
    .line 523
    if-lez v17, :cond_18

    .line 524
    .line 525
    const/4 v2, 0x1

    .line 526
    :goto_d
    move-object/from16 v1, p0

    .line 527
    .line 528
    goto :goto_e

    .line 529
    :cond_18
    const/4 v2, 0x0

    .line 530
    goto :goto_d

    .line 531
    :goto_e
    iget v0, v1, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 532
    .line 533
    iget v3, v1, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 534
    .line 535
    invoke-virtual {v7, v0, v3}, Lcom/google/api/client/http/LowLevelHttpRequest;->setTimeout(II)V

    .line 536
    .line 537
    .line 538
    iget v0, v1, Lcom/google/api/client/http/HttpRequest;->writeTimeout:I

    .line 539
    .line 540
    invoke-virtual {v7, v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->setWriteTimeout(I)V

    .line 541
    .line 542
    .line 543
    iget-object v0, v1, Lcom/google/api/client/http/HttpRequest;->tracer:Lio/opencensus/trace/Tracer;

    .line 544
    .line 545
    move-object/from16 v3, v16

    .line 546
    .line 547
    invoke-virtual {v0, v3}, Lio/opencensus/trace/Tracer;->withSpan(Lio/opencensus/trace/Span;)Lio/opencensus/common/Scope;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    invoke-virtual {v7}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentLength()J

    .line 552
    .line 553
    .line 554
    move-result-wide v5

    .line 555
    invoke-static {v3, v5, v6}, Lcom/google/api/client/http/OpenCensusUtils;->recordSentMessageEvent(Lio/opencensus/trace/Span;J)V

    .line 556
    .line 557
    .line 558
    :try_start_0
    invoke-virtual {v7}, Lcom/google/api/client/http/LowLevelHttpRequest;->execute()Lcom/google/api/client/http/LowLevelHttpResponse;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    if-eqz v5, :cond_19

    .line 563
    .line 564
    invoke-virtual {v5}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentLength()J

    .line 565
    .line 566
    .line 567
    move-result-wide v6

    .line 568
    invoke-static {v3, v6, v7}, Lcom/google/api/client/http/OpenCensusUtils;->recordReceivedMessageEvent(Lio/opencensus/trace/Span;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    .line 570
    .line 571
    goto :goto_f

    .line 572
    :catchall_0
    move-exception v0

    .line 573
    goto/16 :goto_19

    .line 574
    .line 575
    :catch_0
    move-exception v0

    .line 576
    goto :goto_10

    .line 577
    :cond_19
    :goto_f
    :try_start_1
    new-instance v0, Lcom/google/api/client/http/HttpResponse;

    .line 578
    .line 579
    invoke-direct {v0, v1, v5}, Lcom/google/api/client/http/HttpResponse;-><init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 580
    .line 581
    .line 582
    invoke-interface {v4}, Lio/opencensus/common/Scope;->close()V

    .line 583
    .line 584
    .line 585
    move-object v4, v0

    .line 586
    const/4 v0, 0x0

    .line 587
    goto :goto_12

    .line 588
    :catchall_1
    move-exception v0

    .line 589
    :try_start_2
    invoke-virtual {v5}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    if-eqz v5, :cond_1a

    .line 594
    .line 595
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 596
    .line 597
    .line 598
    :cond_1a
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 599
    :goto_10
    :try_start_3
    iget-boolean v5, v1, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    .line 600
    .line 601
    if-nez v5, :cond_1c

    .line 602
    .line 603
    iget-object v5, v1, Lcom/google/api/client/http/HttpRequest;->ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    .line 604
    .line 605
    if-eqz v5, :cond_1b

    .line 606
    .line 607
    invoke-interface {v5, v1, v2}, Lcom/google/api/client/http/HttpIOExceptionHandler;->handleIOException(Lcom/google/api/client/http/HttpRequest;Z)Z

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    if-eqz v5, :cond_1b

    .line 612
    .line 613
    goto :goto_11

    .line 614
    :cond_1b
    throw v0

    .line 615
    :cond_1c
    :goto_11
    if-eqz v9, :cond_1d

    .line 616
    .line 617
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 618
    .line 619
    const-string v6, "exception thrown while executing request"

    .line 620
    .line 621
    invoke-virtual {v8, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 622
    .line 623
    .line 624
    :cond_1d
    invoke-interface {v4}, Lio/opencensus/common/Scope;->close()V

    .line 625
    .line 626
    .line 627
    const/4 v4, 0x0

    .line 628
    :goto_12
    if-eqz v4, :cond_20

    .line 629
    .line 630
    :try_start_4
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    .line 631
    .line 632
    .line 633
    move-result v5

    .line 634
    if-nez v5, :cond_20

    .line 635
    .line 636
    iget-object v5, v1, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 637
    .line 638
    if-eqz v5, :cond_1e

    .line 639
    .line 640
    invoke-interface {v5, v1, v4, v2}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    .line 641
    .line 642
    .line 643
    move-result v5

    .line 644
    goto :goto_13

    .line 645
    :catchall_2
    move-exception v0

    .line 646
    goto :goto_14

    .line 647
    :cond_1e
    const/4 v5, 0x0

    .line 648
    :goto_13
    if-nez v5, :cond_1f

    .line 649
    .line 650
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    .line 651
    .line 652
    .line 653
    move-result v6

    .line 654
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    .line 655
    .line 656
    .line 657
    move-result-object v7

    .line 658
    invoke-virtual {v1, v6, v7}, Lcom/google/api/client/http/HttpRequest;->handleRedirect(ILcom/google/api/client/http/HttpHeaders;)Z

    .line 659
    .line 660
    .line 661
    move-result v6

    .line 662
    if-eqz v6, :cond_1f

    .line 663
    .line 664
    const/4 v5, 0x1

    .line 665
    :cond_1f
    and-int/2addr v2, v5

    .line 666
    if-eqz v2, :cond_22

    .line 667
    .line 668
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->ignore()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 669
    .line 670
    .line 671
    goto :goto_16

    .line 672
    :goto_14
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 673
    .line 674
    .line 675
    throw v0

    .line 676
    :cond_20
    if-nez v4, :cond_21

    .line 677
    .line 678
    const/4 v5, 0x1

    .line 679
    goto :goto_15

    .line 680
    :cond_21
    const/4 v5, 0x0

    .line 681
    :goto_15
    and-int/2addr v2, v5

    .line 682
    :cond_22
    :goto_16
    add-int/lit8 v6, v17, -0x1

    .line 683
    .line 684
    if-nez v2, :cond_28

    .line 685
    .line 686
    if-nez v4, :cond_23

    .line 687
    .line 688
    const/4 v5, 0x0

    .line 689
    goto :goto_17

    .line 690
    :cond_23
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    .line 691
    .line 692
    .line 693
    move-result v2

    .line 694
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 695
    .line 696
    .line 697
    move-result-object v5

    .line 698
    :goto_17
    invoke-static {v5}, Lcom/google/api/client/http/OpenCensusUtils;->getEndSpanOptions(Ljava/lang/Integer;)Lio/opencensus/trace/EndSpanOptions;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    invoke-virtual {v3, v2}, Lio/opencensus/trace/Span;->end(Lio/opencensus/trace/EndSpanOptions;)V

    .line 703
    .line 704
    .line 705
    if-eqz v4, :cond_27

    .line 706
    .line 707
    iget-object v0, v1, Lcom/google/api/client/http/HttpRequest;->responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

    .line 708
    .line 709
    if-eqz v0, :cond_24

    .line 710
    .line 711
    invoke-interface {v0, v4}, Lcom/google/api/client/http/HttpResponseInterceptor;->interceptResponse(Lcom/google/api/client/http/HttpResponse;)V

    .line 712
    .line 713
    .line 714
    :cond_24
    iget-boolean v0, v1, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    .line 715
    .line 716
    if-eqz v0, :cond_26

    .line 717
    .line 718
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    if-eqz v0, :cond_25

    .line 723
    .line 724
    goto :goto_18

    .line 725
    :cond_25
    :try_start_5
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    .line 726
    .line 727
    invoke-direct {v0, v4}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    .line 728
    .line 729
    .line 730
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 731
    :catchall_3
    move-exception v0

    .line 732
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 733
    .line 734
    .line 735
    throw v0

    .line 736
    :cond_26
    :goto_18
    return-object v4

    .line 737
    :cond_27
    throw v0

    .line 738
    :cond_28
    move-object v0, v4

    .line 739
    move-object v4, v3

    .line 740
    goto/16 :goto_1

    .line 741
    .line 742
    :goto_19
    invoke-interface {v4}, Lio/opencensus/common/Scope;->close()V

    .line 743
    .line 744
    .line 745
    throw v0
.end method

.method public getContent()Lcom/google/api/client/http/HttpContent;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public getContentLoggingLimit()I
    .locals 1

    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    return v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    return v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getIOExceptionHandler()Lcom/google/api/client/http/HttpIOExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    return-object v0
.end method

.method public getInterceptor()Lcom/google/api/client/http/HttpExecuteInterceptor;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    return-object v0
.end method

.method public final getParser()Lcom/google/api/client/util/ObjectParser;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->objectParser:Lcom/google/api/client/util/ObjectParser;

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getResponseInterceptor()Lcom/google/api/client/http/HttpResponseInterceptor;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

    return-object v0
.end method

.method public getResponseReturnRawInputStream()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->responseReturnRawInputStream:Z

    return v0
.end method

.method public getThrowExceptionOnExecuteError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    return v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public getUnsuccessfulResponseHandler()Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    return-object v0
.end method

.method public getUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public handleRedirect(ILcom/google/api/client/http/HttpHeaders;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpRequest;->getFollowRedirects()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/api/client/http/HttpStatusCodes;->isRedirect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v1, p2}, Lcom/google/api/client/http/GenericUrl;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/HttpRequest;->setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    const/16 p2, 0x12f

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    const-string p1, "GET"

    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpRequest;->setRequestMethod(Ljava/lang/String;)Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    :cond_0
    iget-object p1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    iget-object p1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpHeaders;->setIfMatch(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    iget-object p1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpHeaders;->setIfNoneMatch(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    iget-object p1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpHeaders;->setIfModifiedSince(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    iget-object p1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpHeaders;->setIfUnmodifiedSince(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    iget-object p1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpHeaders;->setIfRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isLoggingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    return v0
.end method

.method public setConnectTimeout(I)Lcom/google/api/client/http/HttpRequest;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    return-object p0
.end method

.method public setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    return-object p0
.end method

.method public setEncoding(Lcom/google/api/client/http/HttpEncoding;)Lcom/google/api/client/http/HttpRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    return-object p0
.end method

.method public setIOExceptionHandler(Lcom/google/api/client/http/HttpIOExceptionHandler;)Lcom/google/api/client/http/HttpRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    return-object p0
.end method

.method public setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    return-object p0
.end method

.method public setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->objectParser:Lcom/google/api/client/util/ObjectParser;

    return-object p0
.end method

.method public setRequestMethod(Ljava/lang/String;)Lcom/google/api/client/http/HttpRequest;
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/api/client/http/HttpMediaType;->matchesToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setResponseInterceptor(Lcom/google/api/client/http/HttpResponseInterceptor;)Lcom/google/api/client/http/HttpRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

    return-object p0
.end method

.method public setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0

    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    return-object p0
.end method

.method public setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    return-object p0
.end method

.method public setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;
    .locals 0

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/GenericUrl;

    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    return-object p0
.end method
