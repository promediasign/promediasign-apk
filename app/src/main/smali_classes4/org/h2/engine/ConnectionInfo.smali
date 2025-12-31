.class public Lorg/h2/engine/ConnectionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final KNOWN_SETTINGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileEncryptionKey:[B

.field private filePasswordHash:[B

.field private name:Ljava/lang/String;

.field private nameNormalized:Ljava/lang/String;

.field private originalURL:Ljava/lang/String;

.field private persistent:Z

.field private prop:Ljava/util/Properties;

.field private remote:Z

.field private ssl:Z

.field private unnamed:Z

.field private url:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private userPasswordHash:[B


# direct methods
.method static constructor <clinit>()V
    .locals 23

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/ConnectionInfo;->KNOWN_SETTINGS:Ljava/util/HashSet;

    invoke-static {}, Lorg/h2/command/dml/SetTypes;->getTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    const-string v21, "PASSWORD_HASH"

    const-string v22, "JMX"

    const-string v2, "ACCESS_MODE_DATA"

    const-string v3, "AUTOCOMMIT"

    const-string v4, "CIPHER"

    const-string v5, "CREATE"

    const-string v6, "CACHE_TYPE"

    const-string v7, "FILE_LOCK"

    const-string v8, "IGNORE_UNKNOWN_SETTINGS"

    const-string v9, "IFEXISTS"

    const-string v10, "INIT"

    const-string v11, "PASSWORD"

    const-string v12, "RECOVER"

    const-string v13, "RECOVER_TEST"

    const-string v14, "USER"

    const-string v15, "AUTO_SERVER"

    const-string v16, "AUTO_SERVER_PORT"

    const-string v17, "NO_UPGRADE"

    const-string v18, "AUTO_RECONNECT"

    const-string v19, "OPEN_NEW"

    const-string v20, "PAGE_SIZE"

    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    sget-boolean v4, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v0, "jdbc:h2:"

    .line 1
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/engine/ConnectionInfo;->parseName()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-static {p1}, Lorg/h2/engine/ConnectionInfo;->remapURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->originalURL:Ljava/lang/String;

    const-string v0, "jdbc:h2:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/h2/engine/ConnectionInfo;->readProperties(Ljava/util/Properties;)V

    invoke-direct {p0}, Lorg/h2/engine/ConnectionInfo;->readSettingsFromURL()V

    const-string p1, "USER"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/engine/ConnectionInfo;->setUserName(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/engine/ConnectionInfo;->convertPasswords()V

    iget-object p1, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/engine/ConnectionInfo;->parseName()V

    const-string p1, "RECOVER_TEST"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/h2/store/fs/FilePathRec;->register()V

    :try_start_0
    const-string p2, "org.h2.store.RecoverTester.init"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "rec:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string p2, "url"

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private convertPasswords()V
    .locals 8

    invoke-direct {p0}, Lorg/h2/engine/ConnectionInfo;->removePassword()[C

    move-result-object v0

    const-string v1, "PASSWORD_HASH"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "CIPHER"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-char v5, v0, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_1
    if-ltz v4, :cond_2

    array-length v3, v0

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    new-array v5, v3, [C

    new-array v6, v4, [C

    add-int/lit8 v7, v4, 0x1

    invoke-static {v0, v7, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    invoke-static {v6}, Lorg/h2/store/fs/FilePathEncrypt;->getPasswordBytes([C)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->fileEncryptionKey:[B

    const-string v0, "file"

    invoke-static {v1, v0, v6}, Lorg/h2/engine/ConnectionInfo;->hashPassword(ZLjava/lang/String;[C)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->filePasswordHash:[B

    move-object v0, v5

    goto :goto_2

    :cond_2
    const v0, 0x15fc2

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/h2/engine/ConnectionInfo;->user:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/h2/engine/ConnectionInfo;->hashPassword(ZLjava/lang/String;[C)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->userPasswordHash:[B

    return-void
.end method

.method private static hashPassword(ZLjava/lang/String;[C)[B
    .locals 0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-static {p0}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    array-length p0, p2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_1
    invoke-static {p1, p2}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object p0

    return-object p0
.end method

.method private static isKnownSetting(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/h2/engine/ConnectionInfo;->KNOWN_SETTINGS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private parseName()V
    .locals 5

    const-string v0, "."

    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "mem:"

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v2, "tcp:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lorg/h2/engine/ConnectionInfo;->remote:Z

    :goto_0
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v4, "ssl:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lorg/h2/engine/ConnectionInfo;->remote:Z

    iput-boolean v3, p0, Lorg/h2/engine/ConnectionInfo;->ssl:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lorg/h2/engine/ConnectionInfo;->unnamed:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    :cond_4
    iput-boolean v3, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->remote:Z

    if-nez v0, :cond_7

    const-string v0, "/"

    sget-object v1, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2f

    const/16 v2, 0x5c

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method private readProperties(Ljava/util/Properties;)V
    .locals 7

    invoke-virtual {p1}, Ljava/util/Dictionary;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    iget-object v6, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v6, v5, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/h2/engine/ConnectionInfo;->getDbSettings()Lorg/h2/engine/DbSettings;

    move-result-object v2

    :cond_1
    invoke-virtual {v2, v5}, Lorg/h2/engine/SettingsBase;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const p1, 0x15fd2

    invoke-static {p1, v5}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    return-void
.end method

.method private readSettingsFromURL()V
    .locals 8

    invoke-static {}, Lorg/h2/engine/DbSettings;->getDefaultSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_6

    iget-object v3, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    invoke-static {v3, v2, v5}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_5

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v4}, Lorg/h2/engine/SettingsBase;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x16001

    invoke-static {v0, v4}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    iget-object v6, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x15fd2

    invoke-static {v0, v4}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_2
    iget-object v6, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v6, v4, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/h2/engine/ConnectionInfo;->getFormatException()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_6
    return-void
.end method

.method private static remapURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/h2/engine/SysProperties;->URL_MAP:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :try_start_0
    invoke-static {v0}, Lorg/h2/util/SortedProperties;->loadProperties(Ljava/lang/String;)Lorg/h2/util/SortedProperties;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, p0, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lorg/h2/util/SortedProperties;->store(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_1

    return-object v0

    :goto_0
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private removePassword()[C
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    const-string v1, "PASSWORD"

    invoke-virtual {v0, v1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [C

    return-object v0

    :cond_0
    instance-of v1, v0, [C

    if-eqz v1, :cond_1

    check-cast v0, [C

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/engine/ConnectionInfo;->clone()Lorg/h2/engine/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/h2/engine/ConnectionInfo;
    .locals 2

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/ConnectionInfo;

    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, v0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->filePasswordHash:[B

    invoke-static {v1}, Lorg/h2/util/Utils;->cloneByteArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/h2/engine/ConnectionInfo;->filePasswordHash:[B

    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->fileEncryptionKey:[B

    invoke-static {v1}, Lorg/h2/util/Utils;->cloneByteArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/h2/engine/ConnectionInfo;->fileEncryptionKey:[B

    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->userPasswordHash:[B

    invoke-static {v1}, Lorg/h2/util/Utils;->cloneByteArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/h2/engine/ConnectionInfo;->userPasswordHash:[B

    return-object v0
.end method

.method public getDbSettings()Lorg/h2/engine/DbSettings;
    .locals 5

    invoke-static {}, Lorg/h2/engine/DbSettings;->getDefaultSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Lorg/h2/engine/SettingsBase;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/h2/engine/DbSettings;->getInstance(Ljava/util/HashMap;)Lorg/h2/engine/DbSettings;

    move-result-object v0

    return-object v0
.end method

.method public getFileEncryptionKey()[B
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->fileEncryptionKey:[B

    return-object v0
.end method

.method public getFilePasswordHash()[B
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->filePasswordHash:[B

    return-object v0
.end method

.method public getFormatException()Lorg/h2/message/DbException;
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    const-string v1, "jdbc:h2:{ {.|mem:}[name] | [file:]fileName | {tcp|ssl}:[//]server[:port][,server2[:port]]/name }[;key=value...]"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fbe

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    return-object v0
.end method

.method public getIntProperty(II)I
    .locals 1

    invoke-static {p1}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return p2
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Dictionary;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->nameNormalized:Ljava/lang/String;

    if-nez v0, :cond_5

    sget-boolean v0, Lorg/h2/engine/SysProperties;->IMPLICIT_RELATIVE_PATH:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->isAbsolute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, ".\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, ":/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, ":\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x15f9b

    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->originalURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".h2.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mv.db"

    goto :goto_1

    :goto_2
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->nameNormalized:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const v0, 0x1601a

    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->nameNormalized:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->originalURL:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;I)I
    .locals 1

    .line 1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method public getProperty(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public getProperty(Ljava/lang/String;Z)Z
    .locals 2

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPasswordHash()[B
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->userPasswordHash:[B

    return-object v0
.end method

.method public isPersistent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    return v0
.end method

.method public isRemote()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->remote:Z

    return v0
.end method

.method public isSSL()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->ssl:Z

    return v0
.end method

.method public isUnnamedInMemory()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->unnamed:Z

    return v0
.end method

.method public removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public removeProperty(Ljava/lang/String;Z)Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :goto_0
    return p2
.end method

.method public setBaseDir(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->unwrap(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->isAbsolute(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v2, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-static {p1, v3, v4}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    iget-object v3, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v3}, Lorg/h2/store/fs/FileUtils;->unwrap(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v5, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    sub-int/2addr v6, v7

    .line 54
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {p1, v2, v3}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :goto_0
    invoke-static {v3}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3}, Lorg/h2/store/fs/FileUtils;->unwrap(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    const-string v6, " outside "

    .line 75
    .line 76
    const v7, 0x15fac

    .line 77
    .line 78
    .line 79
    if-nez v5, :cond_5

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_5

    .line 86
    .line 87
    const-string v5, "/"

    .line 88
    .line 89
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_4

    .line 94
    .line 95
    const-string v5, "\\"

    .line 96
    .line 97
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    const/16 v8, 0x2f

    .line 113
    .line 114
    if-ne v5, v8, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {v7, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    throw p1

    .line 140
    :cond_4
    :goto_1
    if-nez v1, :cond_6

    .line 141
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->unwrap(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {v7, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    throw p1

    .line 195
    :cond_6
    :goto_2
    return-void
.end method

.method public setFileEncryptionKey([B)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->fileEncryptionKey:[B

    return-void
.end method

.method public setFilePasswordHash([B)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->filePasswordHash:[B

    return-void
.end method

.method public setOriginalURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->originalURL:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setServerKey(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->remote:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->user:Ljava/lang/String;

    return-void
.end method

.method public setUserPasswordHash([B)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->userPasswordHash:[B

    return-void
.end method
