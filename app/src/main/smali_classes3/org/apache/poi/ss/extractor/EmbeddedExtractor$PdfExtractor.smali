.class Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;
.super Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PdfExtractor"
.end annotation


# static fields
.field static PdfClassID:Lorg/apache/poi/hpsf/ClassID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{B801CA65-A1FC-11D0-85AD-444553540000}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;->PdfClassID:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;->PdfClassID:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CONTENTS"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public canExtract(Lorg/apache/poi/ss/usermodel/Picture;)Z
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Picture;->getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/PictureData;->getPictureType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "CONTENTS"

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    new-instance v1, Lorg/apache/poi/ss/extractor/EmbeddedData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pdf"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "application/pdf"

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-object v1
.end method

.method public extract(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 7

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Picture;->getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/PictureData;->getPictureType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/PictureData;->getData()[B

    move-result-object v0

    sget-object v2, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    const-string v3, "%PDF-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->access$000([BI[B)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    return-object v1

    :cond_1
    const-string v6, "%%EOF"

    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->access$000([BI[B)I

    move-result v2

    if-ne v2, v5, :cond_2

    return-object v1

    :cond_2
    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x6

    new-array v1, v2, [B

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Shape;->getShapeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".pdf"

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2
    invoke-static {p1, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_3
    new-instance v0, Lorg/apache/poi/ss/extractor/EmbeddedData;

    const-string v2, "application/pdf"

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method
