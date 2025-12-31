.class public Lorg/apache/poi/poifs/crypt/EncryptionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final flagAES:Lorg/apache/poi/util/BitField;

.field public static final flagCryptoAPI:Lorg/apache/poi/util/BitField;

.field public static final flagDocProps:Lorg/apache/poi/util/BitField;

.field public static final flagExternal:Lorg/apache/poi/util/BitField;


# instance fields
.field private decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

.field private final encryptionFlags:I

.field private final encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field private encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

.field private header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

.field private verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

.field private final versionMajor:I

.field private final versionMinor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagCryptoAPI:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagDocProps:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagExternal:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 7

    .line 1
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->encryptionFlags:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p2, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1

    .line 3
    const-string v0, "EncryptionInfo"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-ne p2, v0, :cond_0

    iget v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    iget v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    :goto_0
    iput v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    goto :goto_0

    :goto_1
    iget v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    iget v2, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    const/4 v3, -0x1

    if-ne v1, v2, :cond_1

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    iget v4, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v2, v4, :cond_1

    :goto_2
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iput v3, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    goto :goto_4

    :cond_1
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v2, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    iget v4, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    if-gt v0, v1, :cond_5

    const/4 v2, 0x4

    if-gt v1, v2, :cond_5

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    if-ne v2, v0, :cond_5

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-eq p2, v1, :cond_4

    sget-object p2, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    invoke-virtual {p2, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->standard:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    :cond_4
    :goto_3
    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    goto :goto_4

    :cond_5
    sget-object p2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v0, p2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    if-ne v1, v0, :cond_6

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    iget v1, p2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v0, v1, :cond_6

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    :goto_4
    :try_start_0
    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown encryption: version major: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / version minor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / fCrypto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagCryptoAPI:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / fExternal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagExternal:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / fDocProps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagDocProps:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / fAES: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->builder:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->clone()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 2

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    return-object v0
.end method

.method public getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    return-object v0
.end method

.method public getEncryptionFlags()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    return v0
.end method

.method public getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    return-object v0
.end method

.method public getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    return-object v0
.end method

.method public getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    return-object v0
.end method

.method public getVersionMajor()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    return v0
.end method

.method public getVersionMinor()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    return v0
.end method

.method public isDocPropsEncrypted()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagDocProps:Lorg/apache/poi/util/BitField;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    return-void
.end method

.method public setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    return-void
.end method

.method public setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    return-void
.end method

.method public setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    return-void
.end method
