.class public Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;
.super Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;
.source "SourceFile"


# instance fields
.field private _directory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->_directory:Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->init()V

    return-void
.end method

.method private static collectXSDFiles([Ljava/io/File;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v3, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager$1;

    invoke-direct {v3}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager$1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->collectXSDFiles([Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static isInDirectory(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->isInDirectory(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static looksLikeURL(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ftp:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->printUsage()V

    :goto_1
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v3, "h"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v4, "help"

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "usage"

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "license"

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "version"

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v8, "sync"

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v9, "refresh"

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "recurse"

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-string v12, "dir"

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v13, Lorg/apache/xmlbeans/impl/tool/CommandLine;

    invoke-direct {v13, v0, v1, v11}, Lorg/apache/xmlbeans/impl/tool/CommandLine;-><init>([Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v13, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v13, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v13, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getBadOpts()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Unrecognized option: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v13, v6}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printLicense()V

    goto :goto_1

    :cond_4
    invoke-virtual {v13, v7}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printVersion()V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->args()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v13, v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v13, v10}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v13, v12}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    const-string v6, "."

    :cond_9
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;

    invoke-direct {v6, v7}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_6
    array-length v10, v0

    if-ge v9, v10, :cond_b

    aget-object v10, v0, v9

    invoke-static {v10}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->looksLikeURL(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    aget-object v10, v0, v9

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    new-instance v10, Ljava/io/File;

    aget-object v11, v0, v9

    invoke-direct {v10, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-static {v9, v7}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->isInDirectory(Ljava/io/File;Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_c

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuffer;

    const-string v12, "File not within directory: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_d
    new-array v0, v2, [Ljava/io/File;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->collectXSDFiles([Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    new-array v8, v2, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, [Ljava/lang/String;

    new-array v3, v2, [Ljava/io/File;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-static {v0, v7}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->relativeFilenames([Ljava/io/File;Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v15

    array-length v7, v0

    add-int/2addr v3, v7

    if-lez v3, :cond_e

    move-object v14, v6

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-virtual/range {v14 .. v19}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->process([Ljava/lang/String;[Ljava/lang/String;ZZZ)V

    goto :goto_9

    :cond_e
    invoke-virtual {v6, v1, v4, v5}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->processAll(ZZZ)V

    :goto_9
    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->writeCache()V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static printUsage()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Maintains \"xsdownload.xml\", an index of locally downloaded .xsd files"

    .line 4
    .line 5
    const-string v2, "usage: sdownload [-dir directory] [-refresh] [-recurse] [-sync] [url/file...]"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const-string v4, "URLs that are specified are downloaded if they aren\'t already cached."

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "In addition:"

    .line 15
    .line 16
    const-string v2, "  -dir specifies the directory for the xsdownload.xml file (default .)."

    .line 17
    .line 18
    const-string v3, "  -sync synchronizes the index to any local .xsd files in the tree."

    .line 19
    .line 20
    const-string v4, "  -recurse recursively downloads imported and included .xsd files."

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "  -refresh redownloads all indexed .xsd files."

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "If no files or URLs are specified, all indexed files are relevant."

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static relativeFilename(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->relativeFilename(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "."

    return-object p0
.end method

.method private static relativeFilenames([Ljava/io/File;Ljava/io/File;)[Ljava/lang/String;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->relativeFilename(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->_directory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->_directory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public getAllXSDFilenames()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->_directory:Ljava/io/File;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->collectXSDFiles([Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->_directory:Ljava/io/File;

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->relativeFilenames([Ljava/io/File;Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inputStreamForFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->_directory:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public warning(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public writeInputStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/SchemaResourceManager;->_directory:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/common/IOUtil;->copyCompletely(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
