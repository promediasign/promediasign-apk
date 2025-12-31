.class public Lorg/apache/ftpserver/command/impl/STAT;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# static fields
.field private static final LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;


# instance fields
.field private directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/command/impl/STAT;->LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/STAT;->directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 11

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->parse(Ljava/lang/String;)Lorg/apache/ftpserver/command/impl/listing/ListArgument;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v7, "LIST"

    const/4 v8, 0x0

    const/16 v6, 0x1c2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/STAT;->directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v3

    sget-object v4, Lorg/apache/ftpserver/command/impl/STAT;->LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    invoke-virtual {v2, v0, v3, v4}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->listFiles(Lorg/apache/ftpserver/command/impl/listing/ListArgument;Lorg/apache/ftpserver/ftplet/FileSystemView;Lorg/apache/ftpserver/command/impl/listing/FileFormater;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd4

    const/16 v8, 0xd4

    goto :goto_0

    :cond_1
    const/16 v0, 0xd5

    const/16 v8, 0xd5

    :goto_0
    const-string v9, "STAT"

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v5, "STAT"

    const/4 v6, 0x0

    const/16 v4, 0x1c2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string v4, "STAT"

    const/4 v5, 0x0

    const/16 v3, 0xd3

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    :goto_2
    return-void
.end method
