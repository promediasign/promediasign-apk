.class public Lorg/apache/ftpserver/command/impl/APPE;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/APPE;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/APPE;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 12

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v10, "APPE"

    const/4 v11, 0x0

    const/16 v9, 0x1f5

    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    invoke-static/range {v6 .. v11}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

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

    goto/16 :goto_8

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const-string p3, "PORT or PASV must be issued first"

    const/16 v0, 0x1f7

    invoke-direct {p2, v0, p3}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/APPE;->LOG:Lorg/slf4j/Logger;

    const-string v3, "File system threw exception"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_2

    const-string v4, "APPE.invalid"

    const/16 v3, 0x226

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v4, "APPE.invalid"

    const/16 v3, 0x226

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isWritable()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v4, "APPE.permission"

    const/16 v3, 0x226

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    goto :goto_0

    :cond_4
    const-string v6, "APPE"

    const/16 v5, 0x96

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getSize()J

    move-result-wide v3

    goto :goto_2

    :catchall_1
    move-exception p2

    goto/16 :goto_7

    :catch_1
    move-exception v1

    move-object v6, v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v6, v0

    goto :goto_5

    :cond_5
    const-wide/16 v3, 0x0

    :goto_2
    invoke-interface {v1, v3, v4}, Lorg/apache/ftpserver/ftplet/FtpFile;->createOutputStream(J)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/ftpserver/ftplet/DataConnection;->transferFromClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/OutputStream;)J

    move-result-wide v2

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_6
    iget-object v4, p0, Lorg/apache/ftpserver/command/impl/APPE;->LOG:Lorg/slf4j/Logger;

    const-string v5, "File uploaded {}"

    invoke-interface {v4, v5, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v4

    check-cast v4, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    invoke-interface {v4, p1, v1, v2, v3}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    const-string v4, "APPE"

    const/16 v3, 0xe2

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :goto_3
    :try_start_7
    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/APPE;->LOG:Lorg/slf4j/Logger;

    const-string v2, "IOException during file upload"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "APPE"

    const/16 v3, 0x227

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    :try_start_8
    invoke-static {v6}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception p2

    move-object v0, v6

    goto :goto_7

    :goto_5
    :try_start_9
    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/APPE;->LOG:Lorg/slf4j/Logger;

    const-string v2, "SocketException during file upload"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "APPE"

    const/16 v3, 0x1aa

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    :goto_6
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    return-void

    :goto_7
    :try_start_a
    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    throw p2

    :catch_3
    move-exception v0

    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/APPE;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Exception when getting data input stream"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "APPE"

    const/16 v3, 0x1a9

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :goto_8
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    throw p2
.end method
