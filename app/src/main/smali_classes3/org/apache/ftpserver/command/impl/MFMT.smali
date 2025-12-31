.class public Lorg/apache/ftpserver/command/impl/MFMT;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/MFMT;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/MFMT;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 8

    const-string v1, "ModifyTime="

    const-string v2, "Exception getting the file object: "

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, " "

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-eq v3, v4, :cond_2

    :catch_0
    :cond_1
    :goto_0
    const-string v5, "MFMT.invalid"

    const/4 v6, 0x0

    const/16 v4, 0x1f5

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void

    :cond_2
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Lorg/apache/ftpserver/util/DateUtils;->parseFTPDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v6}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v5, p0, Lorg/apache/ftpserver/command/impl/MFMT;->LOG:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v5, "MFMT.invalid"

    const/4 v6, 0x0

    const/16 v4, 0x1f5

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void

    :cond_4
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lorg/apache/ftpserver/ftplet/FtpFile;->setLastModified(J)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v5, "MFMT"

    const/16 v4, 0x1c2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void

    :cond_5
    const-string v5, "MFMT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0xd5

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void

    :cond_6
    :goto_2
    const-string v5, "MFMT.filemissing"

    const/16 v4, 0x226

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    return-void
.end method
