.class public Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/usermanager/PasswordEncryptor;


# static fields
.field public static final INSTANCE:Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;

    invoke-direct {v0}, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->INSTANCE:Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {p1, v0}, Lorg/apache/ftpserver/util/EncryptUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t find SHA-1 algoritm"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
