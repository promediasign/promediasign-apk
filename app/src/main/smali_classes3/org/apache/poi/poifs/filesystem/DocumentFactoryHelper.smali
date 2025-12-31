.class public Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecryptedStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getInstance(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v2, "VelvetSweatshop"

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    :goto_1
    new-instance p1, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper$1;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper$1;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Password incorrect"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "The supplied spreadsheet is protected, but no password was supplied"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static hasOOXMLHeader(Ljava/io/InputStream;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
