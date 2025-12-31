.class public Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;
.super Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;
.source "SourceFile"


# instance fields
.field private entryDirectory:Ljava/util/Map;

.field private jarfiles:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x22f

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->entryDirectory:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x59

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->jarfiles:Ljava/util/Map;

    return-void
.end method

.method private addEntries(Ljava/util/Hashtable;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->entryDirectory:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private closeJar(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->jarfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->jarfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/resource/loader/JarHolder;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->close()V

    :cond_0
    return-void
.end method

.method private loadJar(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v1, "JarResourceLoader: trying to load \"{}\""

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const-string v0, "jar:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "!/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->closeJar(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/velocity/runtime/resource/loader/JarHolder;-><init>(Lorg/apache/velocity/runtime/RuntimeServices;Ljava/lang/String;Lorg/slf4j/Logger;)V

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->getEntries()Ljava/util/Hashtable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->addEntries(Ljava/util/Hashtable;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->jarfiles:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->getUrlPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v0, "JarResourceLoader: JAR path must start with jar: -> see java.net.JarURLConnection for information"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v0, "JarResourceLoader: can not load JAR - JAR path is null"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getLastModified(Lorg/apache/velocity/runtime/resource/Resource;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResourceReader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 3

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
    move-result-object v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    const-string v2, "/"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->entryDirectory:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->entryDirectory:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->jarfiles:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->jarfiles:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->getResource(Ljava/lang/String;)Ljava/io/InputStream;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->buildReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    .line 69
    .line 70
    .line 71
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object p1

    .line 73
    :catch_0
    move-exception p2

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .line 78
    .line 79
    :catch_1
    :cond_1
    const-string v0, "JAR resource error: Exception while loading "

    .line 80
    .line 81
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 86
    .line 87
    invoke-static {v0, p1, p2, p1, p2}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    throw p1

    .line 92
    :cond_2
    new-instance p2, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 93
    .line 94
    const-string v0, "JarResourceLoader Error: cannot find resource "

    .line 95
    .line 96
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p2

    .line 104
    :cond_3
    const-string p1, "JAR resource error: argument "

    .line 105
    .line 106
    const-string p2, " contains .. and may be trying to access content outside of template root.  Rejected."

    .line 107
    .line 108
    invoke-static {p1, v1, p2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 113
    .line 114
    const-string v0, "JarResourceLoader: {}"

    .line 115
    .line 116
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    new-instance p2, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 120
    .line 121
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p2

    .line 125
    :cond_4
    new-instance p1, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 126
    .line 127
    const-string p2, "Need to have a resource!"

    .line 128
    .line 129
    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method public init(Lorg/apache/velocity/util/ExtProperties;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v1, "JarResourceLoader: initialization starting."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const-string v0, "path"

    invoke-virtual {p1, v0}, Lorg/apache/velocity/util/ExtProperties;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "JarResourceLoader # of paths: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

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

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/resource/loader/JarResourceLoader;->loadJar(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v0, "JarResourceLoader: initialization complete."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public isSourceModified(Lorg/apache/velocity/runtime/resource/Resource;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
