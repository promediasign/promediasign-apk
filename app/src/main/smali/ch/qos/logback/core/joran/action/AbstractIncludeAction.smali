.class public abstract Lch/qos/logback/core/joran/action/AbstractIncludeAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "SourceFile"


# static fields
.field private static final FILE_ATTR:Ljava/lang/String; = "file"

.field private static final OPTIONAL_ATTR:Ljava/lang/String; = "optional"

.field private static final RESOURCE_ATTR:Ljava/lang/String; = "resource"

.field private static final URL_ATTR:Ljava/lang/String; = "url"


# instance fields
.field private attributeInUse:Ljava/lang/String;

.field private optional:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method

.method private attributeToURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    const-string v0, "URL ["

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] cannot be opened."

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optionalWarning(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is not well formed."

    goto :goto_1

    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private checkAttributes(Lorg/xml/sax/Attributes;)Z
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-string v4, "file"

    .line 6
    .line 7
    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    const-string v6, "url"

    .line 12
    .line 13
    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    const-string v8, "resource"

    .line 18
    .line 19
    invoke-interface {p1, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v5}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    xor-int/2addr v5, v3

    .line 28
    invoke-static {v7}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-nez v7, :cond_0

    .line 33
    .line 34
    add-int/2addr v5, v3

    .line 35
    :cond_0
    invoke-static {p1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    add-int/2addr v5, v3

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    if-nez v5, :cond_2

    .line 44
    .line 45
    const-string v5, "One of \"%1$s\", \"%2$s\" or \"%3$s\" attributes must be set."

    .line 46
    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v4, v1, v2

    .line 50
    .line 51
    aput-object v8, v1, v3

    .line 52
    .line 53
    aput-object v6, v1, v0

    .line 54
    .line 55
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-virtual {p0, v0, p1}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optionalWarning(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 60
    .line 61
    .line 62
    return v2

    .line 63
    :cond_2
    if-le v5, v3, :cond_3

    .line 64
    .line 65
    const-string v5, "Only one of \"%1$s\", \"%2$s\" or \"%3$s\" attributes should be set."

    .line 66
    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v4, v1, v2

    .line 70
    .line 71
    aput-object v8, v1, v3

    .line 72
    .line 73
    aput-object v6, v1, v0

    .line 74
    .line 75
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    if-ne v5, v3, :cond_4

    .line 81
    .line 82
    return v3

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v0, "Count value ["

    .line 86
    .line 87
    const-string v1, "] is not expected"

    .line 88
    .line 89
    invoke-static {v5, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method private filePathAsURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p1

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_1
    :goto_0
    const-string v0, "File does not exist ["

    .line 35
    .line 36
    const-string v1, "]"

    .line 37
    .line 38
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 43
    .line 44
    invoke-direct {v1, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optionalWarning(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 48
    .line 49
    .line 50
    return-object v2
.end method

.method private getInputURL(Lch/qos/logback/core/joran/spi/InterpretationContext;Lorg/xml/sax/Attributes;)Ljava/net/URL;
    .locals 3

    const-string v0, "file"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resource"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->filePathAsURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->resourceAsURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "A URL stream should have been returned"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private resourceAsURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    invoke-static {p1}, Lch/qos/logback/core/util/Loader;->getResourceBySelfClassLoader(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find resource corresponding to ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optionalWarning(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const/4 p2, 0x0

    iput-object p2, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    const-string p2, "optional"

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lch/qos/logback/core/util/OptionHelper;->toBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optional:Z

    invoke-direct {p0, p3}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->checkAttributes(Lorg/xml/sax/Attributes;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p3}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->getInputURL(Lch/qos/logback/core/joran/spi/InterpretationContext;Lorg/xml/sax/Attributes;)Ljava/net/URL;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->processInclude(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/net/URL;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error while parsing "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optionalWarning(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public close(Ljava/io/InputStream;)V
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

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getAttributeInUse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    return-object v0
.end method

.method public handleError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public isOptional()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optional:Z

    return v0
.end method

.method public optionalWarning(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->isOptional()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->handleError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public abstract processInclude(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/net/URL;)V
.end method
