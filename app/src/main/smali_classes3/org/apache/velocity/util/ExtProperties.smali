.class public Lorg/apache/velocity/util/ExtProperties;
.super Ljava/util/Hashtable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/util/ExtProperties$PropertiesTokenizer;,
        Lorg/apache/velocity/util/ExtProperties$PropertiesReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field protected static include:Ljava/lang/String; = "include"


# instance fields
.field protected basePath:Ljava/lang/String;

.field private defaults:Lorg/apache/velocity/util/ExtProperties;

.field protected file:Ljava/lang/String;

.field protected fileSeparator:Ljava/lang/String;

.field protected isInitialized:Z

.field protected keysAsListed:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/velocity/util/ExtProperties$1;

    invoke-direct {v0, p0}, Lorg/apache/velocity/util/ExtProperties$1;-><init>(Lorg/apache/velocity/util/ExtProperties;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->fileSeparator:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->fileSeparator:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/util/ExtProperties;->isInitialized:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->keysAsListed:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/velocity/util/ExtProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/velocity/util/ExtProperties$1;

    invoke-direct {v0, p0}, Lorg/apache/velocity/util/ExtProperties$1;-><init>(Lorg/apache/velocity/util/ExtProperties;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->fileSeparator:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->fileSeparator:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/util/ExtProperties;->isInitialized:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/velocity/util/ExtProperties;->keysAsListed:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/velocity/util/ExtProperties;->file:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/velocity/util/ExtProperties;->basePath:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/velocity/util/ExtProperties;->fileSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->basePath:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/velocity/util/ExtProperties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-eqz p2, :cond_0

    new-instance p1, Lorg/apache/velocity/util/ExtProperties;

    invoke-direct {p1, p2}, Lorg/apache/velocity/util/ExtProperties;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/velocity/util/ExtProperties;->defaults:Lorg/apache/velocity/util/ExtProperties;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_1
    throw p1
.end method

.method public static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/velocity/util/ExtProperties;->endsWithSlash(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private addPropertyDirect(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static convertProperties(Ljava/util/Properties;)Lorg/apache/velocity/util/ExtProperties;
    .locals 4

    new-instance v0, Lorg/apache/velocity/util/ExtProperties;

    invoke-direct {v0}, Lorg/apache/velocity/util/ExtProperties;-><init>()V

    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/velocity/util/ExtProperties;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static countPreceding(Ljava/lang/String;IC)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    move v0, p1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p1, v0

    return p1
.end method

.method private static endsWithSlash(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/16 v3, 0x5c

    invoke-static {p0, v0, v3}, Lorg/apache/velocity/util/ExtProperties;->countPreceding(Ljava/lang/String;IC)I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p0, v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    move p0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/apache/velocity/util/ExtProperties$PropertiesTokenizer;

    invoke-direct {v0, p2}, Lorg/apache/velocity/util/ExtProperties$PropertiesTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lorg/apache/velocity/util/ExtProperties$PropertiesTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lorg/apache/velocity/util/ExtProperties$PropertiesTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/velocity/util/ExtProperties;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/apache/velocity/util/ExtProperties;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/velocity/util/ExtProperties;->isInitialized:Z

    return-void
.end method

.method public clearProperty(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/velocity/util/ExtProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/util/ExtProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/util/ExtProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public combine(Lorg/apache/velocity/util/ExtProperties;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/velocity/util/ExtProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/velocity/util/ExtProperties;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/velocity/util/ExtProperties;->testBoolean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->defaults:Lorg/apache/velocity/util/ExtProperties;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    const-string v0, "\'"

    const-string v1, "\' doesn\'t map to a Boolean object"

    .line 1
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getInclude()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/velocity/util/ExtProperties;->include:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/velocity/util/ExtProperties;->getInteger(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getInteger(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/velocity/util/ExtProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "\'"

    const-string v2, "\' doesn\'t map to an existing object"

    .line 1
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 1

    .line 8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/velocity/util/ExtProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->defaults:Lorg/apache/velocity/util/ExtProperties;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    const-string v0, "\'"

    const-string v1, "\' doesn\'t map to a Integer object"

    .line 9
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getKeys()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/velocity/util/ExtProperties;->getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->defaults:Lorg/apache/velocity/util/ExtProperties;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    return-object p2

    :cond_4
    new-instance p2, Ljava/lang/ClassCastException;

    const-string v0, "\'"

    const-string v1, "\' doesn\'t map to a List object"

    .line 2
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Long;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->defaults:Lorg/apache/velocity/util/ExtProperties;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    const-string v0, "\'"

    const-string v1, "\' doesn\'t map to a Long object"

    .line 2
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/util/ExtProperties;->defaults:Lorg/apache/velocity/util/ExtProperties;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/velocity/util/ExtProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->defaults:Lorg/apache/velocity/util/ExtProperties;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/velocity/util/ExtProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/velocity/util/ExtProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of p2, v0, Ljava/util/List;

    if-eqz p2, :cond_3

    check-cast v0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/velocity/util/ExtProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    const-string v0, "\'"

    const-string v1, "\' doesn\'t map to a String object"

    .line 2
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance p1, Ljava/util/Vector;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p1, v1}, Ljava/util/Vector;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    move-object p1, v0

    .line 25
    check-cast p1, Ljava/util/List;

    .line 26
    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    new-array v1, v0, [Ljava/lang/String;

    .line 32
    .line 33
    :goto_1
    if-ge v2, v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    aput-object v3, v1, v2

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    return-object v1

    .line 47
    :cond_2
    if-nez v0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->defaults:Lorg/apache/velocity/util/ExtProperties;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lorg/apache/velocity/util/ExtProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_3
    new-array p1, v2, [Ljava/lang/String;

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    .line 62
    .line 63
    const-string v1, "\'"

    .line 64
    .line 65
    const-string v2, "\' doesn\'t map to a String/List object"

    .line 66
    .line 67
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0
.end method

.method public getVector(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/velocity/util/ExtProperties;->getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method public getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance p1, Ljava/util/Vector;

    check-cast v0, Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance p2, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/velocity/util/ExtProperties;->defaults:Lorg/apache/velocity/util/ExtProperties;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    :cond_3
    return-object p2

    :cond_4
    new-instance p2, Ljava/lang/ClassCastException;

    const-string v0, "\'"

    const-string v1, "\' doesn\'t map to a Vector object"

    .line 2
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public interpolate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/velocity/util/ExtProperties;->interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    if-nez p2, :cond_1

    .line 6
    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    const/4 v3, -0x1

    .line 22
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    const-string v4, "${"

    .line 25
    .line 26
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-le v5, v2, :cond_7

    .line 31
    .line 32
    const-string v6, "}"

    .line 33
    .line 34
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-le v7, v2, :cond_7

    .line 39
    .line 40
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v5, v5, 0x2

    .line 48
    .line 49
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    const-string v1, "->"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    const-string v1, "infinite loop in property interpolation of "

    .line 108
    .line 109
    const-string v2, ": "

    .line 110
    .line 111
    invoke-static {v1, p1, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p2

    .line 130
    :cond_4
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v3}, Lorg/apache/velocity/util/ExtProperties;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    if-eqz v5, :cond_5

    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {p0, v3, p2}, Lorg/apache/velocity/util/ExtProperties;->interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    add-int/lit8 v3, v3, -0x1

    .line 155
    .line 156
    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_5
    iget-object v5, p0, Lorg/apache/velocity/util/ExtProperties;->defaults:Lorg/apache/velocity/util/ExtProperties;

    .line 161
    .line 162
    if-eqz v5, :cond_6

    .line 163
    .line 164
    invoke-virtual {v5, v3, v0}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    if-eqz v5, :cond_6

    .line 169
    .line 170
    iget-object v4, p0, Lorg/apache/velocity/util/ExtProperties;->defaults:Lorg/apache/velocity/util/ExtProperties;

    .line 171
    .line 172
    invoke-virtual {v4, v3}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_6
    invoke-static {v1, v4, v3, v6}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :goto_2
    move v3, v7

    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    return-object p1
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/util/ExtProperties;->isInitialized:Z

    return v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/velocity/util/ExtProperties;->load(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4

    .line 2
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lorg/apache/velocity/util/ExtProperties$PropertiesReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/velocity/util/ExtProperties$PropertiesReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Lorg/apache/velocity/util/ExtProperties$PropertiesReader;

    new-instance p2, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, p2}, Lorg/apache/velocity/util/ExtProperties$PropertiesReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/velocity/util/ExtProperties$PropertiesReader;->readProperty()Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_2

    :try_start_3
    iput-boolean p1, p0, Lorg/apache/velocity/util/ExtProperties;->isInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/16 v1, 0x3d

    :try_start_4
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/velocity/util/ExtProperties;->getInclude()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/velocity/util/ExtProperties;->getInclude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/velocity/util/ExtProperties;->fileSeparator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/velocity/util/ExtProperties;->fileSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/velocity/util/ExtProperties;->basePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p2}, Lorg/apache/velocity/util/ExtProperties;->load(Ljava/io/InputStream;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0, v2, p2}, Lorg/apache/velocity/util/ExtProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    :goto_3
    :try_start_5
    iput-boolean p1, p0, Lorg/apache/velocity/util/ExtProperties;->isInitialized:Z

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/velocity/util/ExtProperties;->clearProperty(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public subset(Ljava/lang/String;)Lorg/apache/velocity/util/ExtProperties;
    .locals 8

    new-instance v0, Lorg/apache/velocity/util/ExtProperties;

    invoke-direct {v0}, Lorg/apache/velocity/util/ExtProperties;-><init>()V

    invoke-virtual {p0}, Lorg/apache/velocity/util/ExtProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_2

    move-object v4, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p0, v3}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lorg/apache/velocity/util/ExtProperties;->addPropertyDirect(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public testBoolean(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "false"

    const-string v2, "true"

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    return-object v2

    :pswitch_1
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0xdc1 -> :sswitch_5
        0xddf -> :sswitch_4
        0x1ad6f -> :sswitch_3
        0x1d2e7 -> :sswitch_2
        0x36758e -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
