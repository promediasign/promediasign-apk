.class public Lnet/lingala/zip4j/headers/HeaderReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final intBuff:[B

.field private final rawIO:Lnet/lingala/zip4j/util/RawIO;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    return-void
.end method

.method private parseExtraDataRecords([BI)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    new-instance v3, Lnet/lingala/zip4j/model/ExtraDataRecord;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;-><init>()V

    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1, v2}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setHeader(J)V

    add-int/lit8 v4, v2, 0x2

    iget-object v5, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v5, p1, v4}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setSizeOfData(I)V

    add-int/lit8 v2, v2, 0x4

    if-lez v4, :cond_0

    new-array v5, v4, [B

    invoke-static {p1, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setData([B)V

    :cond_0
    add-int/2addr v2, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;",
            "Lnet/lingala/zip4j/util/RawIO;",
            ")",
            "Lnet/lingala/zip4j/model/AESExtraDataRecord;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/ExtraDataRecord;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v2

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-nez v7, :cond_1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p1, p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    new-instance p1, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    invoke-virtual {p1, v4}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v2

    invoke-static {v2}, Lnet/lingala/zip4j/model/enums/AesVersion;->getFromVersionNumber(I)Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesVersion(Lnet/lingala/zip4j/model/enums/AesVersion;)V

    const/4 v2, 0x2

    new-array v3, v2, [B

    invoke-static {v0, v2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    const/4 v1, 0x4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getAesKeyStrengthFromRawCode(I)Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result p2

    invoke-static {p2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    return-object p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "corrupt AES extra data records"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method private readAesExtraDataRecord(Lnet/lingala/zip4j/model/AbstractFileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private readExtraDataRecords(Ljava/io/InputStream;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    if-lez p2, :cond_0

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-array v0, p2, [B

    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    :try_start_0
    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->parseExtraDataRecords([BI)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private readExtraDataRecords(Ljava/io/InputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraFieldLength()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setExtraDataRecords(Ljava/util/List;)V

    return-void
.end method

.method private readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;",
            "Lnet/lingala/zip4j/util/RawIO;",
            "JJJI)",
            "Lnet/lingala/zip4j/model/Zip64ExtendedInfo;"
        }
    .end annotation

    .line 1
    move-object v0, p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    new-instance v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;-><init>()V

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v4

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-gtz v5, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v3

    const-wide v5, 0xffffffffL

    const/4 v7, 0x0

    if-lez v3, :cond_2

    cmp-long v3, p3, v5

    if-nez v3, :cond_2

    invoke-virtual {p2, v4, v7}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setUncompressedSize(J)V

    const/16 v7, 0x8

    :cond_2
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v3

    if-ge v7, v3, :cond_3

    cmp-long v3, p5, v5

    if-nez v3, :cond_3

    invoke-virtual {p2, v4, v7}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setCompressedSize(J)V

    add-int/lit8 v7, v7, 0x8

    :cond_3
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v3

    if-ge v7, v3, :cond_4

    cmp-long v3, p7, v5

    if-nez v3, :cond_4

    invoke-virtual {p2, v4, v7}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setOffsetLocalHeader(J)V

    add-int/lit8 v7, v7, 0x8

    :cond_4
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v2

    if-ge v7, v2, :cond_5

    const v2, 0xffff

    move/from16 v5, p9

    if-ne v5, v2, :cond_5

    invoke-virtual {p2, v4, v7}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([BI)I

    move-result v0

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setDiskNumberStart(I)V

    :cond_5
    return-object v1

    :cond_6
    move/from16 v5, p9

    goto/16 :goto_0

    :cond_7
    return-object v3
.end method

.method private readZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 11

    .line 2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    :cond_2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public readDataDescriptor(Ljava/io/InputStream;Z)Lnet/lingala/zip4j/model/DataDescriptor;
    .locals 9

    new-instance v0, Lnet/lingala/zip4j/model/DataDescriptor;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/DataDescriptor;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v4

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, v1, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/DataDescriptor;->setCrc(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/DataDescriptor;->setCrc(J)V

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/DataDescriptor;->setCompressedSize(J)V

    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;)J

    move-result-wide p1

    :goto_1
    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/model/DataDescriptor;->setUncompressedSize(J)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/DataDescriptor;->setCompressedSize(J)V

    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result p1

    int-to-long p1, p1

    goto :goto_1

    :goto_2
    return-object v0
.end method

.method public readLocalFileHeader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 9

    new-instance v0, Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [B

    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v3, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v3

    int-to-long v4, v3

    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v6}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v3, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v3

    :cond_0
    int-to-long v3, v3

    sget-object v5, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-eqz v8, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v3, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setVersionNeededToExtract(I)V

    const/4 v3, 0x2

    new-array v4, v3, [B

    invoke-static {p1, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    move-result v5

    if-ne v5, v3, :cond_8

    const/4 v3, 0x0

    aget-byte v5, v4, v3

    invoke-static {v5, v3}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v5

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncrypted(Z)V

    aget-byte v5, v4, v3

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v5

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setDataDescriptorExists(Z)V

    const/4 v5, 0x1

    aget-byte v7, v4, v5

    invoke-static {v7, v6}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileNameUTF8Encoded(Z)V

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setGeneralPurposeFlag([B)V

    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {v4}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setLastModifiedTime(J)V

    invoke-static {p1, v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, v2, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCrc(J)V

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileNameLength(I)V

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setExtraFieldLength(I)V

    if-lez v1, :cond_7

    new-array v1, v1, [B

    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isFileNameUTF8Encoded()Z

    move-result v2

    invoke-static {v1, v2, p2}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileName(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\\"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_0
    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setDirectory(Z)V

    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/InputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)V

    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Lnet/lingala/zip4j/model/AbstractFileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getGeneralPurposeFlag()[B

    move-result-object p1

    aget-byte p1, p1, v3

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    :goto_1
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_2

    :cond_5
    sget-object p1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    goto :goto_1

    :cond_6
    :goto_2
    return-object v0

    :cond_7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid entry name in local file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not read enough bytes for generalPurposeFlags"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
