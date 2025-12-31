.class Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AgileCipherOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    const/16 p1, 0x1000

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    return-void
.end method


# virtual methods
.method public calculateChecksum(Ljava/io/File;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->updateIntegrityHMAC(Ljava/io/File;I)V

    return-void
.end method

.method public createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V

    return-void
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;IZLorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method
