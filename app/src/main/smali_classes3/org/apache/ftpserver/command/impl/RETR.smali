.class public Lorg/apache/ftpserver/command/impl/RETR;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/RETR;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 13

    move-object v1, p0

    move-object v8, p1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileOffset()J

    move-result-wide v9

    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v6, "RETR"

    const/4 v7, 0x0

    const/16 v5, 0x1f5

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Exception getting file object"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v11

    :goto_1
    if-nez v0, :cond_1

    const-string v6, "RETR.missing"

    const/16 v5, 0x226

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v6, "RETR.missing"

    const/16 v5, 0x226

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v6, "RETR.invalid"

    const/16 v5, 0x226

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isReadable()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v6, "RETR.permission"

    const/16 v5, 0x226

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    instance-of v3, v2, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    if-eqz v3, :cond_5

    check-cast v2, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    invoke-virtual {v2}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_5

    new-instance v0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const-string v2, "PORT or PASV must be issued first"

    const/16 v3, 0x1f7

    invoke-direct {v0, v3, v2}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v6, "RETR"

    const/4 v7, 0x0

    const/16 v5, 0x96

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, p1, v0, v9, v10}, Lorg/apache/ftpserver/command/impl/RETR;->openInputStream(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v3

    invoke-interface {v2, v3, v11}, Lorg/apache/ftpserver/ftplet/DataConnection;->transferToClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/InputStream;)J

    move-result-wide v2

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_6
    :goto_2
    iget-object v4, v1, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

    const-string v5, "File downloaded {}"

    invoke-interface {v4, v5, v12}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v4

    check-cast v4, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    if-eqz v4, :cond_7

    invoke-interface {v4, p1, v0, v2, v3}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    :try_start_5
    invoke-static {v11}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    const-string v6, "RETR"

    const/16 v5, 0xe2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_3
    :try_start_6
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

    const-string v3, "IOException during data transfer"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v6, "RETR"

    const/16 v5, 0x227

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    invoke-static {v11}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_8
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Socket exception during data transfer"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v6, "RETR"

    const/16 v5, 0x1aa

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :goto_6
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    return-void

    :goto_7
    :try_start_9
    invoke-static {v11}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    throw v0

    :catch_3
    move-exception v0

    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/RETR;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Exception getting the output data stream"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v6, "RETR"

    const/4 v7, 0x0

    const/16 v5, 0x1a9

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :goto_8
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    throw v0
.end method

.method public openInputStream(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)Ljava/io/InputStream;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataType()Lorg/apache/ftpserver/ftplet/DataType;

    move-result-object p1

    sget-object v0, Lorg/apache/ftpserver/ftplet/DataType;->ASCII:Lorg/apache/ftpserver/ftplet/DataType;

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/io/BufferedInputStream;

    const-wide/16 v0, 0x0

    invoke-interface {p2, v0, v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->createInputStream(J)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    cmp-long p2, v0, p3

    if-gez p2, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    const/16 v4, 0xa

    if-ne p2, v4, :cond_0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot skip"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p2, p3, p4}, Lorg/apache/ftpserver/ftplet/FtpFile;->createInputStream(J)Ljava/io/InputStream;

    move-result-object p1

    :cond_3
    return-object p1
.end method
