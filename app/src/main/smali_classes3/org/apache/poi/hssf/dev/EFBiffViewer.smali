.class public Lorg/apache/poi/hssf/dev/EFBiffViewer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field file:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "--help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/hssf/dev/EFBiffViewer;

    invoke-direct {v1}, Lorg/apache/poi/hssf/dev/EFBiffViewer;-><init>()V

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Lorg/apache/poi/hssf/dev/EFBiffViewer;->setFile(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/dev/EFBiffViewer;->run()V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "EFBiffViewer"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "Outputs biffview of records based on HSSFEventFactory"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "usage: java org.apache.poi.hssf.dev.EBBiffViewer filename"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/hssf/dev/EFBiffViewer;->file:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;

    invoke-direct {v2}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;-><init>()V

    new-instance v3, Lorg/apache/poi/hssf/dev/EFBiffViewer$1;

    invoke-direct {v3, p0}, Lorg/apache/poi/hssf/dev/EFBiffViewer$1;-><init>(Lorg/apache/poi/hssf/dev/EFBiffViewer;)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->addListenerForAllRecords(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V

    new-instance v3, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;

    invoke-direct {v3}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;-><init>()V

    invoke-virtual {v3, v2, v1}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v1
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/dev/EFBiffViewer;->file:Ljava/lang/String;

    return-void
.end method
