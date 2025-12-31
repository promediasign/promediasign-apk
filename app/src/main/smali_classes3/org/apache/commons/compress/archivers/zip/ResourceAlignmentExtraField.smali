.class public Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final ALLOW_METHOD_MESSAGE_CHANGE_FLAG:I = 0x8000

.field public static final BASE_SIZE:I = 0x2

.field public static final ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field private alignment:S

.field private allowMethodChange:Z

.field private padding:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const v1, 0xa11e

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;-><init>(IZI)V

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    if-ltz p1, :cond_1

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_1

    if-ltz p3, :cond_0

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Padding must not be negative, was: "

    .line 4
    invoke-static {p3, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Alignment must be between 0 and 0x7fff, was: "

    .line 6
    invoke-static {p1, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public allowMethodChange()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    return v0
.end method

.method public getAlignment()S
    .locals 1

    iget-short v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    return v0
.end method

.method public getCentralDirectoryData()[B
    .locals 2

    iget-short v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    if-eqz v1, :cond_0

    const v1, 0x8000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-short v1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v2, 0x8000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    invoke-static {v1, v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-lt p3, v0, :cond_1

    .line 3
    .line 4
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    and-int/lit16 p2, p1, 0x7fff

    .line 9
    .line 10
    int-to-short p2, p2

    .line 11
    iput-short p2, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    .line 12
    .line 13
    const p2, 0x8000

    .line 14
    .line 15
    .line 16
    and-int/2addr p1, p2

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/util/zip/ZipException;

    .line 26
    .line 27
    const-string p2, "Too short content for ResourceAlignmentExtraField (0xa11e): "

    .line 28
    .line 29
    invoke-static {p3, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public parseFromLocalFileData([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->parseFromCentralDirectoryData([BII)V

    add-int/lit8 p3, p3, -0x2

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    return-void
.end method
