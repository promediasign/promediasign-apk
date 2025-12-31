.class public Lorg/apache/ftpserver/impl/IODataConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/DataConnection;


# static fields
.field private static final EOL:[B


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

.field private session:Lorg/apache/ftpserver/impl/FtpIoSession;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/impl/IODataConnection;->EOL:[B

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/impl/IODataConnection;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnection;->LOG:Lorg/slf4j/Logger;

    iput-object p2, p0, Lorg/apache/ftpserver/impl/IODataConnection;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    iput-object p1, p0, Lorg/apache/ftpserver/impl/IODataConnection;->socket:Ljava/net/Socket;

    iput-object p3, p0, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    return-void
.end method

.method private getDataInputStream()Ljava/io/InputStream;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v1}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->isZipMode()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot open data connection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    throw v0
.end method

.method private getDataOutputStream()Ljava/io/OutputStream;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v1}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->isZipMode()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot open data connection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    throw v0
.end method

.method private final transfer(Lorg/apache/ftpserver/ftplet/FtpSession;ZLjava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p5

    const-string v3, "Exception during data transfer, closing data connection socket"

    invoke-interface/range {p1 .. p1}, Lorg/apache/ftpserver/ftplet/FtpSession;->getDataType()Lorg/apache/ftpserver/ftplet/DataType;

    move-result-object v4

    sget-object v5, Lorg/apache/ftpserver/ftplet/DataType;->ASCII:Lorg/apache/ftpserver/ftplet/DataType;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/16 v5, 0x1000

    new-array v5, v5, [B

    const/4 v9, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lorg/apache/ftpserver/util/IoUtils;->getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Lorg/apache/ftpserver/util/IoUtils;->getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v12, v0, Lorg/apache/ftpserver/impl/DefaultFtpSession;

    if-eqz v12, :cond_1

    move-object v9, v0

    check-cast v9, Lorg/apache/ftpserver/impl/DefaultFtpSession;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v9, v11

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v9, v11

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v9, v11

    goto/16 :goto_a

    :cond_1
    :goto_1
    const-wide/16 v12, 0x0

    move-wide v14, v12

    const/4 v0, 0x0

    :goto_2
    if-lez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v7

    cmp-long v18, v16, v12

    if-nez v18, :cond_2

    const-wide/16 v16, 0x1

    :cond_2
    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v14

    div-long v18, v18, v16
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v12, v2

    cmp-long v16, v18, v12

    if-lez v16, :cond_3

    const-wide/16 v12, 0x32

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    const-wide/16 v12, 0x0

    goto :goto_2

    :catch_2
    nop

    goto :goto_4

    :cond_3
    :try_start_3
    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    :goto_4
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    :cond_4
    return-wide v14

    :cond_5
    if-eqz v9, :cond_7

    if-eqz p2, :cond_6

    :try_start_4
    invoke-virtual {v9, v12}, Lorg/apache/ftpserver/impl/DefaultFtpSession;->increaseWrittenDataBytes(I)V

    goto :goto_5

    :cond_6
    invoke-virtual {v9, v12}, Lorg/apache/ftpserver/impl/DefaultFtpSession;->increaseReadDataBytes(I)V

    :cond_7
    :goto_5
    if-eqz v4, :cond_d

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_c

    aget-byte v6, v5, v13

    const/16 v2, 0xa

    move/from16 v17, v4

    const/16 v4, 0xd

    if-eqz p2, :cond_9

    if-ne v6, v2, :cond_8

    if-eq v0, v4, :cond_8

    invoke-virtual {v11, v4}, Ljava/io/BufferedOutputStream;->write(I)V

    :cond_8
    invoke-virtual {v11, v6}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_7

    :cond_9
    if-ne v6, v2, :cond_a

    if-eq v0, v4, :cond_b

    sget-object v0, Lorg/apache/ftpserver/impl/IODataConnection;->EOL:[B

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7

    :cond_a
    if-ne v6, v4, :cond_8

    sget-object v0, Lorg/apache/ftpserver/impl/IODataConnection;->EOL:[B

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_b
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p5

    move v0, v6

    move/from16 v4, v17

    goto :goto_6

    :cond_c
    move/from16 v17, v4

    const/4 v2, 0x0

    goto :goto_8

    :cond_d
    move/from16 v17, v4

    const/4 v2, 0x0

    invoke-virtual {v11, v5, v2, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    :goto_8
    int-to-long v12, v12

    add-long/2addr v14, v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ftpserver/impl/IODataConnection;->notifyObserver()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v2, p5

    move/from16 v4, v17

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_a

    :goto_9
    :try_start_5
    iget-object v2, v1, Lorg/apache/ftpserver/impl/IODataConnection;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v2}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    throw v0

    :goto_a
    iget-object v2, v1, Lorg/apache/ftpserver/impl/IODataConnection;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lorg/apache/ftpserver/impl/IODataConnection;->factory:Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    invoke-interface {v2}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_b
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    :cond_e
    throw v0
.end method


# virtual methods
.method public notifyObserver()V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnection;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->updateLastAccessTime()V

    return-void
.end method

.method public final transferFromClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/OutputStream;)J
    .locals 7

    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;-><init>()V

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxUploadRate()I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnection;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    move-object v5, p2

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/apache/ftpserver/impl/IODataConnection;->transfer(Lorg/apache/ftpserver/ftplet/FtpSession;ZLjava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    return-wide p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    throw p1
.end method

.method public final transferToClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/InputStream;)J
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;-><init>()V

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxDownloadRate()I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnection;->getDataOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/apache/ftpserver/impl/IODataConnection;->transfer(Lorg/apache/ftpserver/ftplet/FtpSession;ZLjava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    return-wide p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    throw p1
.end method

.method public final transferToClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/lang/String;)V
    .locals 4

    .line 2
    const-string v0, "UTF-8"

    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnection;->getDataOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    instance-of v1, p1, Lorg/apache/ftpserver/impl/DefaultFtpSession;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/ftpserver/impl/DefaultFtpSession;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/DefaultFtpSession;->increaseWrittenDataBytes(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    invoke-static {v3}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/Writer;)V

    return-void

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    :cond_1
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/Writer;)V

    throw p1
.end method
