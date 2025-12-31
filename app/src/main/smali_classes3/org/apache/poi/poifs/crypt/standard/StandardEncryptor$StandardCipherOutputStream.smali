.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandardCipherOutputStream"
.end annotation


# instance fields
.field protected countBytes:J

.field protected final dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field protected final fileOut:Ljava/io/File;

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2

    .line 1
    const-string v0, "encrypted_package"

    const-string v1, "crypt"

    invoke-static {v0, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .locals 4

    .line 2
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    new-instance v0, Ljavax/crypto/CipherOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    const-string v3, "PKCS5Padding"

    invoke-static {p1, v2, v3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->access$000(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->writeToPOIFS()V

    return-void
.end method

.method public processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 4

    const-string v0, "Can\'t delete temporary encryption file: "

    :try_start_0
    new-instance v1, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->getStream()Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeLong(J)V

    new-instance p1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, v1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->access$100()Lorg/apache/poi/util/POILogger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    return-void
.end method

.method public writeToPOIFS()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const-string v2, "EncryptedPackage"

    invoke-virtual {v0, v2, v1, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method
