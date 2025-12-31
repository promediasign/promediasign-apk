.class public Lorg/apache/poi/xssf/streaming/GZIPSheetDataWriter;
.super Lorg/apache/poi/xssf/streaming/SheetDataWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V

    return-void
.end method


# virtual methods
.method public createTempFile()Ljava/io/File;
    .locals 2

    const-string v0, "poi-sxssf-sheet-xml"

    const-string v1, ".gz"

    invoke-static {v0, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public decorateInputStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public decorateOutputStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
