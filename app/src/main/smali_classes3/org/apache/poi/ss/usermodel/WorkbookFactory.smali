.class public Lorg/apache/poi/ss/usermodel/WorkbookFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/File;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p0, p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
    :try_end_2
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    if-eqz p2, :cond_0

    sget-object p1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ_WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    :goto_0
    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    :try_start_3
    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    instance-of p0, p1, Ljava/io/IOException;

    if-nez p0, :cond_2

    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 2

    .line 5
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/WorkbookFactory$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object p1

    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string p1, "Your InputStream was neither an OLE2 stream, nor an OOXML stream"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 6
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 7
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 3

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    const-string v1, "EncryptedPackage"

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper;->getDecryptedStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v2, v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    invoke-static {v1}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_2
    return-object v2

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    invoke-static {v1}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_3
    throw p0
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 9
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-object v0
.end method
