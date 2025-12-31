.class public abstract Lorg/apache/poi/POIDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

.field private initialized:Z

.field private sInf:Lorg/apache/poi/hpsf/SummaryInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/POIDocument;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method private readPropertySet(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x5

    if-eqz p2, :cond_1

    sget-object v2, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " property set came back with wrong class - "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {v2, p1, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " property set came back as null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-virtual {p2, p1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p2, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "can\'t retrieve property set"

    aput-object v2, v1, v0

    aput-object p1, v1, v3

    const/4 p1, 0x7

    invoke-virtual {p2, p1, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public clearDirectory()V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->clearDirectory()V

    :cond_0
    return-void
.end method

.method public createInformationProperties()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    :cond_2
    return-void
.end method

.method public getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object v0
.end method

.method public getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    return-object v0
.end method

.method public getEncryptedPropertyStreamName()Ljava/lang/String;
    .locals 1

    const-string v0, "encryption"

    return-object v0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object p1

    return-object p1
.end method

.method public getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 8

    .line 2
    const-string v0, "Error "

    const-string v1, "can\'t find encrypted property stream \'"

    iget-object v2, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const/4 v3, 0x0

    const-string v4, "getting"

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->isDocPropsEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "getting encrypted"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptedPropertyStreamName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    invoke-virtual {p2, v2, v6}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, p2

    goto/16 :goto_4

    :catch_0
    move-exception v1

    move-object v3, p2

    :goto_0
    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v3, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_3

    :cond_0
    :try_start_3
    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_4
    move-exception v1

    goto :goto_2

    :cond_1
    move-object p2, v3

    move-object v5, v4

    :goto_1
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_2

    goto :goto_5

    :cond_2
    :try_start_5
    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v4, "creating"

    invoke-static {v1}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {p2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catch_5
    move-exception v1

    move-object v3, p2

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_8
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    :try_start_9
    new-instance p2, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " property set with name "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_3
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_4
    invoke-static {v3}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_3
    :goto_5
    invoke-static {p2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    return-object v0
.end method

.method public initDirectory()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readProperties()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    const-string v1, "\u0005DocumentSummaryInformation"

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/POIDocument;->readPropertySet(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    :cond_1
    const-class v0, Lorg/apache/poi/hpsf/SummaryInformation;

    const-string v1, "\u0005SummaryInformation"

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/POIDocument;->readPropertySet(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/SummaryInformation;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    return-void
.end method

.method public replaceDirectory(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iput-object p1, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object v0
.end method

.method public validateInPlaceWritePossible()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->isInPlaceWriteable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Opened read-only or via an InputStream, a Writeable File is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not the root Document, cannot save embedded resource in-place"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Newly created Document, cannot save in-place"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract write()V
.end method

.method public abstract write(Ljava/io/File;)V
.end method

.method public abstract write(Ljava/io/OutputStream;)V
.end method

.method public writeProperties()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->validateInPlaceWritePossible()V

    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/util/List;)V

    return-void
.end method

.method public writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/util/List;)V

    return-void
.end method

.method public writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->isDocPropsEncrypted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>()V

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v3

    const-string v4, "\u0005SummaryInformation"

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4, v3, v2}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    if-eqz p2, :cond_2

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v3

    const-string v5, "\u0005DocumentSummaryInformation"

    if-eqz v3, :cond_3

    invoke-virtual {p0, v5, v3, v2}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    if-eqz p2, :cond_3

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object p2

    invoke-virtual {p0, v5, p2, p1}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p2

    invoke-virtual {p2, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p2

    invoke-virtual {p2, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z

    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object p2

    instance-of v1, p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    if-eqz v1, :cond_6

    check-cast p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getEncryptedPropertyStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->setSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw p1

    :cond_6
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Using "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " encryption. Only CryptoAPI encryption supports encrypted property sets!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "Wrote property set "

    .line 4
    .line 5
    :try_start_0
    new-instance v3, Lorg/apache/poi/hpsf/PropertySet;

    .line 6
    .line 7
    invoke-direct {v3, p2}, Lorg/apache/poi/hpsf/PropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 11
    .line 12
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p2}, Lorg/apache/poi/hpsf/PropertySet;->write(Ljava/io/OutputStream;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 23
    .line 24
    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v3, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createOrUpdateDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 28
    .line 29
    .line 30
    sget-object p3, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " of size "

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    array-length p2, p2

    .line 46
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    new-array v2, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object p2, v2, v0

    .line 56
    .line 57
    const/4 p2, 0x3

    .line 58
    invoke-virtual {p3, p2, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/WritingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    sget-object p2, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    .line 63
    .line 64
    const-string p3, "Couldn\'t write property set with name "

    .line 65
    .line 66
    const-string v2, " as not supported by HPSF yet"

    .line 67
    .line 68
    invoke-static {p3, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-array p3, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object p1, p3, v0

    .line 75
    .line 76
    const/4 p1, 0x7

    .line 77
    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method
