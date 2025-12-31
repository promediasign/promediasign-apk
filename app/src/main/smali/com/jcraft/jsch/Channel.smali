.class public abstract Lcom/jcraft/jsch/Channel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Channel$PassiveOutputStream;,
        Lcom/jcraft/jsch/Channel$PassiveInputStream;,
        Lcom/jcraft/jsch/Channel$MyPipedInputStream;
    }
.end annotation


# static fields
.field static index:I

.field private static pool:Ljava/util/Vector;


# instance fields
.field volatile close:Z

.field volatile connectTimeout:I

.field volatile connected:Z

.field volatile eof_local:Z

.field volatile eof_remote:Z

.field volatile exitstatus:I

.field id:I

.field io:Lcom/jcraft/jsch/IO;

.field volatile lmpsize:I

.field volatile lwsize:I

.field volatile lwsize_max:I

.field notifyme:I

.field volatile open_confirmation:Z

.field volatile recipient:I

.field volatile reply:I

.field volatile rmpsize:I

.field volatile rwsize:J

.field private session:Lcom/jcraft/jsch/Session;

.field thread:Ljava/lang/Thread;

.field protected type:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    const-string v1, "foo"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->type:[B

    const/high16 v1, 0x100000

    iput v1, p0, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    iget v1, p0, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    iput v1, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    const/16 v1, 0x4000

    iput v1, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/jcraft/jsch/Channel;->rwsize:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    iput-object v2, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->close:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->open_confirmation:Z

    iput v0, p0, Lcom/jcraft/jsch/Channel;->exitstatus:I

    iput v1, p0, Lcom/jcraft/jsch/Channel;->reply:I

    iput v1, p0, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    iput v1, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    sget-object v0, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/jcraft/jsch/Channel;->index:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/jcraft/jsch/Channel;->index:I

    iput v1, p0, Lcom/jcraft/jsch/Channel;->id:I

    sget-object v1, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static del(Lcom/jcraft/jsch/Channel;)V
    .locals 2

    sget-object v0, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static disconnect(Lcom/jcraft/jsch/Session;)V
    .locals 7

    .line 2
    sget-object v0, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jcraft/jsch/Channel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, v5, :cond_1

    :try_start_1
    sget-object v5, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/Channel;

    iget-object v6, v5, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, p0, :cond_0

    add-int/lit8 v6, v4, 0x1

    :try_start_2
    aput-object v5, v1, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move v4, v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object p0, v1, v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void

    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    .locals 4

    .line 1
    sget-object v0, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Channel;

    iget v3, v2, Lcom/jcraft/jsch/Channel;->id:I

    if-ne v3, p0, :cond_0

    iget-object v3, v2, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    if-ne v3, p1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 1

    .line 2
    const-string v0, "session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "shell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/jcraft/jsch/ChannelShell;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelShell;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "exec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lcom/jcraft/jsch/ChannelExec;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelExec;-><init>()V

    return-object p0

    :cond_2
    const-string v0, "x11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lcom/jcraft/jsch/ChannelX11;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelX11;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "auth-agent@openssh.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lcom/jcraft/jsch/ChannelAgentForwarding;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "direct-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    return-object p0

    :cond_5
    const-string v0, "forwarded-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "sftp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p0, Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;-><init>()V

    return-object p0

    :cond_7
    const-string v0, "subsystem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/jcraft/jsch/ChannelSubsystem;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSubsystem;-><init>()V

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addRemoteWindowSize(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/jcraft/jsch/Channel;->rwsize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->rwsize:J

    iget p1, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->close:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->close:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v3, 0x61

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public connect()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->connect(I)V

    return-void
.end method

.method public connect(I)V
    .locals 2

    .line 2
    iput p1, p0, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->sendChannelOpen()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jcraft/jsch/JSchException;

    throw p1

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    if-nez v0, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->del(Lcom/jcraft/jsch/Channel;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->del(Lcom/jcraft/jsch/Channel;)V

    return-void

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->del(Lcom/jcraft/jsch/Channel;)V

    throw v0
.end method

.method public eof()V
    .locals 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v3, 0x60

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public eof_remote()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->out_close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public genChannelOpenPacket()Lcom/jcraft/jsch/Packet;
    .locals 3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->type:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->id:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    return-object v1
.end method

.method public getData(Lcom/jcraft/jsch/Buffer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/Channel;->setRemoteWindowSize(J)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Channel;->setRemotePacketSize(I)V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5

    const v0, 0x8000

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    const-string v2, "max_input_buffer_size"

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const v1, 0x8000

    :goto_0
    new-instance v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-direct {v2, p0, v0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;II)V

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    new-instance v4, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v4, p0, v2, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;Z)V

    invoke-virtual {v1, v4, v3}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;Z)V

    return-object v2
.end method

.method public getRecipient()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    return v0
.end method

.method public getSession()Lcom/jcraft/jsch/Session;
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is not available"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public sendChannelOpen()V
    .locals 12

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->genChannelOpenPacket()Lcom/jcraft/jsch/Packet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v5, 0x7d0

    :goto_0
    monitor-enter p0

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    if-lez v5, :cond_3

    const/4 v6, 0x0

    if-lez v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v9, v1

    cmp-long v11, v9, v3

    if-lez v11, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    if-nez v8, :cond_2

    const-wide/16 v9, 0xa

    goto :goto_2

    :cond_2
    move-wide v9, v3

    :goto_2
    :try_start_1
    iput v7, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :try_start_2
    iput v6, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    goto :goto_3

    :catchall_1
    move-exception v0

    iput v6, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    throw v0

    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v0

    if-eq v0, v9, :cond_5

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->open_confirmation:Z

    if-eqz v0, :cond_4

    iput-boolean v7, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    return-void

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is not opened."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is not opened."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendOpenConfirmation()V
    .locals 3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->id:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public sendOpenFailure(I)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const-string p1, "open failed"

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    sget-object p1, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setExitStatus(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->exitstatus:I

    return-void
.end method

.method public setLocalPacketSize(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    return-void
.end method

.method public setLocalWindowSize(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    return-void
.end method

.method public setLocalWindowSizeMax(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    return-void
.end method

.method public declared-synchronized setRecipient(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    iget p1, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setRemotePacketSize(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    return-void
.end method

.method public declared-synchronized setRemoteWindowSize(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/jcraft/jsch/Channel;->rwsize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSession(Lcom/jcraft/jsch/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public write([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->put([BII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public write_ext([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->put_ext([BII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
