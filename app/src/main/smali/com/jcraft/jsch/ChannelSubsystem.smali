.class public Lcom/jcraft/jsch/ChannelSubsystem;
.super Lcom/jcraft/jsch/ChannelSession;
.source "SourceFile"


# instance fields
.field pty:Z

.field subsystem:Ljava/lang/String;

.field want_reply:Z

.field xforwading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->xforwading:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->pty:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->want_reply:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->subsystem:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->run()V

    return-void
.end method

.method public bridge synthetic setAgentForwarding(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setAgentForwarding(Z)V

    return-void
.end method

.method public setPty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->pty:Z

    return-void
.end method

.method public start()V
    .locals 4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    :try_start_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->xforwading:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestX11;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->pty:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestPtyReq;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_1
    new-instance v1, Lcom/jcraft/jsch/RequestSubsystem;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestSubsystem;-><init>()V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSubsystem;->subsystem:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->want_reply:Z

    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/jcraft/jsch/RequestSubsystem;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    iget-object v1, v1, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subsystem for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void

    :goto_1
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-nez v1, :cond_4

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "ChannelSubsystem"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0
.end method
