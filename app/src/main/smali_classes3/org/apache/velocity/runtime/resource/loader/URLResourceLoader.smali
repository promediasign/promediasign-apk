.class public Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;
.super Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;
.source "SourceFile"


# instance fields
.field private roots:[Ljava/lang/String;

.field protected templateRoots:Ljava/util/HashMap;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->roots:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->templateRoots:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->timeout:I

    return-void
.end method


# virtual methods
.method public getLastModified(Lorg/apache/velocity/runtime/resource/Resource;)J
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->templateRoots:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget v2, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->timeout:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->timeout:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/net/URLConnection;->getLastModified()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-wide v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    const-string v2, "URLResourceLoader: \'"

    .line 54
    .line 55
    const-string v3, "\' is no longer reachable at \'"

    .line 56
    .line 57
    const-string v4, "\'"

    .line 58
    .line 59
    invoke-static {v2, p1, v3, v0, v4}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 64
    .line 65
    invoke-interface {v0, p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 69
    .line 70
    invoke-direct {v0, p1, v1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public declared-synchronized getResourceReader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->roots:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move-object v6, v4

    move-object v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v8, v2, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    iget v10, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->timeout:I

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v10, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->timeout:I

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v9, p2}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->buildReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v10, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v11, "URLResourceLoader: Found \'{}\' at \'{}\'"

    invoke-interface {v10, v11, p1, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v10, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->templateRoots:Ljava/util/HashMap;

    invoke-virtual {v10, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v10

    goto :goto_1

    :catch_1
    move-exception v10

    move-object v9, v4

    :goto_1
    if-eqz v9, :cond_0

    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_2
    :cond_0
    :try_start_4
    iget-object v9, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v11, "URLResourceLoader: Exception when looking for \'{}\' at \'{}\'"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object p1, v12, v1

    aput-object v8, v12, v0

    const/4 v8, 0x2

    aput-object v10, v12, v8

    invoke-interface {v9, v11, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v6, :cond_1

    move-object v6, v10

    :cond_1
    add-int/2addr v5, v0

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v7, :cond_4

    if-nez v6, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "URLResourceLoader: Resource \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance p2, Lorg/apache/velocity/exception/ResourceNotFoundException;

    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v7

    :cond_5
    :try_start_5
    new-instance p1, Lorg/apache/velocity/exception/ResourceNotFoundException;

    const-string p2, "URLResourceLoader: No template name provided"

    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->timeout:I

    return v0
.end method

.method public init(Lorg/apache/velocity/util/ExtProperties;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v1, "URLResourceLoader: initialization starting."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const-string v0, "root"

    invoke-virtual {p1, v0}, Lorg/apache/velocity/util/ExtProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->roots:[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->roots:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v5, "URLResourceLoader: adding root \'{}\'"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "timeout"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/apache/velocity/util/ExtProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->timeout:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->templateRoots:Ljava/util/HashMap;

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v0, "URLResourceLoader: initialization complete."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public isSourceModified(Lorg/apache/velocity/runtime/resource/Resource;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/resource/loader/URLResourceLoader;->getLastModified(Lorg/apache/velocity/runtime/resource/Resource;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getLastModified()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
