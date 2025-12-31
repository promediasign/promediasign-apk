.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setBlockSize(I)V

    iget-object p2, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V

    sget-object p2, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagCryptoAPI:Lorg/apache/poi/util/BitField;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p2

    sget-object p5, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p5, p3, p4}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setFlags(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setFlags(I)V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setSizeExtra(I)V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->fromEcmaId(I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->fromEcmaId(I)Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x28

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setBlockSize(I)V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CipherProvider;->fromEcmaId(I)Lorg/apache/poi/poifs/crypt/CipherProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    instance-of v0, p1, Lorg/apache/poi/hssf/record/RecordInputStream;

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->mark(I)V

    goto :goto_0

    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->mark(I)V

    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->reset()V

    goto :goto_1

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :goto_1
    const/16 v0, 0x10

    if-ne v1, v0, :cond_3

    const-string p1, ""

    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCspName(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    int-to-char v1, v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_4
    sget-object p1, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySalt([B)V

    return-void

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->createDelayedOutput(I)Lorg/apache/poi/util/LittleEndianOutput;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getFlags()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v4

    iget v4, v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    iget v4, v4, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherProvider()Lorg/apache/poi/poifs/crypt/CipherProvider;

    move-result-object v4

    iget v4, v4, Lorg/apache/poi/poifs/crypt/CipherProvider;->ecmaId:I

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    invoke-virtual {p1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    invoke-virtual {p1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCspName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherProvider()Lorg/apache/poi/poifs/crypt/CipherProvider;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/poi/poifs/crypt/CipherProvider;->cipherProviderName:Ljava/lang/String;

    :cond_0
    invoke-static {v4}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    invoke-virtual {p1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result p1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    invoke-interface {v2, p1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method
