.class Lorg/apache/poi/ss/extractor/EmbeddedExtractor$FsExtractor;
.super Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FsExtractor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".ole"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setFilename(Ljava/lang/String;)V

    return-object v0
.end method
