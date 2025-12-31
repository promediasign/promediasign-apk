.class public Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private listFiles(Lorg/apache/ftpserver/ftplet/FileSystemView;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ftpserver/ftplet/FileSystemView;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/FtpFile;",
            ">;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, p2

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->listFiles()Ljava/util/List;

    move-result-object p2
    :try_end_2
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    :goto_0
    move-object p2, v0

    :goto_1
    return-object p2
.end method

.method private traverseFiles(Ljava/util/List;Lorg/apache/ftpserver/command/impl/listing/FileFilter;Lorg/apache/ftpserver/command/impl/listing/FileFormater;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/FtpFile;",
            ">;",
            "Lorg/apache/ftpserver/command/impl/listing/FileFilter;",
            "Lorg/apache/ftpserver/command/impl/listing/FileFormater;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->traverseFiles(Ljava/util/List;Lorg/apache/ftpserver/command/impl/listing/FileFilter;Lorg/apache/ftpserver/command/impl/listing/FileFormater;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->traverseFiles(Ljava/util/List;Lorg/apache/ftpserver/command/impl/listing/FileFilter;Lorg/apache/ftpserver/command/impl/listing/FileFormater;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private traverseFiles(Ljava/util/List;Lorg/apache/ftpserver/command/impl/listing/FileFilter;Lorg/apache/ftpserver/command/impl/listing/FileFormater;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/FtpFile;",
            ">;",
            "Lorg/apache/ftpserver/command/impl/listing/FileFilter;",
            "Lorg/apache/ftpserver/command/impl/listing/FileFormater;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/ftplet/FtpFile;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, v1}, Lorg/apache/ftpserver/command/impl/listing/FileFilter;->accept(Lorg/apache/ftpserver/ftplet/FtpFile;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v2

    if-ne v2, p4, :cond_0

    invoke-interface {p3, v1}, Lorg/apache/ftpserver/command/impl/listing/FileFormater;->format(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public listFiles(Lorg/apache/ftpserver/command/impl/listing/ListArgument;Lorg/apache/ftpserver/ftplet/FileSystemView;Lorg/apache/ftpserver/command/impl/listing/FileFormater;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->listFiles(Lorg/apache/ftpserver/ftplet/FileSystemView;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->hasOption(C)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/ftpserver/command/impl/listing/VisibleFileFilter;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/listing/VisibleFileFilter;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->getPattern()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;

    invoke-virtual {p1}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->getPattern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;-><init>(Ljava/lang/String;Lorg/apache/ftpserver/command/impl/listing/FileFilter;)V

    move-object v1, v2

    :cond_1
    invoke-direct {p0, p2, v1, p3}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->traverseFiles(Ljava/util/List;Lorg/apache/ftpserver/command/impl/listing/FileFilter;Lorg/apache/ftpserver/command/impl/listing/FileFormater;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
