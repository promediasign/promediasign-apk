.class public Lorg/apache/ftpserver/command/impl/DELE;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/DELE;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/DELE;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 12

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v10, "DELE"

    const/4 v11, 0x0

    const/16 v9, 0x1f5

    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    invoke-static/range {v6 .. v11}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v5}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/DELE;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Could not get file "

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    const/16 v3, 0x226

    const-string v4, "DELE.invalid"

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    :goto_2
    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v3, 0x226

    const-string v4, "DELE.invalid"

    :goto_3
    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move-object v5, v7

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v3, 0x1c2

    const-string v4, "DELE.permission"

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->delete()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0xfa

    const-string v5, "DELE"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/DELE;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File delete : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object p2

    check-cast p2, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    invoke-interface {p2, p1, v0}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V

    goto :goto_4

    :cond_4
    const/16 v3, 0x1c2

    const-string v4, "DELE"

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    :goto_4
    return-void
.end method
