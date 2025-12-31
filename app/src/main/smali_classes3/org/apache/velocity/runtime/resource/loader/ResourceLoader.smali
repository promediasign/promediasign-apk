.class public abstract Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected className:Ljava/lang/String;

.field protected isCachingOn:Z

.field protected log:Lorg/slf4j/Logger;

.field protected modificationCheckInterval:J

.field protected rsvc:Lorg/apache/velocity/runtime/RuntimeServices;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->isCachingOn:Z

    const-wide/16 v0, 0x2

    iput-wide v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->modificationCheckInterval:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->className:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public buildReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 3

    new-instance v0, Lorg/apache/velocity/io/UnicodeInputStream;

    invoke-direct {v0, p1}, Lorg/apache/velocity/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/velocity/io/UnicodeInputStream;->getEncodingFromStream()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lorg/apache/velocity/io/UnicodeInputStream;->sameEncoding(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v2, "Found BOM encoding \'{}\' differs from asked encoding: \'{}\' - using BOM encoding to read resource."

    invoke-interface {v1, v2, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p2, p1

    :cond_0
    if-nez p2, :cond_1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string p2, "input.encoding"

    invoke-interface {p1, p2}, Lorg/apache/velocity/runtime/RuntimeServices;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :cond_2
    :goto_0
    :try_start_0
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/velocity/io/UnicodeInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    throw p1
.end method

.method public commonInit(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/util/ExtProperties;)V
    .locals 5

    .line 1
    const-string v0, "modificationCheckInterval"

    .line 2
    .line 3
    const-string v1, "cache"

    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 6
    .line 7
    const-string p1, "_RESOURCE_LOADER_IDENTIFIER_"

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_0
    const-string v3, "loader."

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v2, p1}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p2, v1, p1}, Lorg/apache/velocity/util/ExtProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput-boolean v2, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->isCachingOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 43
    .line 44
    const-wide/16 v1, 0x0

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p2, v0, v1, v2}, Lorg/apache/velocity/util/ExtProperties;->getLong(Ljava/lang/String;J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    iput-wide v3, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->modificationCheckInterval:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    const-class p1, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->className:Ljava/lang/String;

    .line 59
    .line 60
    :try_start_2
    const-string v0, "class"

    .line 61
    .line 62
    invoke-virtual {p2, v0, p1}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->className:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception p1

    .line 70
    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 71
    .line 72
    const-string v0, "Exception retrieving resource cache class name"

    .line 73
    .line 74
    invoke-static {p2, v0, p1, v0, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    throw p1

    .line 79
    :catch_1
    move-exception p1

    .line 80
    iput-wide v1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->modificationCheckInterval:J

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, "Exception parsing modificationCheckInterval setting: "

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 101
    .line 102
    invoke-static {v0, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    throw p1

    .line 107
    :catch_2
    move-exception v0

    .line 108
    iput-boolean p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->isCachingOn:Z

    .line 109
    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v2, "Exception parsing cache setting: "

    .line 113
    .line 114
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v1}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 129
    .line 130
    invoke-static {p2, p1, v0, p1, v0}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    throw p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->className:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLastModified(Lorg/apache/velocity/runtime/resource/Resource;)J
.end method

.method public getModificationCheckInterval()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->modificationCheckInterval:J

    return-wide v0
.end method

.method public abstract getResourceReader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
.end method

.method public abstract init(Lorg/apache/velocity/util/ExtProperties;)V
.end method

.method public isCachingOn()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->isCachingOn:Z

    return v0
.end method

.method public abstract isSourceModified(Lorg/apache/velocity/runtime/resource/Resource;)Z
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->getResourceReader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catch Lorg/apache/velocity/exception/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const-string v1, "While closing InputStream for resource \'"

    .line 14
    .line 15
    const-string v2, "\' from ResourceLoader "

    .line 16
    .line 17
    invoke-static {v1, p1, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 37
    .line 38
    invoke-static {v1, p1, v0, p1, v0}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    throw p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    throw p1

    .line 45
    :catch_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 46
    .line 47
    const-string v2, "Could not load resource \'{}\' from ResourceLoader {}"

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-interface {v1, v2, p1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    :goto_1
    return p1
.end method

.method public setCachingOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->isCachingOn:Z

    return-void
.end method

.method public setModificationCheckInterval(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->modificationCheckInterval:J

    return-void
.end method
