.class public Lorg/apache/ftpserver/command/impl/NLST;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# static fields
.field private static final LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

.field private static final NLST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/command/impl/NLST;->NLST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;

    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/command/impl/NLST;->LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/NLST;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/NLST;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/NLST;->directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 9

    const-string v0, "Illegal listing syntax: "

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_0

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

    goto/16 :goto_8

    :cond_0
    :try_start_1
    const-string v5, "NLST"

    const/4 v6, 0x0

    const/16 v4, 0x96

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->parse(Ljava/lang/String;)Lorg/apache/ftpserver/command/impl/listing/ListArgument;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->hasOption(C)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/apache/ftpserver/command/impl/NLST;->LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_1
    sget-object v3, Lorg/apache/ftpserver/command/impl/NLST;->NLST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/NLSTFileFormater;

    :goto_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ftpserver/command/impl/NLST;->directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v6

    invoke-virtual {v5, v2, v6, v3}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->listFiles(Lorg/apache/ftpserver/command/impl/listing/ListArgument;Lorg/apache/ftpserver/ftplet/FileSystemView;Lorg/apache/ftpserver/command/impl/listing/FileFormater;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lorg/apache/ftpserver/ftplet/DataConnection;->transferToClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_4
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/NLST;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v7, "LIST"

    const/4 v8, 0x0

    const/16 v6, 0x1f5

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    :goto_3
    const-string v5, "NLST"

    const/4 v6, 0x0

    const/16 v4, 0xe2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    :goto_4
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_7

    :goto_5
    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/NLST;->LOG:Lorg/slf4j/Logger;

    const-string v2, "IOException during data transfer"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v7, "NLST"

    const/4 v8, 0x0

    const/16 v6, 0x227

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    goto :goto_4

    :goto_6
    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/NLST;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Socket exception during data transfer"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v7, "NLST"

    const/4 v8, 0x0

    const/16 v6, 0x1aa

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :goto_7
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    return-void

    :catch_3
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/NLST;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Exception getting the output data stream"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v7, "NLST"

    const/4 v8, 0x0

    const/16 v6, 0x1a9

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :goto_8
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V

    throw p2
.end method
