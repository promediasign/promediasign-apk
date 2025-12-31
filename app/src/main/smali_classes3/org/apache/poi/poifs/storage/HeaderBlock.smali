.class public final Lorg/apache/poi/poifs/storage/HeaderBlock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/storage/HeaderBlockConstants;


# instance fields
.field private _bat_count:I

.field private final _data:[B

.field private _property_start:I

.field private _sbat_count:I

.field private _sbat_start:I

.field private _xbat_count:I

.field private _xbat_start:I

.field private final bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->readFirst512(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>([B)V

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 2
    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/nio/ByteBuffer;I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v1, Lorg/apache/poi/util/LongField;

    const-wide v2, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3, v0}, Lorg/apache/poi/util/LongField;-><init>(IJ[B)V

    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v4, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v4, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v4, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v4, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance v1, Lorg/apache/poi/util/ShortField;

    const/16 v2, 0x18

    const/16 v3, 0x3b

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    new-instance v1, Lorg/apache/poi/util/ShortField;

    const/16 v2, 0x1a

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    new-instance v1, Lorg/apache/poi/util/ShortField;

    const/16 v2, 0x1c

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    new-instance v1, Lorg/apache/poi/util/ShortField;

    const/16 v2, 0x1e

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getHeaderValue()S

    move-result p1

    invoke-direct {v1, v2, p1, v0}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    new-instance p1, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x20

    const/4 v2, 0x6

    invoke-direct {p1, v1, v2, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance p1, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x24

    invoke-direct {p1, v1, v4, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance p1, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x28

    invoke-direct {p1, v1, v4, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance p1, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x34

    invoke-direct {p1, v1, v4, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance p1, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x38

    const/16 v2, 0x1000

    invoke-direct {p1, v1, v2, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    iput v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    iput v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    iput v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    return-void
.end method

.method private constructor <init>([B)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/poifs/storage/HeaderBlock$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-wide v0, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    invoke-static {v0, v1}, Lorg/apache/poi/util/HexDump;->longToHex(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/HexDump;->longToHex(J)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;

    const-string v2, "Invalid header signature; read "

    const-string v3, ", expected "

    const-string v4, " - Your file appears not to be a valid OLE2 document"

    .line 4
    invoke-static {v2, p1, v3, v0, v4}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v1, p1}, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance p1, Lorg/apache/poi/hssf/OldExcelFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The supplied data appears to be in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " format. HSSF only supports the BIFF8 format, try OldExcelExtractor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    new-instance p1, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;

    const-string v0, "The supplied data appears to be in the old MS Write format. Apache POI doesn\'t currently support this format"

    invoke-direct {p1, v0}, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    new-instance p1, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;

    const-string v0, "The supplied data appears to be a raw XML file. Formats such as Office 2003 XML are not supported"

    invoke-direct {p1, v0}, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    new-instance p1, Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;

    const-string v0, "The supplied data appears to be in the Office 2007+ XML. You are calling the part of POI that deals with OLE2 Office Documents. You need to call a different part of POI to process this data (eg XSSF instead of HSSF)"

    invoke-direct {p1, v0}, Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    const/16 v1, 0x1e

    aget-byte v2, v0, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    sget-object v1, Lorg/apache/poi/poifs/common/POIFSConstants;->LARGER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_1

    :cond_0
    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    sget-object v1, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_0

    :goto_1
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x2c

    invoke-direct {v1, v2, p1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    new-instance p1, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x30

    invoke-direct {p1, v1, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {p1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    new-instance p1, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x3c

    invoke-direct {p1, v1, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {p1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    new-instance p1, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x40

    invoke-direct {p1, v1, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {p1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    new-instance p1, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x44

    invoke-direct {p1, v1, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {p1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    new-instance p1, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x48

    invoke-direct {p1, v1, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {p1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported blocksize  (2^"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v1

    const-string v1, "). Expected 2^9 or 2^12."

    .line 6
    invoke-static {v1, v0, v2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static alertShortRead(II)Ljava/io/IOException;
    .locals 4

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "s"

    :goto_0
    const-string v1, " byte"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to read entire header; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " read; expected "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static readFirst512(Ljava/io/InputStream;)[B
    .locals 2

    const/16 v0, 0x200

    new-array v1, v0, [B

    invoke-static {p0, v1}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result p0

    if-ne p0, v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->alertShortRead(II)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public getBATArray()[I
    .locals 5

    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [I

    const/16 v2, 0x4c

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-static {v4, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getBATCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    return v0
.end method

.method public getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method public getPropertyStart()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    return v0
.end method

.method public getSBATCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    return v0
.end method

.method public getSBATStart()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    return v0
.end method

.method public getXBATCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    return v0
.end method

.method public getXBATIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    return v0
.end method

.method public setBATArray([I)V
    .locals 7

    array-length v0, p1

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    rsub-int/lit8 v1, v0, 0x6d

    const/16 v2, 0x4c

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    iget-object v5, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget v6, p1, v4

    invoke-static {v5, v2, v6}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v0, -0x1

    invoke-static {p1, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setBATCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    return-void
.end method

.method public setPropertyStart(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    return-void
.end method

.method public setSBATBlockCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    return-void
.end method

.method public setSBATStart(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    return-void
.end method

.method public setXBATCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    return-void
.end method

.method public setXBATStart(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    return-void
.end method

.method public writeData(Ljava/io/OutputStream;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x2c

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x30

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x3c

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x40

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x44

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x48

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v1, 0x0

    const/16 v2, 0x200

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
