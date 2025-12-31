.class public Lorg/apache/poi/poifs/dev/POIFSDump;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    instance-of v1, v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw p0

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    new-instance v2, Ljava/io/File;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not create directory "

    .line 1
    invoke-static {v2, p1}, Lch/qos/logback/core/joran/util/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-static {v1, v2}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping unsupported POIFS entry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static dump(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;ILjava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance p3, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-direct {p3, p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p3, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-void

    :goto_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10

    array-length v0, p0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Must specify at least one file to dump"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_a

    aget-object v5, p0, v2

    const-string v6, "-dumprops"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "-dump-props"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "-dump-properties"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v6, "-dumpmini"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "-dump-mini"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "-dump-ministream"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "-dump-mini-stream"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_4

    :cond_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Dumping "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v7, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v7, v6}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :try_start_1
    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_dump"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-interface {v6}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_1
    invoke-static {v6, v5}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/io/File;)V

    if-eqz v3, :cond_5

    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getHeaderBlock()Lorg/apache/poi/poifs/storage/HeaderBlock;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v6

    const-string v8, "properties"

    invoke-static {v7, v6, v8, v5}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;ILjava/lang/String;Ljava/io/File;)V

    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getPropertyTable()Lorg/apache/poi/poifs/property/NPropertyTable;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result v6

    const/4 v8, -0x2

    if-ne v6, v8, :cond_6

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "No Mini Stream in file"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v8, "mini-stream"

    invoke-static {v7, v6, v8, v5}, Lorg/apache/poi/poifs/dev/POIFSDump;->dump(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;ILjava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_2
    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    goto :goto_6

    :goto_3
    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    throw p0

    :cond_8
    :goto_4
    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v3, 0x1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method
