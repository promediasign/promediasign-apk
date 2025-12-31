.class public Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/StscImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;,
        Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;
    }
.end annotation


# instance fields
.field private emptyNamespaceSchemas:Ljava/util/Set;

.field private failedDownloads:Ljava/util/Set;

.field private scanNeeded:Ljava/util/LinkedList;

.field private scannedAlready:Ljava/util/Map;

.field private schemaByDigestKey:Ljava/util/Map;

.field private schemaByNsLocPair:Ljava/util/Map;


# direct methods
.method public constructor <init>([Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByDigestKey:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scanNeeded:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scannedAlready:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->failedDownloads:Ljava/util/Set;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    aget-object v3, p1, v0

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter;->access$000(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, p1, v0

    invoke-direct {p0, v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addSuccessfulDownload(Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    aget-object v2, p1, v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    goto :goto_1

    :cond_0
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addEmptyNamespaceSchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addEmptyNamespaceSchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addFailedDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->failedDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scannedAlready:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scannedAlready:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scanNeeded:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scannedAlready:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    return-object p1
.end method

.method private addSuccessfulDownload(Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V
    .locals 4

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getMessageDigest()[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSchemaDigest([B)V

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;

    invoke-direct {v2, v0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;-><init>([B)V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByDigestKey:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByDigestKey:Ljava/util/Map;

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;

    invoke-direct {v3, v0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;-><init>([B)V

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSchemaDigest([B)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->getLocationURL()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private static copy(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 5

    .line 1
    const/16 v0, 0x400

    new-array v1, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0
.end method

.method private static copy(Ljava/io/Reader;)Ljava/io/CharArrayReader;
    .locals 5

    .line 2
    const/16 v0, 0x400

    new-array v1, v0, [C

    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Ljava/io/Reader;->read([CII)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/CharArrayReader;

    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    return-object p0
.end method

.method private static copySchemaSource(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/xmlbeans/impl/schema/StscState;)Ljava/io/InputStream;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->sourceNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/common/IOUtil;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copy(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object p0

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/common/IOUtil;->copyCompletely(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "IO Error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object p1
.end method

.method private static copySchemaSource(Ljava/lang/String;Ljava/io/Reader;Lorg/apache/xmlbeans/impl/schema/StscState;)Ljava/io/Reader;
    .locals 3

    .line 2
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->sourceNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/common/IOUtil;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copy(Ljava/io/Reader;)Ljava/io/CharArrayReader;

    move-result-object p0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/XmlEncodingSniffer;

    invoke-direct {v1, p0, p2}, Lorg/apache/xmlbeans/impl/common/XmlEncodingSniffer;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    new-instance p2, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/common/XmlEncodingSniffer;->getXmlEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/common/IOUtil;->copyCompletely(Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {p0}, Ljava/io/CharArrayReader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "IO Error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object p1
.end method

.method private static copySchemaSource(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscState;Z)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->sourceNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/common/IOUtil;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    if-eqz p2, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_0
    if-eqz v0, :cond_2

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/common/IOUtil;->copyCompletely(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_1
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "IO Error "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static downloadDocument(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
    .locals 5

    .line 1
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v1, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    invoke-virtual {v0, p2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-static {p2, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copySchemaSource(Ljava/lang/String;Ljava/io/Reader;Lorg/apache/xmlbeans/impl/schema/StscState;)Ljava/io/Reader;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    .line 33
    .line 34
    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentSourceName(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    .line 41
    .line 42
    .line 43
    invoke-interface {p0, p1, v3, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_0
    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-static {p2, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copySchemaSource(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/xmlbeans/impl/schema/StscState;)Ljava/io/InputStream;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    .line 63
    .line 64
    invoke-direct {v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentSourceName(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    .line 74
    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/XmlOptions;->setCharacterEncoding(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-interface {p0, p1, v3, v1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_2
    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-static {p2, v0, v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copySchemaSource(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscState;Z)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Lorg/apache/xmlbeans/XmlOptions;

    .line 96
    .line 97
    invoke-direct {p1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentSourceName(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    .line 107
    .line 108
    .line 109
    new-instance p2, Ljava/net/URL;

    .line 110
    .line 111
    invoke-direct {p2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p0, p2, v3, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/net/URL;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 120
    .line 121
    const-string v0, "EntityResolver unable to resolve "

    .line 122
    .line 123
    const-string v1, " (for namespace "

    .line 124
    .line 125
    const-string v2, ")"

    .line 126
    .line 127
    invoke-static {v0, p2, v1, p1, v2}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :catch_0
    move-exception p0

    .line 136
    new-instance p1, Lorg/apache/xmlbeans/XmlException;

    .line 137
    .line 138
    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :cond_4
    invoke-virtual {v0, p2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p2, v0, v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copySchemaSource(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscState;Z)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Lorg/apache/xmlbeans/XmlOptions;

    .line 149
    .line 150
    invoke-direct {p1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    .line 157
    .line 158
    .line 159
    new-instance v0, Ljava/net/URL;

    .line 160
    .line 161
    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p0, v0, v3, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/net/URL;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0
.end method

.method private downloadSchema(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;
    .locals 7

    .line 1
    const-string v0, "Loading referenced file "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter;->access$000(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter;->access$100(Ljava/lang/String;)Ljava/net/URI;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/16 v4, 0x38

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :try_start_0
    invoke-static {v3, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p3}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    .line 32
    :goto_0
    invoke-virtual {v2, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->isFileProcessed(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_2
    if-eqz p3, :cond_3

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    .line 44
    .line 45
    new-instance v5, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    .line 46
    .line 47
    invoke-direct {v5, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    .line 55
    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_3
    if-eqz p2, :cond_5

    .line 60
    .line 61
    const-string v3, ""

    .line 62
    .line 63
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_5

    .line 68
    .line 69
    invoke-virtual {v2, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->shouldDownloadURI(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_4

    .line 74
    .line 75
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    .line 76
    .line 77
    new-instance v5, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    .line 78
    .line 79
    invoke-direct {v5, p2, v1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    return-object v3

    .line 91
    :cond_4
    invoke-virtual {v2, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->linkerDefinesNamespace(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_5

    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_5
    if-eqz p3, :cond_6

    .line 99
    .line 100
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    .line 101
    .line 102
    new-instance v5, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    .line 103
    .line 104
    invoke-direct {v5, v1, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    .line 112
    .line 113
    if-eqz v3, :cond_6

    .line 114
    .line 115
    return-object v3

    .line 116
    :cond_6
    if-nez p3, :cond_7

    .line 117
    .line 118
    const-string p2, "Could not find resource - no valid location URL."

    .line 119
    .line 120
    invoke-virtual {v2, p2, v4, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 121
    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_7
    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->previouslyFailedToDownload(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_8

    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_8
    invoke-virtual {v2, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->shouldDownloadURI(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_9

    .line 136
    .line 137
    const-string p2, "Could not load resource \""

    .line 138
    .line 139
    const-string v0, "\" (network downloads disabled)."

    .line 140
    .line 141
    invoke-static {p2, p3, v0}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {v2, p2, v4, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addFailedDownload(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-object v1

    .line 152
    :cond_9
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getS4SLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v3, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->downloadDocument(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->findMatchByDigest(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v2, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->relativize(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    if-eqz v3, :cond_b

    .line 169
    .line 170
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {v2, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->relativize(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    if-eqz p2, :cond_a

    .line 183
    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    .line 191
    .line 192
    const-string v5, " is the same as "

    .line 193
    .line 194
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    .line 199
    .line 200
    const-string p2, " (ignoring the duplicate file)"

    .line 201
    .line 202
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    :goto_1
    invoke-virtual {v2, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->info(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :catch_0
    move-exception p2

    .line 214
    goto :goto_4

    .line 215
    :catch_1
    move-exception p2

    .line 216
    goto :goto_6

    .line 217
    :cond_a
    new-instance p2, Ljava/lang/StringBuffer;

    .line 218
    .line 219
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    .line 224
    .line 225
    const-string v0, " is the same as another schema"

    .line 226
    .line 227
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    goto :goto_1

    .line 235
    :cond_b
    new-instance v3, Lorg/apache/xmlbeans/XmlOptions;

    .line 236
    .line 237
    invoke-direct {v3}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getErrorListener()Ljava/util/Collection;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v3, v6}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    .line 245
    .line 246
    .line 247
    instance-of v6, p2, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    .line 248
    .line 249
    if-eqz v6, :cond_d

    .line 250
    .line 251
    invoke-interface {p2, v3}, Lorg/apache/xmlbeans/XmlObject;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-nez v3, :cond_c

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_c
    check-cast p2, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    .line 259
    .line 260
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    new-instance p2, Ljava/lang/StringBuffer;

    .line 265
    .line 266
    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    goto :goto_1

    .line 277
    :goto_2
    new-instance p2, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    .line 278
    .line 279
    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-direct {p2, v0, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-direct {p0, p2, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addSuccessfulDownload(Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V

    .line 291
    .line 292
    .line 293
    return-object v3

    .line 294
    :cond_d
    :goto_3
    const-string p2, "Referenced document is not a valid schema"

    .line 295
    .line 296
    invoke-virtual {v2, p2, v4, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    .line 298
    .line 299
    goto :goto_7

    .line 300
    :goto_4
    new-instance v0, Ljava/lang/StringBuffer;

    .line 301
    .line 302
    const-string v3, "Problem parsing referenced XML resource - "

    .line 303
    .line 304
    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    :goto_5
    invoke-virtual {v2, p2, v4, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :goto_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    goto :goto_5

    .line 327
    :catch_2
    const-string p2, "URL \""

    .line 328
    .line 329
    const-string v0, "\" is not well-formed"

    .line 330
    .line 331
    invoke-static {p2, p3, v0}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    goto :goto_5

    .line 336
    :goto_7
    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addFailedDownload(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-object v1

    .line 340
    :catch_3
    move-exception p2

    .line 341
    new-instance p3, Ljava/lang/StringBuffer;

    .line 342
    .line 343
    const-string v0, "Could not find resource - invalid location URL: "

    .line 344
    .line 345
    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    invoke-virtual {v2, p2, v4, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 360
    .line 361
    .line 362
    return-object v1
.end method

.method private static emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private fetchRemainingEmptyNamespaceSchemas()Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method private findMatchByDigest(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;
    .locals 2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getMessageDigest()[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByDigestKey:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;

    invoke-direct {v1, p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    return-object p1
.end method

.method private hasNextToScan()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scanNeeded:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private nextToScan()Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scanNeeded:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    return-object v0
.end method

.method private static nullableStringsMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private previouslyFailedToDownload(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->failedDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private usedEmptyNamespaceSchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public resolveImportsAndIncludes(Z)[Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->hasNextToScan()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->nextToScan()Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSourceName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v8, p1

    invoke-static {v6, v1, v8}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copySchemaSource(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscState;Z)V

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getImportArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;

    move-result-object v6

    const/4 v9, 0x0

    :goto_0
    array-length v10, v6

    const/4 v11, 0x4

    const-string v12, "\""

    if-ge v9, v10, :cond_3

    aget-object v10, v6, v9

    invoke-interface {v10}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;->getNamespace()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aget-object v14, v6, v9

    invoke-interface {v14}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;->getSchemaLocation()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v10, v13, v14}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->downloadSchema(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v10}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v6, v9

    invoke-interface {v14}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;->getNamespace()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->nullableStringsMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "Imported schema has a target namespace \""

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\" that does not match the specified \""

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v10, v6, v9

    invoke-interface {v10}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    aget-object v12, v6, v9

    invoke-virtual {v13, v10, v11, v12}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_2
    new-instance v11, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-direct {v11, v10, v7}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {v0, v11}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getIncludeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_4
    const/4 v10, 0x0

    :goto_2
    array-length v13, v6

    const-string v14, "\" that does not match the source namespace \""

    if-ge v10, v13, :cond_8

    aget-object v13, v6, v10

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;->getSchemaLocation()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v13, v7, v15}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->downloadSchema(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v13

    if-nez v13, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v14, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-direct {v14, v13, v7}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {v0, v14}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    move-result-object v13

    invoke-static {v5, v13}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->access$200(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)V

    goto :goto_3

    :cond_6
    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v7, "Included schema has a target namespace \""

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v7, v6, v10

    invoke-virtual {v15, v3, v11, v7}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_3

    :cond_7
    new-instance v3, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-direct {v3, v13, v9}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->access$200(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)V

    invoke-direct {v0, v13}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->usedEmptyNamespaceSchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V

    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getRedefineArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;

    move-result-object v3

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_9
    const/4 v7, 0x0

    :goto_4
    array-length v9, v3

    if-ge v7, v9, :cond_0

    aget-object v9, v3, v7

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;->getSchemaLocation()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    invoke-direct {v0, v9, v13, v10}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->downloadSchema(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v9

    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v15, 0x1

    if-eqz v10, :cond_b

    new-instance v4, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-direct {v4, v9, v13}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    move-result-object v4

    aget-object v9, v3, v7

    invoke-static {v5, v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->access$300(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;)V

    :goto_5
    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuffer;

    const-string v13, "Redefined schema has a target namespace \""

    invoke-direct {v15, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    aget-object v13, v3, v7

    invoke-virtual {v10, v9, v11, v13}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_6

    :cond_c
    new-instance v4, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-direct {v4, v9, v6}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    move-result-object v4

    aget-object v10, v3, v7

    invoke-static {v5, v4, v10}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->access$300(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;)V

    invoke-direct {v0, v9}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->usedEmptyNamespaceSchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V

    goto :goto_5

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    move/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->fetchRemainingEmptyNamespaceSchemas()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v4, :cond_e

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_e

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->access$400(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    return-object v1
.end method
