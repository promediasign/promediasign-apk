.class public Lsk/mimac/slideshow/http/Authenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/http/Authenticator$Session;
    }
.end annotation


# static fields
.field public static final COOKIE_NAME:Ljava/lang/String; = "__SESSION_ID__"

.field private static final LOG:Lorg/slf4j/Logger;

.field private static final LONG_COOKIE_AGE:I = 0x4f1a00

.field private static final LONG_SESSION_AGE:J = 0x9a7ec800L

.field private static final SHORT_COOKIE_AGE:I = 0x2a300

.field private static final SHORT_SESSION_AGE:J = 0x36ee80L

.field public static final SYSTEM_USER:Ljava/lang/String; = "__SYSTEM_USER__"

.field public static final TUNNEL_COOKIE_NAME:Ljava/lang/String; = "__TUNNEL_SESSION_ID__"


# instance fields
.field private final random:Ljava/util/Random;

.field private final secretKey:[B

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/http/Authenticator$Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/http/Authenticator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/Authenticator;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/settings/SystemSettings;->getInternalPassword()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/Authenticator;->secretKey:[B

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/http/Authenticator;->sessions:Ljava/util/Map;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/http/Authenticator;->random:Ljava/util/Random;

    return-void
.end method

.method private decryptSession(Ljava/lang/String;)Lsk/mimac/slideshow/http/Authenticator$Session;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lsk/mimac/slideshow/http/Authenticator;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "\\."

    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lsk/mimac/slideshow/http/Authenticator$Session;

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v2, 0x4

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lsk/mimac/slideshow/http/Authenticator$Session;-><init>(Lsk/mimac/slideshow/database/entity/AccessUser;JJLsk/mimac/slideshow/http/Authenticator$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method private encryptSession(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lsk/mimac/slideshow/http/Authenticator;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t encrypt password"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getCipher(I)Ljavax/crypto/Cipher;
    .locals 4

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lsk/mimac/slideshow/http/Authenticator;->secretKey:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v0
.end method

.method public static getSystemUserPassword()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->COMMUNICATION_SERVER_CODE:Lsk/mimac/slideshow/settings/UserSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Lsk/mimac/slideshow/settings/SystemSettings;->getInternalPassword()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lorg/apache/commons/codec/digest/DigestUtils;->sha384(Ljava/lang/String;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lsk/mimac/slideshow/utils/HashBase64;->encodeBase64([B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 41
    return-object v0
.end method

.method private loginBasic(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;
    .locals 6

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/Authenticator;->parseString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p1, v0

    const-string v3, "__SYSTEM_USER__"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/http/Authenticator;->getSystemUserPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lsk/mimac/slideshow/database/entity/AccessUser;

    const-string v3, "System user"

    const-string v4, "system-user"

    sget-object v5, Lsk/mimac/slideshow/enums/UserRole;->ADMIN:Lsk/mimac/slideshow/enums/UserRole;

    invoke-direct {v1, v3, v4, v2, v5}, Lsk/mimac/slideshow/database/entity/AccessUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/UserRole;)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v1

    aget-object v4, p1, v0

    invoke-virtual {v1, v4}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getByUsername(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v4, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->INSTANCE:Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;

    aget-object v3, p1, v3

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-object v1

    :goto_0
    sget-object v3, Lsk/mimac/slideshow/http/Authenticator;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Can\'t get user \'{}\' from database"

    aget-object p1, p1, v0

    invoke-interface {v3, v4, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v2
.end method

.method private loginCookies(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;
    .locals 8

    iget-object v0, p0, Lsk/mimac/slideshow/http/Authenticator;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/http/Authenticator$Session;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/Authenticator;->decryptSession(Ljava/lang/String;)Lsk/mimac/slideshow/http/Authenticator$Session;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Lsk/mimac/slideshow/http/Authenticator$Session;->access$100(Lsk/mimac/slideshow/http/Authenticator$Session;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    invoke-static {v0}, Lsk/mimac/slideshow/http/Authenticator$Session;->access$100(Lsk/mimac/slideshow/http/Authenticator$Session;)J

    move-result-wide v4

    invoke-static {v0}, Lsk/mimac/slideshow/http/Authenticator$Session;->access$200(Lsk/mimac/slideshow/http/Authenticator$Session;)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v2, v3}, Lsk/mimac/slideshow/http/Authenticator$Session;->access$102(Lsk/mimac/slideshow/http/Authenticator$Session;J)J

    invoke-static {v0}, Lsk/mimac/slideshow/http/Authenticator$Session;->access$300(Lsk/mimac/slideshow/http/Authenticator$Session;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/Authenticator;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private parseString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const-string v0, "Basic "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/http/Authenticator;->loginCookies(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/Authenticator;->loginBasic(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public clearOldSessions()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lsk/mimac/slideshow/http/Authenticator;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/http/Authenticator$Session;

    invoke-static {v3}, Lsk/mimac/slideshow/http/Authenticator$Session;->access$100(Lsk/mimac/slideshow/http/Authenticator$Session;)J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    invoke-static {v3}, Lsk/mimac/slideshow/http/Authenticator$Session;->access$100(Lsk/mimac/slideshow/http/Authenticator$Session;)J

    move-result-wide v4

    invoke-static {v3}, Lsk/mimac/slideshow/http/Authenticator$Session;->access$200(Lsk/mimac/slideshow/http/Authenticator$Session;)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public generateCookie(Ljava/lang/String;Ljava/lang/String;ZZ)Lsk/mimac/slideshow/http/HttpCookie;
    .locals 9

    const-string v0, ".2592000000"

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/http/Authenticator;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/Authenticator;->clearOldSessions()V

    goto :goto_0

    :catch_0
    move-exception p2

    goto/16 :goto_5

    :cond_0
    :goto_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getByUsername(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v1, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->INSTANCE:Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 p2, 0x24

    if-eqz p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/math/BigInteger;

    iget-object v6, p0, Lsk/mimac/slideshow/http/Authenticator;->random:Ljava/util/Random;

    const/16 v7, 0x20

    invoke-direct {v2, v7, v6}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".x."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/http/Authenticator;->encryptSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lsk/mimac/slideshow/http/Authenticator;->random:Ljava/util/Random;

    const/16 v2, 0x108

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const-wide/32 v1, 0x77359400

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iget-object v0, p0, Lsk/mimac/slideshow/http/Authenticator;->sessions:Ljava/util/Map;

    new-instance v1, Lsk/mimac/slideshow/http/Authenticator$Session;

    if-eqz p3, :cond_2

    const-wide v6, 0x9a7ec800L

    goto :goto_2

    :cond_2
    const-wide/32 v6, 0x36ee80

    :goto_2
    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lsk/mimac/slideshow/http/Authenticator$Session;-><init>(Lsk/mimac/slideshow/database/entity/AccessUser;JJLsk/mimac/slideshow/http/Authenticator$1;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsk/mimac/slideshow/http/Authenticator;->LOG:Lorg/slf4j/Logger;

    const-string v1, "User \'{}\' logged in to web interface"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lsk/mimac/slideshow/http/HttpCookie;

    if-eqz p4, :cond_3

    const-string p4, "__TUNNEL_SESSION_ID__"

    goto :goto_3

    :cond_3
    const-string p4, "__SESSION_ID__"

    :goto_3
    if-eqz p3, :cond_4

    const p3, 0x4f1a00

    goto :goto_4

    :cond_4
    const p3, 0x2a300

    :goto_4
    invoke-direct {v0, p4, p2, p3}, Lsk/mimac/slideshow/http/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_5
    sget-object p3, Lsk/mimac/slideshow/http/Authenticator;->LOG:Lorg/slf4j/Logger;

    const-string p4, "Can\'t get user \'{}\' from database"

    invoke-interface {p3, p4, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public logout(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/http/Authenticator;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
