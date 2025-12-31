.class public Lorg/apache/poi/extractor/ExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CORE_DOCUMENT_REL:Ljava/lang/String; = "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

.field protected static final STRICT_DOCUMENT_REL:Ljava/lang/String; = "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

.field protected static final VISIO_DOCUMENT_REL:Ljava/lang/String; = "http://schemas.microsoft.com/visio/2010/relationships/document"

.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/extractor/ExtractorFactory;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/extractor/ExtractorFactory;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEncyptedOOXMLExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIXMLTextExtractor;
    .locals 3

    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "VelvetSweatshop"

    :cond_0
    new-instance v1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "Invalid password specified - use Biff8EncryptionKey.setCurrentUserPassword() before calling extractor"

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 0

    .line 3
    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Ljava/io/File;)Lorg/apache/poi/POITextExtractor;
    .locals 3

    .line 4
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    const-string v2, "EncryptedPackage"

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lorg/apache/poi/extractor/ExtractorFactory;->createEncyptedOOXMLExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_5
    move-object v0, v1

    goto :goto_5

    :catch_6
    move-object v0, v1

    goto :goto_6

    :cond_0
    invoke-static {v1}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/poi/POITextExtractor;->setFilesystem(Ljava/io/Closeable;)V
    :try_end_1
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_7
    move-exception p0

    goto :goto_0

    :catch_8
    move-exception p0

    goto :goto_1

    :catch_9
    move-exception p0

    goto :goto_2

    :catch_a
    move-exception p0

    goto :goto_3

    :catch_b
    move-exception p0

    goto :goto_4

    :goto_0
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :goto_1
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :goto_2
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :goto_3
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :goto_4
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :catch_c
    :goto_5
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Your File was neither an OLE2 file, nor an OOXML file"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_d
    :goto_6
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-static {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Ljava/io/InputStream;)Lorg/apache/poi/POITextExtractor;
    .locals 2

    .line 5
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/extractor/ExtractorFactory$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Your InputStream was neither an OLE2 stream, nor an OOXML stream"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    const-string v1, "EncryptedPackage"

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Lorg/apache/poi/extractor/ExtractorFactory;->createEncyptedOOXMLExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;
    .locals 3

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/POIXMLTextExtractor;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/POIXMLTextExtractor;
    .locals 6

    .line 7
    const-string v0, "Invalid OOXML Package received - expected 1 core document, found "

    :try_start_0
    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_9

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v1, "http://schemas.microsoft.com/visio/2010/relationships/document"

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    new-instance v0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v2

    if-ne v2, v3, :cond_c

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory;->getPreferEventExtractor()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    sget-object v2, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    sget-object v2, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_8

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;

    invoke-direct {v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/extractor/XSLFPowerPointExtractor;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;)V

    return-object v0

    :cond_9
    sget-object v2, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    array-length v3, v2

    :goto_4
    if-ge v0, v3, :cond_b

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No supported documents found in the OOXML package (found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    throw v0

    :goto_6
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    throw v0

    :goto_7
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    throw v0

    :goto_8
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    throw v0

    :goto_9
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    throw v0
.end method

.method public static getAllThreadsPreferEventExtractors()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getAllThreadsPreferEventExtractors()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbededDocsTextExtractors(Lorg/apache/poi/POIOLE2TextExtractor;)[Lorg/apache/poi/POITextExtractor;
    .locals 10

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/POIOLE2TextExtractor;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v5

    if-eqz v5, :cond_a

    instance-of v6, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    const/4 v7, 0x3

    if-eqz v6, :cond_1

    invoke-interface {v5}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-interface {v5}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "MBD"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v6, p0, Lorg/apache/poi/hwpf/extractor/WordExtractor;

    if-eqz v6, :cond_3

    :try_start_0
    const-string p0, "ObjectPool"

    invoke-interface {v5, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-interface {v5}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v5, Lorg/apache/poi/extractor/ExtractorFactory;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    new-array v6, v0, [Ljava/lang/Object;

    const-string v8, "Ignoring FileNotFoundException while extracting Word document"

    aput-object v8, v6, v2

    aput-object p0, v6, v1

    invoke-virtual {v5, v7, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    instance-of v5, p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtactor;

    if-eqz v5, :cond_6

    check-cast p0, Lorg/apache/poi/hsmf/extractor/OutlookTextExtactor;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtactor;->getMAPIMessage()Lorg/apache/poi/hsmf/MAPIMessage;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/MAPIMessage;->getAttachmentFiles()[Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    move-result-object p0

    array-length v5, p0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v8, p0, v6

    invoke-virtual {v8}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachData()Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachData()Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object v8

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachmentDirectory()Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachmentDirectory()Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/2addr v6, v1

    goto :goto_2

    :cond_6
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_7

    new-array p0, v2, [Lorg/apache/poi/POITextExtractor;

    return-object p0

    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/filesystem/Entry;

    check-cast v5, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-static {v5}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    :try_start_1
    invoke-static {v4}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Ljava/io/InputStream;)Lorg/apache/poi/POITextExtractor;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception p0

    goto :goto_8

    :catch_3
    move-exception v4

    goto :goto_9

    :goto_7
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_8
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_9
    sget-object v5, Lorg/apache/poi/extractor/ExtractorFactory;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    const-string v8, "Format not supported yet"

    aput-object v8, v6, v2

    aput-object v4, v6, v1

    invoke-virtual {v5, v7, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/POITextExtractor;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/POITextExtractor;

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The extractor didn\'t know which POIFS it came from!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEmbededDocsTextExtractors(Lorg/apache/poi/POIXMLTextExtractor;)[Lorg/apache/poi/POITextExtractor;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not yet supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPreferEventExtractor()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getPreferEventExtractor()Z

    move-result v0

    return v0
.end method

.method public static getThreadPrefersEventExtractors()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getThreadPrefersEventExtractors()Z

    move-result v0

    return v0
.end method

.method public static setAllThreadsPreferEventExtractors(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->setAllThreadsPreferEventExtractors(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static setThreadPrefersEventExtractors(Z)V
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->setThreadPrefersEventExtractors(Z)V

    return-void
.end method
