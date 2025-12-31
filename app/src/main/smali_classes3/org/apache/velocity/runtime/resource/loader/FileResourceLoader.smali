.class public Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;
.super Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;
.source "SourceFile"


# instance fields
.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private templatePaths:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->paths:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->templatePaths:Ljava/util/Map;

    .line 16
    .line 17
    return-void
.end method

.method private closeQuiet(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private findTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_0

    :try_start_1
    new-instance p2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->closeQuiet(Ljava/io/InputStream;)V

    throw p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_0
    return-object v0
.end method

.method private getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getLastModified(Lorg/apache/velocity/runtime/resource/Resource;)J
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->templatePaths:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResourceReader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 5

    .line 1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Lorg/apache/velocity/shaded/commons/io/FilenameUtils;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->paths:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->paths:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/String;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    :try_start_0
    invoke-direct {p0, v2, v0}, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->findTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    .line 45
    .line 46
    .line 47
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {p0, v4, p2}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->buildReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    .line 51
    .line 52
    .line 53
    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    move-object v3, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    if-eqz v3, :cond_0

    .line 59
    .line 60
    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->templatePaths:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-object v3

    .line 66
    :catch_1
    move-exception p1

    .line 67
    :goto_1
    invoke-direct {p0, v3}, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->closeQuiet(Ljava/io/InputStream;)V

    .line 68
    .line 69
    .line 70
    const-string p2, "Exception while loading Template "

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 77
    .line 78
    invoke-interface {v0, p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lorg/apache/velocity/exception/VelocityException;

    .line 82
    .line 83
    invoke-direct {v0, p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_2
    new-instance p1, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 88
    .line 89
    const-string p2, "FileResourceLoader: cannot find "

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_3
    const-string p1, "File resource error: argument "

    .line 100
    .line 101
    const-string p2, " contains .. and may be trying to access content outside of template root.  Rejected."

    .line 102
    .line 103
    invoke-static {p1, v0, p2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 108
    .line 109
    const-string v0, "FileResourceLoader: {}"

    .line 110
    .line 111
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    new-instance p2, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 115
    .line 116
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p2

    .line 120
    :cond_4
    new-instance p1, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 121
    .line 122
    const-string p2, "Need to specify a file name or file path!"

    .line 123
    .line 124
    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method

.method public init(Lorg/apache/velocity/util/ExtProperties;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v1, "FileResourceLoader: initialization starting."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->paths:Ljava/util/List;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Lorg/apache/velocity/util/ExtProperties;->getVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->paths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v2, "FileResourceLoader: adding path \'{}\'"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v0, "FileResourceLoader: initialization complete."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public isSourceModified(Lorg/apache/velocity/runtime/resource/Resource;)Z
    .locals 8

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->templatePaths:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-nez v2, :cond_1

    iget-object v5, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->paths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->paths:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v0}, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getLastModified()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    return v1
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lorg/apache/velocity/shaded/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, v2, p1}, Lorg/apache/velocity/runtime/resource/loader/FileResourceLoader;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v3, "Exception while checking for template {}"

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method
