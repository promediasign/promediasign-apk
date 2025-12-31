.class public Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/util/ZipEntrySource;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final ci:Ljavax/crypto/Cipher;

.field private closed:Z

.field private final tmpFile:Ljava/io/File;

.field private final zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljavax/crypto/Cipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->tmpFile:Ljava/io/File;

    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Ljava/util/zip/ZipFile;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->ci:Ljavax/crypto/Cipher;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    return-void
.end method

.method private static copyToFile(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;[B[B)V
    .locals 6

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    const/4 v4, 0x1

    const-string v5, "PKCS5Padding"

    move-object v1, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    new-instance p3, Ljava/util/zip/ZipInputStream;

    invoke-direct {p3, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p4

    if-eqz p4, :cond_0

    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance p4, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource$1;

    invoke-direct {p4, p1}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource$1;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v0, p4, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-static {p3, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    invoke-virtual {p4}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource$1;->close()V

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {p3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p3}, Ljava/util/zip/ZipInputStream;->close()V

    return-void
.end method

.method public static createZipEntrySource(Ljava/io/InputStream;)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;
    .locals 4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v2, v1, [B

    new-array v1, v1, [B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v0, "protectedXlsx"

    const-string v3, ".zip"

    invoke-static {v0, v3}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-static {p0, v0, v3, v1, v2}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->copyToFile(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;[B[B)V

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0, v3, v1, v2}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->fileToSource(Ljava/io/File;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;[B[B)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    move-result-object p0

    return-object p0
.end method

.method private static fileToSource(Ljava/io/File;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;[B[B)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;
    .locals 6

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    const/4 v4, 0x2

    const-string v5, "PKCS5Padding"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;-><init>(Ljava/io/File;Ljavax/crypto/Cipher;)V

    return-object p2
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->tmpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->LOG:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->tmpFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be removed (or was already removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    return-void
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljavax/crypto/CipherInputStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->ci:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    return v0
.end method
