.class public Lorg/apache/velocity/runtime/resource/loader/JarHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private conn:Ljava/net/JarURLConnection;

.field private log:Lorg/slf4j/Logger;

.field private theJar:Ljava/util/jar/JarFile;

.field private urlpath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/velocity/runtime/RuntimeServices;Ljava/lang/String;Lorg/slf4j/Logger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->theJar:Ljava/util/jar/JarFile;

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->conn:Ljava/net/JarURLConnection;

    iput-object p3, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->log:Lorg/slf4j/Logger;

    iput-object p2, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->urlpath:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->init()V

    const-string p1, "JarHolder: initialized JAR: {}"

    invoke-interface {p3, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->theJar:Ljava/util/jar/JarFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->theJar:Ljava/util/jar/JarFile;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->conn:Ljava/net/JarURLConnection;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->log:Lorg/slf4j/Logger;

    .line 12
    .line 13
    const-string v1, "JarHolder: JAR file closed"

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->log:Lorg/slf4j/Logger;

    .line 21
    .line 22
    const-string v2, "JarHolder: error closing the JAR file"

    .line 23
    .line 24
    invoke-static {v1, v2, v0, v2, v0}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    throw v0
.end method

.method public getEntries()Ljava/util/Hashtable;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x22f

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->theJar:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->urlpath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->theJar:Ljava/util/jar/JarFile;

    invoke-virtual {v0, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->theJar:Ljava/util/jar/JarFile;

    invoke-virtual {v0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :goto_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->log:Lorg/slf4j/Logger;

    const-string v1, "JarHolder: getResource() error"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/apache/velocity/exception/ResourceNotFoundException;

    invoke-direct {v0, p1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getUrlPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->urlpath:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->log:Lorg/slf4j/Logger;

    .line 2
    .line 3
    const-string v1, "JarHolder: attempting to connect to {}"

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->urlpath:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/net/URL;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->urlpath:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/net/JarURLConnection;

    .line 22
    .line 23
    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->conn:Ljava/net/JarURLConnection;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->conn:Ljava/net/JarURLConnection;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->conn:Ljava/net/JarURLConnection;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->conn:Ljava/net/JarURLConnection;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->conn:Ljava/net/JarURLConnection;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->theJar:Ljava/util/jar/JarFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "JarHolder: error establishing connection to JAR at \""

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->urlpath:Ljava/lang/String;

    .line 63
    .line 64
    const-string v3, "\""

    .line 65
    .line 66
    invoke-static {v2, v3, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/loader/JarHolder;->log:Lorg/slf4j/Logger;

    .line 71
    .line 72
    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lorg/apache/velocity/exception/VelocityException;

    .line 76
    .line 77
    invoke-direct {v2, v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v2
.end method
