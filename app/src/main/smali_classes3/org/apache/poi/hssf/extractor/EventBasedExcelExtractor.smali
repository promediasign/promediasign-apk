.class public Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;
.super Lorg/apache/poi/POIOLE2TextExtractor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;
    }
.end annotation


# instance fields
.field private _dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field _formulasNotResults:Z

.field _includeSheetNames:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_includeSheetNames:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_formulasNotResults:Z

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-super {p0, p1}, Lorg/apache/poi/POITextExtractor;->setFilesystem(Ljava/io/Closeable;)V

    return-void
.end method

.method private triggerExtraction()Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;
    .locals 4

    new-instance v0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;-><init>(Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;)V

    new-instance v1, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;-><init>(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V

    iput-object v1, v0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_ft:Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

    new-instance v2, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;

    invoke-direct {v2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;-><init>()V

    new-instance v3, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;

    invoke-direct {v3}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;-><init>()V

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->addListenerForAllRecords(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method


# virtual methods
.method public getDocSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Metadata extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Metadata extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    const-string v0, "\n"

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->triggerExtraction()Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v1

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFormulasNotResults(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_formulasNotResults:Z

    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Comment extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Header/Footer extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_includeSheetNames:Z

    return-void
.end method
