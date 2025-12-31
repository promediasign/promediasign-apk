.class Lorg/apache/poi/ss/extractor/EmbeddedExtractor$OOXMLExtractor;
.super Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OOXMLExtractor"
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

    const-string v0, "package"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->WORD2007:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ".docx"

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->WORD2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ".docm"

    const-string v1, "application/vnd.ms-word.document.macroEnabled.12"

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL2003:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL2010:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, ".xlsm"

    const-string v1, "application/vnd.ms-excel.sheet.macroEnabled.12"

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007_XLSB:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, ".xlsb"

    const-string v1, "application/vnd.ms-excel.sheet.binary.macroEnabled.12"

    goto :goto_1

    :cond_4
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT2007:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, ".pptx"

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    goto :goto_1

    :cond_5
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ".ppsm"

    const-string v1, "application/vnd.ms-powerpoint.slideshow.macroEnabled.12"

    goto :goto_1

    :cond_6
    const-string v0, ".zip"

    const-string v1, "application/zip"

    goto :goto_1

    :cond_7
    :goto_0
    const-string v0, ".xlsx"

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    :goto_1
    const-string v2, "package"

    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    new-instance v2, Lorg/apache/poi/ss/extractor/EmbeddedData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v3, v1}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-object v2
.end method
