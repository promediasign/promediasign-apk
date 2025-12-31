.class public Lorg/apache/ftpserver/command/impl/RNTO;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/RNTO;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/RNTO;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 8

    :try_start_0
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v5, "RNTO"

    const/4 v6, 0x0

    const/16 v4, 0x1f5

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRenameFrom()Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v5, "RNTO"

    const/4 v6, 0x0

    const/16 v4, 0x1f7

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/RNTO;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Exception getting file object"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v5, "RNTO.invalid"

    const/4 v6, 0x0

    const/16 v4, 0x229

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    return-void

    :cond_2
    :try_start_4
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isWritable()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v5, "RNTO.permission"

    const/4 v6, 0x0

    const/16 v4, 0x229

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    return-void

    :cond_3
    :try_start_5
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v5, "RNTO.missing"

    const/4 v6, 0x0

    const/16 v4, 0x229

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    return-void

    :cond_4
    :try_start_6
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->move(Lorg/apache/ftpserver/ftplet/FtpFile;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v5, "RNTO"

    const/16 v4, 0xfa

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/RNTO;->LOG:Lorg/slf4j/Logger;

    const-string v2, "File rename from \"{}\" to \"{}\""

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v7, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v5, "RNTO"

    const/16 v4, 0x229

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    return-void

    :goto_2
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    throw v0
.end method
