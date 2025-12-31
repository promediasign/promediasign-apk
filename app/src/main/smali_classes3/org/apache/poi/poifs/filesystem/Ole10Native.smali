.class public Lorg/apache/poi/poifs/filesystem/Ole10Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;
    }
.end annotation


# static fields
.field protected static final ISO1:Ljava/lang/String; = "ISO-8859-1"

.field public static final OLE10_NATIVE:Ljava/lang/String; = "\u0001Ole10Native"


# instance fields
.field private command:Ljava/lang/String;

.field private dataBuffer:[B

.field private fileName:Ljava/lang/String;

.field private flags1:S

.field private flags2:S

.field private flags3:S

.field private label:Ljava/lang/String;

.field private mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

.field private totalSize:I

.field private unknown1:S


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    const/4 v1, 0x3

    iput-short v1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setLabel(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setFileName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setCommand(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setDataBuffer([B)V

    sget-object p1, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->parsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    const/4 v2, 0x3

    iput-short v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    iput-short v1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    array-length v2, p1

    add-int/lit8 v3, p2, 0x2

    if-lt v2, v3, :cond_7

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    add-int/lit8 v2, p2, 0x4

    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->unparsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    if-ne v3, v0, :cond_1

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->compact:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    :goto_0
    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    goto :goto_1

    :cond_0
    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->parsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$1;->$SwitchMap$org$apache$poi$poifs$filesystem$Ole10Native$EncodingMode:[I

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-eq v3, v0, :cond_2

    iget p2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    goto :goto_2

    :cond_2
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    add-int/lit8 v2, p2, 0x6

    iget p2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    sub-int/2addr p2, v0

    goto :goto_2

    :cond_3
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    add-int/lit8 p2, p2, 0x6

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getStringLength([BI)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-static {p1, p2, v2}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getStringLength([BI)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-static {p1, p2, v2}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v2, v0, -0x1

    invoke-static {p1, p2, v2}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    add-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    const-string v2, "Invalid Ole10Native"

    if-lt v0, p2, :cond_6

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    add-int/lit8 v3, p2, 0x4

    if-ltz v0, :cond_5

    iget v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    sub-int/2addr v4, p2

    if-lt v4, v0, :cond_5

    move p2, v0

    move v2, v3

    :goto_2
    int-to-long v3, p2

    int-to-long v5, v2

    add-long/2addr v3, v5

    array-length v0, p1

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_4

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_4
    new-instance p1, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    const-string p2, "Invalid Ole10Native: declared data length > available data"

    invoke-direct {p1, p2}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    invoke-direct {p1, v2}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    invoke-direct {p1, v2}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    const-string p2, "data is too small"

    invoke-direct {p1, p2}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/Ole10Native;
    .locals 2

    .line 1
    const-string v0, "\u0001Ole10Native"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([B)I

    new-instance p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>([BI)V

    return-object p0
.end method

.method public static createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/poifs/filesystem/Ole10Native;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/Ole10Native;

    move-result-object p0

    return-object p0
.end method

.method private static getStringLength([BI)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int v1, v0, p1

    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v1, p0, v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getDataBuffer()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    array-length v0, v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags1()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    return v0
.end method

.method public getFlags2()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    return v0
.end method

.method public getFlags3()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    return v0
.end method

.method public getUnknown1()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    return v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    return-void
.end method

.method public setDataBuffer([B)V
    .locals 0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFlags1(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    return-void
.end method

.method public setFlags2(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    return-void
.end method

.method public setFlags3(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    return-void
.end method

.method public setUnknown1(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 7

    new-instance v0, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v1, Lorg/apache/poi/poifs/filesystem/Ole10Native$1;->$SwitchMap$org$apache$poi$poifs$filesystem$Ole10Native$EncodingMode:[I

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags1()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v3, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags1()S

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getLabel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags2()S

    move-result v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getUnknown1()S

    move-result v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getCommand()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags3()S

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method
