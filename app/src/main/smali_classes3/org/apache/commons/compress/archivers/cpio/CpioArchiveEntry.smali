.class public Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# instance fields
.field private final alignmentBoundary:I

.field private chksum:J

.field private final fileFormat:S

.field private filesize:J

.field private gid:J

.field private final headerSize:I

.field private inode:J

.field private maj:J

.field private min:J

.field private mode:J

.field private mtime:J

.field private name:Ljava/lang/String;

.field private nlink:J

.field private rmaj:J

.field private rmin:J

.field private uid:J


# direct methods
.method public constructor <init>(S)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->chksum:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->gid:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->inode:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->maj:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mtime:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->nlink:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmaj:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->uid:J

    const/4 v0, 0x1

    const/16 v1, 0x6e

    const/4 v2, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    const/16 v1, 0x1a

    iput v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    :goto_0
    iput v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown header type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v0, 0x4c

    iput v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iput v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    :goto_1
    iput-short p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    return-void
.end method

.method private checkNewFormat()V
    .locals 1

    iget-short v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private checkOldFormat()V
    .locals 1

    iget-short v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public getChksum()J
    .locals 4

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->chksum:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getDataPadCount()I
    .locals 6

    iget v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v3, v2

    if-lez v3, :cond_1

    sub-int/2addr v0, v3

    return v0

    :cond_1
    return v1
.end method

.method public getFormat()S
    .locals 1

    iget-short v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    return v0
.end method

.method public getHeaderPadCount(J)I
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    :cond_1
    rem-int/2addr v2, v0

    if-lez v2, :cond_2

    sub-int/2addr v0, v2

    return v0

    :cond_2
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isDirectory()Z
    .locals 5

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setChksum(J)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->chksum:J

    return-void
.end method

.method public setDevice(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkOldFormat()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    return-void
.end method

.method public setDeviceMaj(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->maj:J

    return-void
.end method

.method public setDeviceMin(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    return-void
.end method

.method public setGID(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->gid:J

    return-void
.end method

.method public setInode(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->inode:J

    return-void
.end method

.method public setMode(J)V
    .locals 5

    const-wide/32 v0, 0xf000

    and-long/2addr v0, p1

    long-to-int v2, v0

    sparse-switch v2, :sswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown mode. Full: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Masked: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x6000 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x9000 -> :sswitch_0
        0xa000 -> :sswitch_0
        0xc000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumberOfLinks(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->nlink:J

    return-void
.end method

.method public setRemoteDevice(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkOldFormat()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    return-void
.end method

.method public setRemoteDeviceMaj(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmaj:J

    return-void
.end method

.method public setRemoteDeviceMin(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    return-void
.end method

.method public setSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid entry size <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mtime:J

    return-void
.end method

.method public setUID(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->uid:J

    return-void
.end method
