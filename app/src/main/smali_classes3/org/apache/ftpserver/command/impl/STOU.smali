.class public Lorg/apache/ftpserver/command/impl/STOU;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/STOU;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 11

    const-string v0, "FILE: "

    const-string v1, "/ftp.dat"

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    instance-of v3, v2, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    invoke-virtual {v2}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const-string p3, "PORT or PASV must be issued first"

    const/16 v0, 0x1f7

    invoke-direct {p2, v0, p3}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    return-void

    :catchall_0
    move-exception p2

    goto/16 :goto_a

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :try_start_2
    const-string v2, "ftp.dat"

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {p0, p1, v1}, Lorg/apache/ftpserver/command/impl/STOU;->getUniqueFile(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_2
    :try_start_4
    iget-object v4, p0, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Exception getting file object"

    invoke-interface {v4, v5, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    :cond_3
    :goto_3
    if-nez v1, :cond_4

    const-string v8, "STOU"

    const/4 v9, 0x0

    const/16 v7, 0x226

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isWritable()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v4, "STOU.permission"

    const/16 v3, 0x226

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    goto :goto_0

    :cond_5
    new-instance v2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x96

    invoke-direct {v2, v4, v0}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v6, 0x0

    :try_start_6
    invoke-interface {v1, v6, v7}, Lorg/apache/ftpserver/ftplet/FtpFile;->createOutputStream(J)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Lorg/apache/ftpserver/ftplet/DataConnection;->transferFromClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/OutputStream;)J

    move-result-wide v6

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    :catchall_1
    move-exception p2

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v6, v3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v6, v3

    goto :goto_7

    :cond_6
    :goto_4
    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    const-string v2, "File uploaded {}"

    invoke-interface {v0, v2, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, v1, v6, v7}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_7
    :try_start_7
    invoke-static {v3}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    const-string v4, "STOU"

    const/16 v3, 0xe2

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :goto_5
    :try_start_8
    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    const-string v2, "IOException during data transfer"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "STOU"

    const/16 v3, 0x227

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_6
    :try_start_9
    invoke-static {v6}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    :catchall_2
    move-exception p2

    move-object v3, v6

    goto :goto_9

    :goto_7
    :try_start_a
    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Socket exception during data transfer"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "STOU"

    const/16 v3, 0x1aa

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_6

    :goto_8
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    return-void

    :goto_9
    :try_start_b
    invoke-static {v3}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    throw p2

    :catch_4
    move-exception v0

    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/STOU;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Exception getting the input data stream"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "STOU"

    const/16 v3, 0x1a9

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :goto_a
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    throw p2
.end method

.method public getUniqueFile(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object p2

    if-nez p2, :cond_0

    :cond_1
    return-object p2
.end method
