.class public Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;
.super Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;
.source "SourceFile"


# static fields
.field public static final REPOSITORY_CLASS:Ljava/lang/String; = "repository.class"

.field public static final REPOSITORY_CLASS_DEFAULT:Ljava/lang/String;

.field public static final REPOSITORY_ENCODING:Ljava/lang/String; = "repository.encoding"

.field public static final REPOSITORY_NAME:Ljava/lang/String; = "repository.name"

.field public static final REPOSITORY_NAME_DEFAULT:Ljava/lang/String;

.field public static final REPOSITORY_STATIC:Ljava/lang/String; = "repository.static"

.field public static final REPOSITORY_STATIC_DEFAULT:Z = true

.field protected static final STATIC_REPOSITORIES:Ljava/util/Map;


# instance fields
.field protected repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepositoryImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->REPOSITORY_CLASS_DEFAULT:Ljava/lang/String;

    .line 8
    .line 9
    const-class v0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->REPOSITORY_NAME_DEFAULT:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->STATIC_REPOSITORIES:Ljava/util/Map;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;-><init>()V

    return-void
.end method

.method public static clearRepositories()V
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->STATIC_REPOSITORIES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static getRepository()Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->REPOSITORY_NAME_DEFAULT:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->getRepository(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    move-result-object v0

    return-object v0
.end method

.method public static getRepository(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->STATIC_REPOSITORIES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    return-object p0
.end method

.method public static removeRepository(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->STATIC_REPOSITORIES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    return-object p0
.end method

.method public static setRepository(Ljava/lang/String;Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;)V
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->STATIC_REPOSITORIES:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createRepository(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;
    .locals 3

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 4
    .line 5
    const-string v2, "Creating string repository using class {}..."

    .line 6
    .line 7
    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {p1}, Lorg/apache/velocity/util/ClassUtils;->getNewInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1, p2}, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;->setEncoding(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p1, "UTF-8"

    .line 23
    .line 24
    invoke-interface {v1, p1}, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;->setEncoding(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    .line 28
    .line 29
    invoke-interface {v1}, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;->getEncoding()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v0, "Default repository encoding is {}"

    .line 34
    .line 35
    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :catch_0
    move-exception p2

    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move-exception p2

    .line 42
    goto :goto_2

    .line 43
    :catch_2
    move-exception p2

    .line 44
    goto :goto_3

    .line 45
    :goto_1
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    .line 46
    .line 47
    const-string v2, "Could not instantiate \'"

    .line 48
    .line 49
    invoke-static {v2, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v1, p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :goto_2
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    .line 58
    .line 59
    const-string v2, "Could not access \'"

    .line 60
    .line 61
    invoke-static {v2, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {v1, p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :goto_3
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    .line 70
    .line 71
    const-string v2, "Could not find \'"

    .line 72
    .line 73
    invoke-static {v2, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v1, p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v1
.end method

.method public getLastModified(Lorg/apache/velocity/runtime/resource/Resource;)J
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;->getStringResource(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/util/StringResource;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/util/StringResource;->getLastModified()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getResourceReader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_2

    .line 6
    .line 7
    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    .line 8
    .line 9
    invoke-interface {p2, p1}, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;->getStringResource(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/util/StringResource;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/util/StringResource;->getBody()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/util/StringResource;->getEncoding()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    new-instance p1, Ljava/io/InputStreamReader;

    .line 34
    .line 35
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/util/StringResource;->getEncoding()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :catch_1
    move-exception v0

    .line 46
    move-object v1, p1

    .line 47
    move-object p1, v0

    .line 48
    :goto_0
    if-eqz v1, :cond_0

    .line 49
    .line 50
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 51
    .line 52
    .line 53
    :catch_2
    :cond_0
    new-instance v0, Lorg/apache/velocity/exception/VelocityException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "Could not convert String using encoding "

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/util/StringResource;->getEncoding()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {v0, p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_1
    new-instance p2, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 78
    .line 79
    const-string v0, "Could not locate resource \'"

    .line 80
    .line 81
    const-string v1, "\'"

    .line 82
    .line 83
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p2

    .line 91
    :cond_2
    new-instance p1, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 92
    .line 93
    const-string p2, "No template name provided"

    .line 94
    .line 95
    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method public init(Lorg/apache/velocity/util/ExtProperties;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v4, "StringResourceLoader: initialization starting."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const-string v3, "repository.class"

    sget-object v4, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->REPOSITORY_CLASS_DEFAULT:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "repository.name"

    sget-object v5, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->REPOSITORY_NAME_DEFAULT:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "repository.static"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Lorg/apache/velocity/util/ExtProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v7, "repository.encoding"

    invoke-virtual {p1, v7}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v5, :cond_0

    invoke-static {v4}, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->getRepository(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v8, "Loaded repository \'{}\' from static repo store"

    :goto_0
    invoke-interface {v7, v8, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v7, v4}, Lorg/apache/velocity/runtime/RuntimeServices;->getApplicationAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    iput-object v7, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v8, "Loaded repository \'{}\' from application attributes"

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v7, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    if-nez v7, :cond_3

    invoke-virtual {p0, v3, p1}, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->createRepository(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    if-eqz v5, :cond_2

    invoke-static {v4, p1}, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->setRepository(Ljava/lang/String;Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v0, v4, p1}, Lorg/apache/velocity/runtime/RuntimeServices;->setApplicationAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    iget-object v7, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v4, v8, v1

    aput-object v7, v8, v6

    aput-object v3, v8, v0

    const-string v3, "Cannot change class of string repository \'{}\' from {} to {}. The change will be ignored."

    invoke-interface {v5, v3, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    invoke-interface {v3}, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    iget-object v5, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    invoke-interface {v5}, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;->getEncoding()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    aput-object v5, v2, v6

    aput-object p1, v2, v0

    const-string v0, "Changing the default encoding of string repository \'{}\' from {} to {}"

    invoke-interface {v3, v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    invoke-interface {v0, p1}, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;->setEncoding(Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v0, "StringResourceLoader: initialization complete."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public isSourceModified(Lorg/apache/velocity/runtime/resource/Resource;)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;->getStringResource(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/util/StringResource;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/resource/util/StringResource;->getLastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getLastModified()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/StringResourceLoader;->repository:Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;

    invoke-interface {v1, p1}, Lorg/apache/velocity/runtime/resource/util/StringResourceRepository;->getStringResource(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/util/StringResource;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
