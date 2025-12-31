.class public Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/impl/ServerFtpStatistics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    }
.end annotation


# static fields
.field public static final LOGIN_NUMBER:Ljava/lang/String; = "login_number"


# instance fields
.field private bytesDownload:Ljava/util/concurrent/atomic/AtomicLong;

.field private bytesUpload:Ljava/util/concurrent/atomic/AtomicLong;

.field private currAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

.field private currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

.field private currLogins:Ljava/util/concurrent/atomic/AtomicInteger;

.field private deleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

.field private mkdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

.field private rmdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private startTime:Ljava/util/Date;

.field private totalAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

.field private totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

.field private totalFailedLogins:Ljava/util/concurrent/atomic/AtomicInteger;

.field private totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

.field private uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private userLoginTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->startTime:Ljava/util/Date;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->deleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->mkdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->rmdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalFailedLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesUpload:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesDownload:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    return-void
.end method

.method private notifyCloseConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyCloseConnection()V

    :cond_0
    return-void
.end method

.method private notifyDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyDelete()V

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lorg/apache/ftpserver/impl/FileObserver;->notifyDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V

    :cond_1
    return-void
.end method

.method private notifyDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyDownload()V

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/ftpserver/impl/FileObserver;->notifyDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V

    :cond_1
    return-void
.end method

.method private notifyLogin(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "anonymous"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v1}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyLogin(Z)V

    :cond_1
    return-void
.end method

.method private notifyLoginFail(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyLoginFail(Ljava/net/InetAddress;)V

    :cond_0
    return-void
.end method

.method private notifyLogout(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "anonymous"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v1}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyLogout(Z)V

    :cond_1
    return-void
.end method

.method private notifyMkdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyMkdir()V

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lorg/apache/ftpserver/impl/FileObserver;->notifyMkdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V

    :cond_1
    return-void
.end method

.method private notifyOpenConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyOpenConnection()V

    :cond_0
    return-void
.end method

.method private notifyRmdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyRmdir()V

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lorg/apache/ftpserver/impl/FileObserver;->notifyRmdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V

    :cond_1
    return-void
.end method

.method private notifyUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyUpload()V

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/ftpserver/impl/FileObserver;->notifyUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentAnonymousLoginNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getCurrentConnectionNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getCurrentLoginNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getCurrentUserLoginNumber(Lorg/apache/ftpserver/ftplet/User;)I
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object p1, p1, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentUserLoginNumber(Lorg/apache/ftpserver/ftplet/User;Ljava/net/InetAddress;)I
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->loginsFromInetAddress(Ljava/net/InetAddress;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->startTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalAnonymousLoginNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalConnectionNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalDeleteNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->deleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalDirectoryCreated()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->mkdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalDirectoryRemoved()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->rmdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalDownloadNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalDownloadSize()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesDownload:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalFailedLoginNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalFailedLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalLoginNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalUploadNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalUploadSize()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesUpload:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized resetStatisticsCounters()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->startTime:Ljava/util/Date;

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->deleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->mkdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->rmdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalFailedLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesUpload:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesDownload:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCloseConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyCloseConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->deleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesDownload:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFileObserver(Lorg/apache/ftpserver/impl/FileObserver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    return-void
.end method

.method public declared-synchronized setLogin(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0

    const-string v1, "anonymous"

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;

    invoke-direct {v2, v1}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;-><init>(Ljava/net/InetAddress;)V

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->loginsFromInetAddress(Ljava/net/InetAddress;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyLogin(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLoginFail(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalFailedLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyLoginFail(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLogout(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    const-string v1, "anonymous"

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->loginsFromInetAddress(Ljava/net/InetAddress;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyLogout(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMkdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->mkdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyMkdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setObserver(Lorg/apache/ftpserver/impl/StatisticsObserver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    return-void
.end method

.method public declared-synchronized setOpenConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyOpenConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRmdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->rmdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyRmdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesUpload:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
