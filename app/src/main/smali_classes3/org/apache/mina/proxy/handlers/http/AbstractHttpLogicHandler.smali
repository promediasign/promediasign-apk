.class public abstract Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
.super Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
.source "SourceFile"


# static fields
.field private static final CRLF_DELIMITER:[B

.field private static final DECODER:Ljava/lang/String;

.field private static final HTTP_DELIMITER:[B

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private contentLength:I

.field private entityBodyLimitPosition:I

.field private entityBodyStartPosition:I

.field private hasChunkedData:Z

.field private parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

.field private responseData:Lorg/apache/mina/core/buffer/IoBuffer;

.field private waitingChunkedData:Z

.field private waitingFooters:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".Decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->DECODER:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    return-void
.end method

.method public static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$100(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    return-void
.end method

.method private reconnect(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 3

    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Reconnecting to proxy ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getConnector()Lorg/apache/mina/proxy/ProxyConnector;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;-><init>(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;Lorg/apache/mina/proxy/session/ProxyIoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    return-void
.end method

.method private writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->toHttpString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "   write:\n{}"

    const-string v3, "\r"

    const-string v4, "\\r"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "\n"

    const-string v4, "\\n\n"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Unable to send HTTP request: "

    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public decodeResponse(Ljava/lang/String;)Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .locals 8

    .line 1
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 2
    .line 3
    const-string v1, "  parseResponse()"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "\r\n"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    aget-object v2, v0, v1

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, " "

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    array-length v3, v2

    .line 29
    const-string v5, "). Response: "

    .line 30
    .line 31
    if-lt v3, v4, :cond_2

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    aget-object v6, v2, v3

    .line 35
    .line 36
    const-string v7, "^\\d\\d\\d"

    .line 37
    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    new-instance p1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    :goto_0
    array-length v6, v0

    .line 51
    if-ge v5, v6, :cond_0

    .line 52
    .line 53
    aget-object v6, v0, v5

    .line 54
    .line 55
    const-string v7, ":\\s?"

    .line 56
    .line 57
    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    aget-object v7, v6, v1

    .line 62
    .line 63
    aget-object v6, v6, v3

    .line 64
    .line 65
    invoke-static {p1, v7, v6, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 72
    .line 73
    aget-object v1, v2, v1

    .line 74
    .line 75
    aget-object v2, v2, v3

    .line 76
    .line 77
    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v4, "Invalid response code ("

    .line 86
    .line 87
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    aget-object v2, v2, v3

    .line 91
    .line 92
    invoke-static {v1, v2, v5, p1}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v3, "Invalid response status line ("

    .line 105
    .line 106
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-static {v5, p1, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0
.end method

.method public abstract handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
.end method

.method public declared-synchronized messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " messageReceived()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->DECODER:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/proxy/utils/IoBufferDecoder;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/mina/proxy/utils/IoBufferDecoder;

    sget-object v3, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    invoke-direct {v1, v3}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;-><init>([B)V

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_5

    invoke-virtual {v1, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v5

    iput v5, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyStartPosition:I

    const-string v5, "  response header received:\n{}"

    const-string v6, "\r"

    const-string v7, "\\r"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, "\\n\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->decodeResponse(Ljava/lang/String;)Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v2

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v2

    const/16 v5, 0x12c

    if-lt v2, v5, :cond_2

    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v2

    const/16 v5, 0x133

    if-gt v2, v5, :cond_2

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_2
    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v5, "Content-Length"

    invoke-static {v2, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iput v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    invoke-virtual {v1, v2, v3}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p2, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->setHandshakeComplete()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :goto_2
    :try_start_3
    iget-boolean v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    if-nez v2, :cond_8

    iget v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-lez v2, :cond_7

    invoke-virtual {v1, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_6

    monitor-exit p0

    return-void

    :cond_6
    :try_start_4
    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v5, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v5, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    iput v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    :cond_7
    const-string v2, "chunked"

    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v5}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Transfer-Encoding"

    invoke-static {v5, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Retrieving additional http response chunks"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iput-boolean v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    iput-boolean v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    :cond_8
    iget-boolean v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    if-eqz v0, :cond_11

    :goto_3
    iget-boolean v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-nez v0, :cond_b

    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    invoke-virtual {v1, v0, v4}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    invoke-virtual {v1, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3b

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_a

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-lez v0, :cond_b

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    invoke-virtual {v1, v0, v3}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    :cond_b
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-nez v0, :cond_c

    iput-boolean v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    iput-boolean v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyLimitPosition:I

    goto :goto_5

    :cond_c
    invoke-virtual {v1, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    :try_start_6
    iput v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto/16 :goto_3

    :cond_e
    :goto_5
    iget-boolean v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    if-eqz v0, :cond_11

    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    invoke-virtual {v1, v0, v4}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    invoke-virtual {v1, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v5, :cond_f

    monitor-exit p0

    return-void

    :cond_f
    :try_start_7
    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v6

    if-ne v6, v2, :cond_10

    iput-boolean v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":\\s?"

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v7}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v7

    aget-object v8, v6, v4

    aget-object v6, v6, v3

    invoke-static {v7, v8, v6, v4}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v6, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v6, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v5, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_5

    :cond_11
    :goto_6
    iget-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    sget-object p2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "  end of response received:\n{}"

    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyStartPosition:I

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyLimitPosition:I

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->setBody(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {p0, v0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V

    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    iput-boolean v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    const/4 p2, -0x1

    iput p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    sget-object p2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    invoke-virtual {v1, p2, v3}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->isHandshakeComplete()Z

    move-result p2

    if-nez p2, :cond_12

    invoke-interface {p0, p1}, Lorg/apache/mina/proxy/ProxyLogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_12
    monitor-exit p0

    return-void

    :goto_7
    :try_start_8
    instance-of p2, p1, Lorg/apache/mina/proxy/ProxyAuthException;

    if-eqz p2, :cond_13

    check-cast p1, Lorg/apache/mina/proxy/ProxyAuthException;

    throw p1

    :cond_13
    new-instance p2, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "Handshake failed"

    invoke-direct {p2, v0, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_8
    monitor-exit p0

    throw p1
.end method

.method public writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->isReconnectionNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->reconnect(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    :goto_0
    return-void
.end method
