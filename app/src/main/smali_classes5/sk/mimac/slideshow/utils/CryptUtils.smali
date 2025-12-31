.class public abstract Lsk/mimac/slideshow/utils/CryptUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SECRET_KEY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lsk/mimac/slideshow/utils/CryptUtils;->SECRET_KEY:[B

    return-void

    :array_0
    .array-data 1
        -0x38t
        -0x52t
        -0x6at
        0x5t
        0x48t
        0xat
        0x17t
        -0x38t
        0x18t
        0xat
        0x1t
        0x66t
        0x36t
        0x17t
        -0x5et
        0x4ft
    .end array-data
.end method

.method public static decryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lsk/mimac/slideshow/utils/CryptUtils;->decryptPasswordToBytes(Ljava/lang/String;Z)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static decryptPasswordToBytes(Ljava/lang/String;)[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/CryptUtils;->decryptPasswordToBytes(Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptPasswordToBytes(Ljava/lang/String;Z)[B
    .locals 1

    .line 2
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lsk/mimac/slideshow/utils/CryptUtils;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lsk/mimac/slideshow/utils/HashBase64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t decrypt password"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decryptPasswordWithHashBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lsk/mimac/slideshow/utils/CryptUtils;->decryptPasswordToBytes(Ljava/lang/String;Z)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/CryptUtils;->encryptPassword([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptPassword([B)Ljava/lang/String;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/CryptUtils;->encryptPassword([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encryptPassword([BZ)Ljava/lang/String;
    .locals 1

    .line 3
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lsk/mimac/slideshow/utils/CryptUtils;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lsk/mimac/slideshow/utils/HashBase64;->encodeBase64([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :goto_0
    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t encrypt password"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static encryptPasswordWithHashBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lsk/mimac/slideshow/utils/CryptUtils;->encryptPassword([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCipher(I)Ljavax/crypto/Cipher;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lsk/mimac/slideshow/utils/CryptUtils;->SECRET_KEY:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-object v1
.end method
