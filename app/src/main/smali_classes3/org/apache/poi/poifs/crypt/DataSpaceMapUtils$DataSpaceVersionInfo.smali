.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSpaceVersionInfo"
.end annotation


# instance fields
.field featureIdentifier:Ljava/lang/String;

.field readerVersionMajor:I

.field readerVersionMinor:I

.field updaterVersionMajor:I

.field updaterVersionMinor:I

.field writerVersionMajor:I

.field writerVersionMinor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->featureIdentifier:Ljava/lang/String;

    iput p2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMajor:I

    iput p3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMinor:I

    iput p4, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMajor:I

    iput p5, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMinor:I

    iput p6, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMajor:I

    iput p7, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMinor:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMajor:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMinor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMinor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMinor:I

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->featureIdentifier:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMajor:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMinor:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMajor:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMinor:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMajor:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMinor:I

    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->featureIdentifier:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMajor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMinor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMajor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMinor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMajor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMinor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    return-void
.end method
