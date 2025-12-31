.class public Lorg/apache/poi/dev/OOXMLPrettyPrint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private final documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/dev/OOXMLPrettyPrint;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const-wide v1, 0x3ee4f8b588e368f1L    # 1.0E-5

    invoke-static {v1, v2}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->setMinInflateRatio(D)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/dev/OOXMLPrettyPrint;->documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    return-void
.end method

.method private handle(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :try_start_0
    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".rels"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not pretty-printing non-XML file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/dev/OOXMLPrettyPrint;->documentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    const/4 v3, 0x2

    invoke-static {v1, p2, v3}, Lorg/apache/poi/dev/OOXMLPrettyPrint;->pretty(Lorg/w3c/dom/Document;Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :goto_3
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "While handling entry "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    throw p1

    :cond_2
    return-void
.end method

.method private static handleFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading zip-file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and writing pretty-printed XML to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Lorg/apache/poi/dev/OOXMLPrettyPrint;

    invoke-direct {p1}, Lorg/apache/poi/dev/OOXMLPrettyPrint;-><init>()V

    invoke-direct {p1, p0, v1}, Lorg/apache/poi/dev/OOXMLPrettyPrint;->handle(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    throw p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    array-length v0, p0

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Use:"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "\tjava OOXMLPrettyPrint [<filename> <outfilename>] ..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    new-instance v2, Ljava/io/File;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error, file not found!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_2
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p0, v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/apache/poi/dev/OOXMLPrettyPrint;->handleFile(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Done."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static pretty(Lorg/w3c/dom/Document;Ljava/io/OutputStream;I)V
    .locals 3

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string v1, "encoding"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_0

    const-string v1, "indent"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{http://xml.apache.org/xslt}indent-amount"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p2, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    new-instance p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {p1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, p1, p2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    return-void
.end method
