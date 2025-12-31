.class public Lio/milton/http/entity/InputStreamEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/Response$Entity;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/entity/InputStreamEntity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/entity/InputStreamEntity;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/entity/InputStreamEntity;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public write(Lio/milton/http/Response;Ljava/io/OutputStream;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lio/milton/http/entity/InputStreamEntity;->inputStream:Ljava/io/InputStream;

    invoke-static {p1, p2}, Lio/milton/common/StreamUtils;->readTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Lio/milton/common/ReadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/milton/common/WritingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lio/milton/http/entity/InputStreamEntity;->inputStream:Ljava/io/InputStream;

    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_1
    sget-object p2, Lio/milton/http/entity/InputStreamEntity;->log:Lorg/slf4j/Logger;

    const-string v0, "exception writing, client probably closed connection"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    sget-object p1, Lio/milton/http/entity/InputStreamEntity;->log:Lorg/slf4j/Logger;

    const-string p2, "finished sending content"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void

    :goto_3
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    iget-object p2, p0, Lio/milton/http/entity/InputStreamEntity;->inputStream:Ljava/io/InputStream;

    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p1
.end method
