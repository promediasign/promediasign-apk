.class public final Lorg/apache/poi/hssf/record/FilePassRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x2fs


# instance fields
.field private encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field private final encryptionType:I


# direct methods
.method private constructor <init>(Lorg/apache/poi/hssf/record/FilePassRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iget v0, p1, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    :try_start_0
    iget-object p1, p1, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->clone()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "invalid encryption type"

    invoke-direct {p1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    :goto_0
    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->clone()Lorg/apache/poi/hssf/record/FilePassRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/FilePassRecord;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FilePassRecord;-><init>(Lorg/apache/poi/hssf/record/FilePassRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/FilePassRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 5

    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    sget-object v3, Lorg/apache/poi/hssf/record/FilePassRecord$1;->$SwitchMap$org$apache$poi$poifs$crypt$EncryptionMode:[I

    iget-object v4, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "not supported"

    invoke-direct {p1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v1

    invoke-interface {p1, v0, v2, v1}, Lorg/apache/poi/util/LittleEndianOutput;->write([BII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FILEPASS]\n    .type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "     ."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".ver  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".salt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".verifier = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".verifierHash = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[/FILEPASS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
