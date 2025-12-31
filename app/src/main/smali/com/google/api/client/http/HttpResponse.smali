.class public final Lcom/google/api/client/http/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/io/InputStream;

.field private final contentEncoding:Ljava/lang/String;

.field private contentLoggingLimit:I

.field private contentRead:Z

.field private final contentType:Ljava/lang/String;

.field private loggingEnabled:Z

.field private final mediaType:Lcom/google/api/client/http/HttpMediaType;

.field private final request:Lcom/google/api/client/http/HttpRequest;

.field response:Lcom/google/api/client/http/LowLevelHttpResponse;

.field private final returnRawInputStream:Z

.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getResponseReturnRawInputStream()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean v0, p0, Lcom/google/api/client/http/HttpResponse;->returnRawInputStream:Z

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContentLoggingLimit()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->isLoggingEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentEncoding()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusCode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-gez v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    :cond_0
    iput v0, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getReasonPhrase()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, p0, Lcom/google/api/client/http/HttpResponse;->statusMessage:Ljava/lang/String;

    .line 47
    .line 48
    sget-object v3, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 49
    .line 50
    iget-boolean v4, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    :cond_1
    const/4 v4, 0x0

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    const-string v5, "-------------- RESPONSE --------------"

    .line 67
    .line 68
    invoke-static {v5}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    sget-object v6, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusLine()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    if-eqz v7, :cond_2

    .line 82
    .line 83
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    const/16 v0, 0x20

    .line 93
    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    move-object v5, v4

    .line 105
    :goto_1
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    move-object v2, v5

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    move-object v2, v4

    .line 114
    :goto_2
    invoke-virtual {v0, p2, v2}, Lcom/google/api/client/http/HttpHeaders;->fromHttpResponse(Lcom/google/api/client/http/LowLevelHttpResponse;Ljava/lang/StringBuilder;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentType()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    if-nez p2, :cond_6

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpHeaders;->getContentType()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    :cond_6
    iput-object p2, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    .line 132
    .line 133
    if-nez p2, :cond_7

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    new-instance v4, Lcom/google/api/client/http/HttpMediaType;

    .line 137
    .line 138
    invoke-direct {v4, p2}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_3
    iput-object v4, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    .line 142
    .line 143
    if-eqz v1, :cond_8

    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v3, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_8
    return-void
.end method

.method private hasMessageBody()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpResponse;->disconnect()V

    return-void
.end method

.method public download(Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/api/client/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 5

    iget-boolean v0, p0, Lcom/google/api/client/http/HttpResponse;->contentRead:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/api/client/http/HttpResponse;->returnRawInputStream:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    iget-boolean v2, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/api/client/util/LoggingInputStream;

    iget v4, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/api/client/util/LoggingInputStream;-><init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v0, v3

    :cond_1
    iput-object v0, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    :catch_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpResponse;->contentRead:Z

    :cond_3
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/api/client/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_1
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/google/api/client/http/HttpRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public ignore()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public isSuccessStatusCode()Z
    .locals 1

    iget v0, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    invoke-static {v0}, Lcom/google/api/client/http/HttpStatusCodes;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public parseAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/api/client/http/HttpResponse;->hasMessageBody()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/api/client/util/ObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseAsString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v1}, Lcom/google/api/client/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
