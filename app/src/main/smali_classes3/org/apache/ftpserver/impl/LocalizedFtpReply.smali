.class public Lorg/apache/ftpserver/impl/LocalizedFtpReply;
.super Lorg/apache/ftpserver/ftplet/DefaultFtpReply;
.source "SourceFile"


# static fields
.field public static final CLIENT_ACCESS_TIME:Ljava/lang/String; = "client.access.time"

.field public static final CLIENT_CON_TIME:Ljava/lang/String; = "client.con.time"

.field public static final CLIENT_DIR:Ljava/lang/String; = "client.dir"

.field public static final CLIENT_HOME:Ljava/lang/String; = "client.home"

.field public static final CLIENT_IP:Ljava/lang/String; = "client.ip"

.field public static final CLIENT_LOGIN_NAME:Ljava/lang/String; = "client.login.name"

.field public static final CLIENT_LOGIN_TIME:Ljava/lang/String; = "client.login.time"

.field public static final OUTPUT_CODE:Ljava/lang/String; = "output.code"

.field public static final OUTPUT_MSG:Ljava/lang/String; = "output.msg"

.field public static final REQUEST_ARG:Ljava/lang/String; = "request.arg"

.field public static final REQUEST_CMD:Ljava/lang/String; = "request.cmd"

.field public static final REQUEST_LINE:Ljava/lang/String; = "request.line"

.field public static final SERVER_IP:Ljava/lang/String; = "server.ip"

.field public static final SERVER_PORT:Ljava/lang/String; = "server.port"

.field public static final STAT_CON_CURR:Ljava/lang/String; = "stat.con.curr"

.field public static final STAT_CON_TOTAL:Ljava/lang/String; = "stat.con.total"

.field public static final STAT_DIR_CREATE_COUNT:Ljava/lang/String; = "stat.dir.create.count"

.field public static final STAT_DIR_DELETE_COUNT:Ljava/lang/String; = "stat.dir.delete.count"

.field public static final STAT_FILE_DELETE_COUNT:Ljava/lang/String; = "stat.file.delete.count"

.field public static final STAT_FILE_DOWNLOAD_BYTES:Ljava/lang/String; = "stat.file.download.bytes"

.field public static final STAT_FILE_DOWNLOAD_COUNT:Ljava/lang/String; = "stat.file.download.count"

.field public static final STAT_FILE_UPLOAD_BYTES:Ljava/lang/String; = "stat.file.upload.bytes"

.field public static final STAT_FILE_UPLOAD_COUNT:Ljava/lang/String; = "stat.file.upload.count"

.field public static final STAT_LOGIN_ANON_CURR:Ljava/lang/String; = "stat.login.anon.curr"

.field public static final STAT_LOGIN_ANON_TOTAL:Ljava/lang/String; = "stat.login.anon.total"

.field public static final STAT_LOGIN_CURR:Ljava/lang/String; = "stat.login.curr"

.field public static final STAT_LOGIN_TOTAL:Ljava/lang/String; = "stat.login.total"

.field public static final STAT_START_TIME:Ljava/lang/String; = "stat.start.time"


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private static getClientVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "client.ip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    instance-of p1, p1, Ljava/net/InetSocketAddress;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p0

    check-cast p0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_0
    const-string v0, "client.con.time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getCreationTime()J

    move-result-wide p0

    :goto_0
    invoke-static {p0, p1}, Lorg/apache/ftpserver/util/DateUtils;->getISO8601Date(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    const-string v0, "client.login.name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string v0, "client.login.time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLoginTime()Ljava/util/Date;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    goto :goto_0

    :cond_3
    const-string v0, "client.access.time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string v0, "client.home"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    const-string v0, "client.dir"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object p0

    if-eqz p0, :cond_6

    :try_start_0
    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getWorkingDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, ""

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private static getOutputVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "output.code"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p0, "output.msg"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private static getRequestVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "request.line"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getRequestLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "request.cmd"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getCommand()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "request.arg"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getServerVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object p0

    instance-of v0, p0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Ljava/net/InetSocketAddress;

    const-string v0, "server.ip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "server.port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static getStatisticalConnectionVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object p0

    const-string p1, "stat.con.total"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalConnectionNumber()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p1, "stat.con.curr"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentConnectionNumber()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static getStatisticalDirectoryVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object p0

    const-string p1, "stat.dir.create.count"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDirectoryCreated()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p1, "stat.dir.delete.count"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDirectoryRemoved()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static getStatisticalFileVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object p0

    const-string p1, "stat.file.upload.count"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalUploadNumber()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_0
    const-string p1, "stat.file.upload.bytes"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalUploadSize()J

    move-result-wide p0

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    const-string p1, "stat.file.download.count"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDownloadNumber()I

    move-result p0

    goto :goto_0

    :cond_2
    const-string p1, "stat.file.download.bytes"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDownloadSize()J

    move-result-wide p0

    goto :goto_1

    :cond_3
    const-string p1, "stat.file.delete.count"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDeleteNumber()I

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private static getStatisticalLoginVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object p0

    const-string p1, "stat.login.total"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalLoginNumber()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p1, "stat.login.curr"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentLoginNumber()I

    move-result p0

    goto :goto_0

    :cond_1
    const-string p1, "stat.login.anon.total"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalAnonymousLoginNumber()I

    move-result p0

    goto :goto_0

    :cond_2
    const-string p1, "stat.login.anon.curr"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentAnonymousLoginNumber()I

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static getStatisticalVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    const-string v1, "stat.start.time"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getStartTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/ftpserver/util/DateUtils;->getISO8601Date(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "stat.con"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->getStatisticalConnectionVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "stat.login."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->getStatisticalLoginVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "stat.file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1, p2}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->getStatisticalFileVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string v0, "stat.dir."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p1, p2}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->getStatisticalDirectoryVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "output."

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p3, p4, p5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->getOutputVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p3, "server."

    invoke-virtual {p5, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p0, p5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->getServerVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p3, "request."

    invoke-virtual {p5, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p0, p1, p5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->getRequestVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p1, "stat."

    invoke-virtual {p5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0, p2, p5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->getStatisticalVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p1, "client."

    invoke-virtual {p5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0, p5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->getClientVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_5

    const-string p0, ""

    :cond_5
    return-object p0
.end method

.method private static replaceVariables(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    move-object/from16 v0, p5

    const/16 v1, 0x7b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-object v0

    :cond_0
    const/16 v5, 0x7d

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-eq v6, v4, :cond_5

    if-le v3, v6, :cond_1

    goto :goto_3

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v8 .. v13}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->getVariableValue(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v4, :cond_2

    if-le v3, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v2

    goto :goto_0

    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_3
    return-object v0
.end method

.method public static translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translateMessage(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    invoke-direct {p1, p3, p0}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method private static translateMessage(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-interface {p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getMessageResource()Lorg/apache/ftpserver/message/MessageResource;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4, v1}, Lorg/apache/ftpserver/message/MessageResource;->getMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_1

    const-string p4, ""

    :cond_1
    move-object v5, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->replaceVariables(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
