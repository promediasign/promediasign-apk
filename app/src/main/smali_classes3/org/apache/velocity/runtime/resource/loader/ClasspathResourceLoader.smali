.class public Lorg/apache/velocity/runtime/resource/loader/ClasspathResourceLoader;
.super Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastModified(Lorg/apache/velocity/runtime/resource/Resource;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResourceReader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1, p1}, Lorg/apache/velocity/util/ClassUtils;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->buildReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p2

    .line 24
    move-object v0, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    const-string p2, "ClasspathResourceLoader Error: cannot find resource "

    .line 30
    .line 31
    invoke-static {p2, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance p2, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 36
    .line 37
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p2

    .line 41
    :catch_1
    move-exception p2

    .line 42
    :goto_1
    if-eqz v0, :cond_2

    .line 43
    .line 44
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    .line 46
    .line 47
    :catch_2
    :cond_2
    new-instance v0, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 48
    .line 49
    const-string v1, "ClasspathResourceLoader problem with template: "

    .line 50
    .line 51
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1, p2}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_3
    new-instance p1, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 60
    .line 61
    const-string p2, "No template name provided"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public init(Lorg/apache/velocity/util/ExtProperties;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v0, "ClasspathResourceLoader: initialization complete."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public isSourceModified(Lorg/apache/velocity/runtime/resource/Resource;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
