.class public Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;
.super Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->setCompressTempFiles(Z)V

    return-void
.end method


# virtual methods
.method public createSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;
    .locals 6

    sget-object v0, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->LOG:Lorg/apache/poi/util/POILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCompressTempFiles: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isCompressTempFiles()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "SharedStringSource: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;-><init>()V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->flushSheets()V

    new-instance v0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/POIXMLDocument;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->createZipEntrySource(Ljava/io/InputStream;)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->injectData(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->dispose()V

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->dispose()V

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method
