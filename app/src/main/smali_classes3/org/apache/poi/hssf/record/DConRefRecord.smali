.class public Lorg/apache/poi/hssf/record/DConRefRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x51s


# instance fields
.field private _unused:[B

.field private charCount:I

.field private charType:I

.field private firstCol:I

.field private firstRow:I

.field private lastCol:I

.field private lastRow:I

.field private path:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/16 v1, 0x51

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    iget v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    add-int/lit8 v0, v0, 0x1

    mul-int v0, v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong sid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    const/16 v2, 0x51

    if-ne v1, v2, :cond_2

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    const/4 v1, 0x6

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    const/16 v1, 0x9

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/16 v1, 0xc

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    iget v3, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    and-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v3

    const/16 v3, 0xd

    invoke-static {p1, v3, v1}, Lorg/apache/poi/util/LittleEndian;->getByteArray([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    add-int/2addr v3, v1

    aget-byte v0, v4, v0

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v3, v0}, Lorg/apache/poi/util/LittleEndian;->getByteArray([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Character count must be >= 2"

    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "incompatible sid."

    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDataSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x9

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    array-length v0, v0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public getFirstColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    return v0
.end method

.method public getPath()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getReadablePath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    aget-byte v2, v1, v0

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    array-length v3, v1

    invoke-static {v1, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    sget-object v1, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "\u0003"

    const-string v1, "/"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x51

    return v0
.end method

.method public isExternalRef()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DCONREF]\n    .ref\n        .firstrow   = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n        .lastrow    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n        .firstcol   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n        .lastcol    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    .cch            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    .stFile\n        .h          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n        .rgb        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DConRefRecord;->getReadablePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[/DCONREF]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
