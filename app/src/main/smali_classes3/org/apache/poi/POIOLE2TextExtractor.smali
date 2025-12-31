.class public abstract Lorg/apache/poi/POIOLE2TextExtractor;
.super Lorg/apache/poi/POITextExtractor;
.source "SourceFile"


# instance fields
.field protected document:Lorg/apache/poi/POIDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/POIDocument;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/POITextExtractor;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {p0, p1}, Lorg/apache/poi/POITextExtractor;->setFilesystem(Ljava/io/Closeable;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/POIOLE2TextExtractor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/POITextExtractor;-><init>()V

    iget-object p1, p1, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    iput-object p1, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    return-void
.end method


# virtual methods
.method public getDocSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lorg/apache/poi/POIDocument;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    return-object v0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
    .locals 1

    new-instance v0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;-><init>(Lorg/apache/poi/POIOLE2TextExtractor;)V

    return-object v0
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    return-object v0
.end method
