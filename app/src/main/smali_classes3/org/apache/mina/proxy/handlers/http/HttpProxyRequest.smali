.class public Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
.super Lorg/apache/mina/proxy/handlers/ProxyRequest;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field public final httpURI:Ljava/lang/String;

.field public final httpVerb:Ljava/lang/String;

.field private httpVersion:Ljava/lang/String;

.field private transient properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "HTTP/1.0"

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lorg/apache/mina/proxy/handlers/ProxyRequest;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVerb:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2

    .line 5
    const-string v0, "HTTP/1.0"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lorg/apache/mina/proxy/handlers/ProxyRequest;-><init>()V

    const-string v0, "CONNECT"

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVerb:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    const-string v1, ":"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public varargs checkRequiredProperties([Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->properties:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gtz p1, :cond_2

    return-void

    :cond_2
    const-string p1, "property(ies) missing in request"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final declared-synchronized getHost()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/ProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/ProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/ProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->logger:Lorg/slf4j/Logger;

    const-string v2, "Malformed URL"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final getHttpURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpVerb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVerb:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public final setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    return-void
.end method

.method public setHttpVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->properties:Ljava/util/Map;

    return-void
.end method

.method public toHttpString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVerb()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpURI()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVersion()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "\r\n"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v3, 0x0

    .line 59
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/util/Map$Entry;

    .line 70
    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/String;

    .line 78
    .line 79
    const-string v5, "host"

    .line 80
    .line 81
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_0

    .line 100
    .line 101
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    check-cast v7, Ljava/lang/String;

    .line 112
    .line 113
    const-string v8, ": "

    .line 114
    .line 115
    invoke-static {v0, v7, v8, v6, v1}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    if-nez v3, :cond_3

    .line 120
    .line 121
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVersion()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v3, "HTTP/1.1"

    .line 126
    .line 127
    if-ne v2, v3, :cond_3

    .line 128
    .line 129
    const-string v2, "Host: "

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHost()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    return-object v0
.end method
