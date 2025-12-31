.class public Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "SourceFile"


# instance fields
.field private compressedSize:J

.field private diskNumberStart:I

.field private offsetLocalHeader:J

.field private uncompressedSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->uncompressedSize:J

    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    return-void
.end method


# virtual methods
.method public getCompressedSize()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    return-wide v0
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->uncompressedSize:J

    return-wide v0
.end method

.method public setCompressedSize(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    return-void
.end method

.method public setDiskNumberStart(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    return-void
.end method

.method public setOffsetLocalHeader(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    return-void
.end method

.method public setUncompressedSize(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->uncompressedSize:J

    return-void
.end method
