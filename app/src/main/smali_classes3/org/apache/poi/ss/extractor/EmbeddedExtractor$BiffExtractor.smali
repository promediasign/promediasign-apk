.class Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;
.super Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BiffExtractor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;->canExtractExcel(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;->canExtractWord(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

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

.method public canExtractExcel(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL95:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL97:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Workbook"

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

.method public canExtractWord(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->WORD95:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->WORD97:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WordDocument"

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

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;->canExtractExcel(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xls"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setFilename(Ljava/lang/String;)V

    const-string p1, "application/vnd.ms-excel"

    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setContentType(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;->canExtractWord(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".doc"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setFilename(Ljava/lang/String;)V

    const-string p1, "application/msword"

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
