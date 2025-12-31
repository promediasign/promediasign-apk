.class public Lorg/apache/velocity/runtime/resource/ContentResource;
.super Lorg/apache/velocity/runtime/resource/Resource;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/Resource;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/resource/Resource;->setType(I)V

    return-void
.end method


# virtual methods
.method public process()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/velocity/util/StringBuilderWriter;

    invoke-direct {v1}, Lorg/apache/velocity/util/StringBuilderWriter;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/Resource;->resourceLoader:Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    iget-object v4, p0, Lorg/apache/velocity/runtime/resource/Resource;->name:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/velocity/runtime/resource/Resource;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->getResourceReader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/apache/velocity/exception/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    :try_start_1
    new-array v3, v0, [C

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v1, v3, v4, v5}, Lorg/apache/velocity/util/StringBuilderWriter;->write([CII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lorg/apache/velocity/util/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/resource/Resource;->setData(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/velocity/exception/ResourceNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    :try_start_3
    const-string v1, "Cannot process content resource"

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/Resource;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {v3, v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :cond_1
    throw v0
.end method
