.class public Lcom/jcraft/jsch/Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Session$GlobalRequestReply;,
        Lcom/jcraft/jsch/Session$Forwarding;
    }
.end annotation


# static fields
.field private static final keepalivemsg:[B

.field private static final nomoresessions:[B

.field static random:Lcom/jcraft/jsch/Random;


# instance fields
.field private Ec2s:[B

.field private Es2c:[B

.field private IVc2s:[B

.field private IVs2c:[B

.field private I_C:[B

.field private I_S:[B

.field private MACc2s:[B

.field private MACs2c:[B

.field private V_C:[B

.field private V_S:[B

.field agent_forwarding:Z

.field auth_failures:I

.field buf:Lcom/jcraft/jsch/Buffer;

.field private c2scipher:Lcom/jcraft/jsch/Cipher;

.field private c2scipher_size:I

.field private c2smac:Lcom/jcraft/jsch/MAC;

.field compress_len:[I

.field private config:Ljava/util/Hashtable;

.field private connectThread:Ljava/lang/Thread;

.field protected daemon_thread:Z

.field private deflater:Lcom/jcraft/jsch/Compression;

.field private grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

.field guess:[Ljava/lang/String;

.field host:Ljava/lang/String;

.field private hostKeyAlias:Ljava/lang/String;

.field private hostkey:Lcom/jcraft/jsch/HostKey;

.field private hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

.field private identityRepository:Lcom/jcraft/jsch/IdentityRepository;

.field in:Ljava/io/InputStream;

.field private volatile in_kex:Z

.field private volatile in_prompt:Z

.field private inflater:Lcom/jcraft/jsch/Compression;

.field private io:Lcom/jcraft/jsch/IO;

.field private isAuthed:Z

.field private volatile isConnected:Z

.field jsch:Lcom/jcraft/jsch/JSch;

.field private kex_start_time:J

.field private lock:Ljava/lang/Object;

.field max_auth_tries:I

.field org_host:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field packet:Lcom/jcraft/jsch/Packet;

.field password:[B

.field port:I

.field private proxy:Lcom/jcraft/jsch/Proxy;

.field private s2ccipher:Lcom/jcraft/jsch/Cipher;

.field private s2ccipher_size:I

.field private s2cmac:Lcom/jcraft/jsch/MAC;

.field private s2cmac_result1:[B

.field private s2cmac_result2:[B

.field private seqi:I

.field private seqo:I

.field private serverAliveCountMax:I

.field private serverAliveInterval:I

.field private session_id:[B

.field private socket:Ljava/net/Socket;

.field socket_factory:Lcom/jcraft/jsch/SocketFactory;

.field thread:Ljava/lang/Runnable;

.field private timeout:I

.field uncompress_len:[I

.field private userinfo:Lcom/jcraft/jsch/UserInfo;

.field username:Ljava/lang/String;

.field x11_forwarding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "keepalive@jcraft.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->keepalivemsg:[B

    const-string v0, "no-more-sessions@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->nomoresessions:[B

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSH-2.0-JSCH-0.1.54"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Session;->seqi:I

    iput v0, p0, Lcom/jcraft/jsch/Session;->seqo:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    iput v0, p0, Lcom/jcraft/jsch/Session;->timeout:I

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->x11_forwarding:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->agent_forwarding:Z

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    iput v0, p0, Lcom/jcraft/jsch/Session;->serverAliveInterval:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    const/4 v3, 0x6

    iput v3, p0, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    iput v0, p0, Lcom/jcraft/jsch/Session;->auth_failures:I

    const-string v3, "127.0.0.1"

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    const/16 v3, 0x16

    iput v3, p0, Lcom/jcraft/jsch/Session;->port:I

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->password:[B

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->in_prompt:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    const/16 v0, 0x8

    iput v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    iput v0, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    new-instance v0, Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$1;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    iput-object p2, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    iput p4, p0, Lcom/jcraft/jsch/Session;->port:I

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->applyConfig()V

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p1

    const-string p2, "user.name"

    invoke-virtual {p1, p2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "username is not given."

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private _setPortForwardingR(Ljava/lang/String;I)I
    .locals 7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v3, p2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setPort(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v4, 0x50

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const-string v4, "tcpip-forward"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getReply()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const-wide/16 v5, 0x3e8

    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    :try_start_4
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getReply()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    if-ne p1, v4, :cond_1

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getPort()I

    move-result p1

    monitor-exit v0

    return p1

    :cond_1
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remote port forwarding failed for listen port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    iget-object p2, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p2, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private _write(Lcom/jcraft/jsch/Packet;)V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->encode(Lcom/jcraft/jsch/Packet;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/IO;->put(Lcom/jcraft/jsch/Packet;)V

    iget p1, p0, Lcom/jcraft/jsch/Session;->seqo:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jcraft/jsch/Session;->seqo:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private applyConfig()V
    .locals 12

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    :cond_1
    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getHostname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    :cond_2
    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iput v2, p0, Lcom/jcraft/jsch/Session;->port:I

    :cond_3
    const-string v2, "kex"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "server_host_key"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "cipher.c2s"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "cipher.s2c"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "mac.c2s"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "mac.s2c"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression.c2s"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression.s2c"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression_level"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "StrictHostKeyChecking"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "HashKnownHosts"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "PreferredAuthentications"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "MaxAuthTries"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v3, "ClearAllForwardings"

    invoke-direct {p0, v1, v3}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v4, "HostKeyAlias"

    invoke-interface {v1, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->setHostKeyAlias(Ljava/lang/String;)V

    :cond_4
    const-string v4, "UserKnownHostsFile"

    invoke-interface {v1, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v5, Lcom/jcraft/jsch/KnownHosts;

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-direct {v5, v6}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/KnownHosts;->setKnownHosts(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->setHostKeyRepository(Lcom/jcraft/jsch/HostKeyRepository;)V

    :cond_5
    const-string v4, "IdentityFile"

    invoke-interface {v1, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    const-string v6, ""

    invoke-interface {v0, v6}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    new-array v0, v4, [Ljava/lang/String;

    :cond_7
    array-length v6, v5

    array-length v7, v0

    sub-int/2addr v6, v7

    if-lez v6, :cond_c

    new-instance v6, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v7}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    const/4 v7, 0x0

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_b

    aget-object v8, v5, v7

    const/4 v9, 0x0

    :goto_2
    array-length v10, v0

    const/4 v11, 0x0

    if-ge v9, v10, :cond_9

    aget-object v10, v0, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    move-object v8, v11

    :cond_9
    if-nez v8, :cond_a

    goto :goto_3

    :cond_a
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-static {v8, v11, v9}, Lcom/jcraft/jsch/IdentityFile;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->add(Lcom/jcraft/jsch/Identity;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V

    :cond_c
    const-string v0, "ServerAliveInterval"

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->setServerAliveInterval(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    :cond_d
    :goto_4
    const-string v0, "ConnectTimeout"

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->setTimeout(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    nop

    :cond_e
    :goto_5
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v2, v0}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-interface {v1, v3}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v3, v0}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private applyConfigChannel(Lcom/jcraft/jsch/ChannelSession;)V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const-string v1, "ForwardAgent"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/ChannelSession;->setAgentForwarding(Z)V

    :cond_1
    const-string v1, "RequestTTY"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/ChannelSession;->setPty(Z)V

    :cond_2
    return-void
.end method

.method public static checkCipher(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jcraft/jsch/Cipher;

    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {p0, v0, v1, v2}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private checkCiphers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v3, "CheckCiphers: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    const-string v1, "cipher.c2s"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cipher.s2c"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const-string v5, ","

    invoke-static {p1, v5}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_4

    aget-object v7, p1, v6

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Session;->checkCipher(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    if-ge v5, p1, :cond_6

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0
.end method

.method private checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkHost(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "StrictHostKeyChecking"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object/from16 v3, p1

    .line 17
    .line 18
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/jcraft/jsch/KeyExchange;->getHostKey()[B

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual/range {p3 .. p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual/range {p3 .. p3}, Lcom/jcraft/jsch/KeyExchange;->getFingerPrint()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    .line 31
    .line 32
    if-nez v7, :cond_1

    .line 33
    .line 34
    const/16 v7, 0x16

    .line 35
    .line 36
    if-eq v0, v7, :cond_1

    .line 37
    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v8, "["

    .line 41
    .line 42
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, "]:"

    .line 49
    .line 50
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    const-string v0, "HashKnownHosts"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v8, "yes"

    .line 71
    .line 72
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    instance-of v0, v7, Lcom/jcraft/jsch/KnownHosts;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    move-object v0, v7

    .line 83
    check-cast v0, Lcom/jcraft/jsch/KnownHosts;

    .line 84
    .line 85
    invoke-virtual {v0, v3, v4}, Lcom/jcraft/jsch/KnownHosts;->createHashedHostKey(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :goto_1
    iput-object v0, v1, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    new-instance v0, Lcom/jcraft/jsch/HostKey;

    .line 93
    .line 94
    invoke-direct {v0, v3, v4}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;[B)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :goto_2
    monitor-enter v7

    .line 99
    :try_start_0
    invoke-interface {v7, v3, v4}, Lcom/jcraft/jsch/HostKeyRepository;->check(Ljava/lang/String;[B)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 104
    const-string v8, "ask"

    .line 105
    .line 106
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    const/4 v9, 0x2

    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v11, 0x1

    .line 113
    if-nez v8, :cond_3

    .line 114
    .line 115
    const-string v8, "yes"

    .line 116
    .line 117
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_7

    .line 122
    .line 123
    :cond_3
    if-ne v0, v9, :cond_7

    .line 124
    .line 125
    monitor-enter v7

    .line 126
    :try_start_1
    invoke-interface {v7}, Lcom/jcraft/jsch/HostKeyRepository;->getKnownHostsRepositoryID()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    if-nez v8, :cond_4

    .line 132
    .line 133
    const-string v8, "known_hosts"

    .line 134
    .line 135
    :cond_4
    iget-object v12, v1, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 136
    .line 137
    if-eqz v12, :cond_6

    .line 138
    .line 139
    const-string v12, "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the "

    .line 140
    .line 141
    const-string v13, " host key has just been changed.\nThe fingerprint for the "

    .line 142
    .line 143
    const-string v14, " key sent by the remote host "

    .line 144
    .line 145
    invoke-static {v12, v5, v13, v5, v14}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    const-string v13, " is\n"

    .line 150
    .line 151
    const-string v14, ".\nPlease contact your system administrator.\nAdd correct host key in "

    .line 152
    .line 153
    invoke-static {v12, v3, v13, v6, v14}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v13, " to get rid of this message."

    .line 157
    .line 158
    invoke-static {v8, v13, v12}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    const-string v12, "ask"

    .line 163
    .line 164
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-eqz v12, :cond_5

    .line 169
    .line 170
    iget-object v12, v1, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 171
    .line 172
    new-instance v13, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v8, "\nDo you want to delete the old key and insert the new key?"

    .line 181
    .line 182
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-interface {v12, v8}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-eqz v8, :cond_6

    .line 194
    .line 195
    monitor-enter v7

    .line 196
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyAlgorithName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    const/4 v12, 0x0

    .line 201
    invoke-interface {v7, v3, v8, v12}, Lcom/jcraft/jsch/HostKeyRepository;->remove(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 202
    .line 203
    .line 204
    monitor-exit v7

    .line 205
    const/4 v8, 0x1

    .line 206
    goto :goto_3

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    throw v0

    .line 210
    :cond_5
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 211
    .line 212
    invoke-interface {v0, v8}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 216
    .line 217
    const-string v2, "HostKey has been changed: "

    .line 218
    .line 219
    invoke-static {v2, v3}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :catchall_1
    move-exception v0

    .line 228
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 229
    throw v0

    .line 230
    :cond_7
    const/4 v8, 0x0

    .line 231
    :goto_3
    const-string v12, "ask"

    .line 232
    .line 233
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    if-nez v12, :cond_8

    .line 238
    .line 239
    const-string v12, "yes"

    .line 240
    .line 241
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v12

    .line 245
    if-eqz v12, :cond_d

    .line 246
    .line 247
    :cond_8
    if-eqz v0, :cond_d

    .line 248
    .line 249
    if-nez v8, :cond_d

    .line 250
    .line 251
    const-string v8, "yes"

    .line 252
    .line 253
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    if-nez v8, :cond_c

    .line 258
    .line 259
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 260
    .line 261
    if-eqz v8, :cond_a

    .line 262
    .line 263
    new-instance v12, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v13, "The authenticity of host \'"

    .line 266
    .line 267
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v13, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 271
    .line 272
    const-string v14, "\' can\'t be established.\n"

    .line 273
    .line 274
    const-string v15, " key fingerprint is "

    .line 275
    .line 276
    invoke-static {v12, v13, v14, v5, v15}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v6, ".\nAre you sure you want to continue connecting?"

    .line 283
    .line 284
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-interface {v8, v6}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-eqz v6, :cond_9

    .line 296
    .line 297
    const/4 v8, 0x1

    .line 298
    goto :goto_4

    .line 299
    :cond_9
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 300
    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string v3, "reject HostKey: "

    .line 304
    .line 305
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v0

    .line 321
    :cond_a
    if-ne v0, v11, :cond_b

    .line 322
    .line 323
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 324
    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v3, "UnknownHostKey: "

    .line 328
    .line 329
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 333
    .line 334
    const-string v4, ". "

    .line 335
    .line 336
    const-string v7, " key fingerprint is "

    .line 337
    .line 338
    invoke-static {v2, v3, v4, v5, v7}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v0

    .line 352
    :cond_b
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 353
    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string v3, "HostKey has been changed: "

    .line 357
    .line 358
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw v0

    .line 374
    :cond_c
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 375
    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    const-string v3, "reject HostKey: "

    .line 379
    .line 380
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 384
    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw v0

    .line 396
    :cond_d
    :goto_4
    const-string v6, "no"

    .line 397
    .line 398
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-eqz v2, :cond_e

    .line 403
    .line 404
    if-ne v11, v0, :cond_e

    .line 405
    .line 406
    const/4 v8, 0x1

    .line 407
    :cond_e
    if-nez v0, :cond_12

    .line 408
    .line 409
    invoke-virtual/range {p3 .. p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyAlgorithName()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-interface {v7, v3, v2}, Lcom/jcraft/jsch/HostKeyRepository;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    array-length v3, v4

    .line 418
    invoke-static {v4, v10, v3}, Lcom/jcraft/jsch/Util;->toBase64([BII)[B

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    :goto_5
    array-length v4, v2

    .line 427
    if-ge v10, v4, :cond_12

    .line 428
    .line 429
    aget-object v4, v2, v0

    .line 430
    .line 431
    invoke-virtual {v4}, Lcom/jcraft/jsch/HostKey;->getKey()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-eqz v4, :cond_11

    .line 440
    .line 441
    aget-object v4, v2, v10

    .line 442
    .line 443
    invoke-virtual {v4}, Lcom/jcraft/jsch/HostKey;->getMarker()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    const-string v6, "@revoked"

    .line 448
    .line 449
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    if-eqz v4, :cond_11

    .line 454
    .line 455
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 456
    .line 457
    if-eqz v0, :cond_f

    .line 458
    .line 459
    const-string v2, "The "

    .line 460
    .line 461
    const-string v3, " host key for "

    .line 462
    .line 463
    invoke-static {v2, v5, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v3, " is marked as revoked.\nThis could mean that a stolen key is being used to impersonate this host."

    .line 473
    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-interface {v0, v2}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    :cond_f
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-interface {v0, v11}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_10

    .line 493
    .line 494
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    const-string v3, "Host \'"

    .line 501
    .line 502
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    const-string v3, "\' has provided revoked key."

    .line 511
    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-interface {v0, v11, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 520
    .line 521
    .line 522
    :cond_10
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 523
    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    const-string v3, "revoked HostKey: "

    .line 527
    .line 528
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 532
    .line 533
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    throw v0

    .line 544
    :cond_11
    add-int/lit8 v10, v10, 0x1

    .line 545
    .line 546
    goto :goto_5

    .line 547
    :cond_12
    if-nez v0, :cond_13

    .line 548
    .line 549
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-interface {v0, v11}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    if-eqz v0, :cond_13

    .line 558
    .line 559
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    const-string v3, "Host \'"

    .line 566
    .line 567
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 571
    .line 572
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v3, "\' is known and matches the "

    .line 576
    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v3, " host key"

    .line 584
    .line 585
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-interface {v0, v11, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 593
    .line 594
    .line 595
    :cond_13
    if-eqz v8, :cond_14

    .line 596
    .line 597
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 602
    .line 603
    .line 604
    move-result v0

    .line 605
    if-eqz v0, :cond_14

    .line 606
    .line 607
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    const-string v3, "Permanently added \'"

    .line 614
    .line 615
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 619
    .line 620
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v3, "\' ("

    .line 624
    .line 625
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    const-string v3, ") to the list of known hosts."

    .line 632
    .line 633
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    invoke-interface {v0, v9, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 641
    .line 642
    .line 643
    :cond_14
    if-eqz v8, :cond_15

    .line 644
    .line 645
    monitor-enter v7

    .line 646
    :try_start_4
    iget-object v0, v1, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    .line 647
    .line 648
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 649
    .line 650
    invoke-interface {v7, v0, v2}, Lcom/jcraft/jsch/HostKeyRepository;->add(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V

    .line 651
    .line 652
    .line 653
    monitor-exit v7

    .line 654
    goto :goto_6

    .line 655
    :catchall_2
    move-exception v0

    .line 656
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 657
    throw v0

    .line 658
    :cond_15
    :goto_6
    return-void

    .line 659
    :catchall_3
    move-exception v0

    .line 660
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 661
    throw v0
.end method

.method public static checkKex(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkKexes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v3, "CheckKexes: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const-string v3, ","

    invoke-static {p1, v3}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_3

    aget-object v5, p1, v4

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/jcraft/jsch/Session;->checkKex(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    if-ge v3, p1, :cond_5

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not available."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method

.method private checkSignatures(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v3, "CheckSignatures: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const-string v3, ","

    invoke-static {p1, v3}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    :try_start_0
    aget-object v5, p1, v4

    invoke-static {v5}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/Signature;

    invoke-interface {v5}, Lcom/jcraft/jsch/Signature;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    if-ge v3, p1, :cond_4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not available."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v0
.end method

.method private expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B
    .locals 5

    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->getBlockSize()I

    move-result v0

    :goto_0
    array-length v1, p4

    if-ge v1, p6, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v3, 0x0

    invoke-interface {p5, v1, v3, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    array-length v1, p4

    add-int/2addr v1, v0

    new-array v1, v1, [B

    array-length v2, p4

    invoke-static {p4, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v2

    array-length v4, p4

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4}, Lcom/jcraft/jsch/Util;->bzero([B)V

    move-object p4, v1

    goto :goto_0

    :cond_0
    return-object p4
.end method

.method private initDeflater(Ljava/lang/String;)V
    .locals 2

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-eqz v1, :cond_2

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/Compression;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string p1, "compression_level"

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    const/4 p1, 0x6

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/jcraft/jsch/Compression;->init(II)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method private initInflater(Ljava/lang/String;)V
    .locals 2

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-eqz v1, :cond_2

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/Compression;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/jcraft/jsch/Compression;->init(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;
    .locals 8

    const-string v0, "parseForwarding: "

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const-string v4, ":"

    const/4 v5, 0x1

    if-le v2, v5, :cond_4

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_1

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v1, Lcom/jcraft/jsch/Session$Forwarding;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jcraft/jsch/Session$Forwarding;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$1;)V

    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_a

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v6, :cond_9

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "127.0.0.1"

    if-eq v2, v6, :cond_8

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_5
    :goto_3
    const-string p1, "0.0.0.0"

    :cond_6
    const-string v2, "localhost"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v7, p1

    :goto_4
    iput-object v7, v1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    goto :goto_5

    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    goto :goto_4

    :goto_5
    return-object v1

    :cond_9
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    .locals 6

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v0, v0, -0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    :goto_0
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget p1, p1, Lcom/jcraft/jsch/Buffer;->s:I

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->send_kexinit()V

    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    invoke-static {p1, v0}, Lcom/jcraft/jsch/KeyExchange;->guess([B[B)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-nez v0, :cond_3

    const/4 v0, 0x2

    aget-object p1, p1, v0

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "NONE Cipher should not be chosen before authentification is successed."

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/KeyExchange;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->V_S:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->init(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "Algorithm negotiation fail"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/Session;->updateKeys(Lcom/jcraft/jsch/KeyExchange;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    return-void
.end method

.method private requestPortForwarding()V
    .locals 5

    const-string v0, "ClearAllForwardings"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const-string v1, "LocalForward"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "RemoteForward"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_3

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private send_kexinit()V
    .locals 12

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "cipher.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cipher.s2c"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CheckCiphers"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/Session;->checkCiphers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available ciphers."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v2, "kex"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CheckKexes"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/Session;->checkKexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available kexes."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    const-string v3, "server_host_key"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CheckSignatures"

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/jcraft/jsch/Session;->checkSignatures(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    array-length v5, v4

    if-lez v5, :cond_6

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available sig algorithm."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    new-instance v5, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v5}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v6, Lcom/jcraft/jsch/Packet;

    invoke-direct {v6, v5}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v7, 0x14

    invoke-virtual {v5, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    sget-object v7, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    iget-object v9, v5, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v10, v5, Lcom/jcraft/jsch/Buffer;->index:I

    const/16 v11, 0x10

    invoke-interface {v8, v9, v10, v11}, Lcom/jcraft/jsch/Random;->fill([BII)V

    invoke-virtual {v5, v11}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "mac.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "mac.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "compression.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "compression.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "lang.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "lang.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v0, 0x5

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEXINIT sent"

    invoke-interface {v0, v4, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private send_newkeys()V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v2, "SSH_MSG_NEWKEYS sent"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V
    .locals 3

    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->isCBC()Z

    move-result p2

    const-string v0, "Packet corrupt"

    if-eqz p2, :cond_5

    const/high16 p2, 0x40000

    if-eq p4, p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget p2, p1, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr p5, p2

    :goto_1
    const/4 p2, 0x0

    if-lez p5, :cond_3

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    iget-object p4, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v1, p4

    if-le p5, v1, :cond_1

    array-length v1, p4

    goto :goto_2

    :cond_1
    move v1, p5

    :goto_2
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v2, p4, p2, v1}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    if-eqz p3, :cond_2

    iget-object p4, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-interface {p3, p4, p2, v1}, Lcom/jcraft/jsch/MAC;->update([BII)V

    :cond_2
    sub-int/2addr p5, v1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-interface {p3, p1, p2}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    :cond_4
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateKeys(Lcom/jcraft/jsch/KeyExchange;)V
    .locals 10

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getK()[B

    move-result-object v7

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getH()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getHash()Lcom/jcraft/jsch/HASH;

    move-result-object p1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    const/4 v9, 0x0

    if-nez v0, :cond_0

    array-length v0, v8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    array-length v1, v8

    invoke-static {v8, v9, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->IVc2s:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->index:I

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    array-length v2, v2

    sub-int v2, v1, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v0, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    invoke-interface {p1, v0, v9, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->IVs2c:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v2, v1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v2, v1

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [B

    array-length v4, v1

    invoke-static {v1, v9, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v1, v1

    array-length v4, v0

    invoke-static {v0, v9, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->IVs2c:[B

    invoke-interface {v0, v3, v1, v2}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v6

    move-object v0, p0

    move-object v2, v7

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/MAC;->init([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v2, v1

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v1

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v9, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->IVc2s:[B

    invoke-interface {v0, v9, v1, v2}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v6

    move-object v0, p0

    move-object v2, v7

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/MAC;->init([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->initDeflater(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->initInflater(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    if-eqz v0, :cond_3

    throw p1

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addChannel(Lcom/jcraft/jsch/Channel;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Channel;->setSession(Lcom/jcraft/jsch/Session;)V

    return-void
.end method

.method public connect()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/Session;->timeout:I

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->connect(I)V

    return-void
.end method

.method public connect(I)V
    .locals 16

    .line 2
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-nez v3, :cond_2f

    new-instance v3, Lcom/jcraft/jsch/IO;

    invoke-direct {v3}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v3, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    sget-object v3, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "random"

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Random;

    sput-object v3, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    :goto_0
    sget-object v3, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    invoke-static {v3}, Lcom/jcraft/jsch/Packet;->setRandom(Lcom/jcraft/jsch/Random;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connecting to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    if-nez v7, :cond_2

    iget-object v7, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v8, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-static {v7, v8, v2}, Lcom/jcraft/jsch/Util;->createSocket(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v7

    iput-object v7, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    iget-object v8, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1a

    :catch_1
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_2
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v9, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-interface {v7, v8, v9}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v7

    iput-object v7, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    iget-object v8, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    invoke-interface {v8, v7}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v7

    iget-object v8, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-interface {v8, v9}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v8

    :goto_1
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v9, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v9, v7}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    iget-object v7, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_3
    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v11, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-interface {v8, v9, v10, v11, v2}, Lcom/jcraft/jsch/Proxy;->connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V

    iget-object v8, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v9}, Lcom/jcraft/jsch/Proxy;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    iget-object v8, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v9}, Lcom/jcraft/jsch/Proxy;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    iget-object v8, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v8}, Lcom/jcraft/jsch/Proxy;->getSocket()Ljava/net/Socket;

    move-result-object v8

    iput-object v8, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    if-lez v2, :cond_4

    :try_start_3
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_4
    iput-boolean v4, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    const-string v8, "Connection established"

    invoke-interface {v7, v4, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_5
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v7, v1}, Lcom/jcraft/jsch/JSch;->addSession(Lcom/jcraft/jsch/Session;)V

    iget-object v7, v1, Lcom/jcraft/jsch/Session;->V_C:[B

    array-length v8, v7

    add-int/lit8 v9, v8, 0x1

    new-array v10, v9, [B

    array-length v11, v7

    invoke-static {v7, v6, v10, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v7, 0xa

    aput-byte v7, v10, v8

    iget-object v8, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v8, v10, v6, v9}, Lcom/jcraft/jsch/IO;->put([BII)V

    :cond_6
    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_7
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v10, v10

    if-ge v8, v10, :cond_9

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v9}, Lcom/jcraft/jsch/IO;->getByte()I

    move-result v9

    if-gez v9, :cond_8

    goto :goto_4

    :cond_8
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    int-to-byte v11, v9

    aput-byte v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    if-ne v9, v7, :cond_7

    :cond_9
    :goto_4
    if-ltz v9, :cond_2b

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v9, v9, Lcom/jcraft/jsch/Buffer;->buffer:[B

    add-int/lit8 v10, v8, -0x1

    aget-byte v10, v9, v10

    if-ne v10, v7, :cond_b

    add-int/lit8 v10, v8, -0x1

    if-lez v10, :cond_a

    add-int/lit8 v11, v8, -0x2

    aget-byte v11, v9, v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_a

    add-int/lit8 v8, v8, -0x2

    goto :goto_5

    :cond_a
    move v8, v10

    :cond_b
    :goto_5
    if-le v8, v3, :cond_6

    array-length v10, v9

    const/4 v11, 0x2

    if-eq v8, v10, :cond_c

    aget-byte v10, v9, v6

    const/16 v12, 0x53

    if-ne v10, v12, :cond_6

    aget-byte v10, v9, v4

    if-ne v10, v12, :cond_6

    aget-byte v10, v9, v11

    const/16 v12, 0x48

    if-ne v10, v12, :cond_6

    aget-byte v10, v9, v3

    const/16 v12, 0x2d

    if-eq v10, v12, :cond_c

    goto :goto_3

    :cond_c
    array-length v7, v9

    if-eq v8, v7, :cond_2a

    const/4 v7, 0x7

    if-lt v8, v7, :cond_2a

    const/4 v7, 0x4

    aget-byte v7, v9, v7

    const/16 v10, 0x31

    if-ne v7, v10, :cond_d

    const/4 v7, 0x6

    aget-byte v7, v9, v7

    const/16 v10, 0x39

    if-ne v7, v10, :cond_2a

    :cond_d
    new-array v7, v8, [B

    iput-object v7, v1, Lcom/jcraft/jsch/Session;->V_S:[B

    invoke-static {v9, v6, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote version string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->V_S:[B

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Local version string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->V_C:[B

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->send_kexinit()V

    iget-object v7, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v7

    iput-object v7, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v7

    const/16 v8, 0x14

    if-ne v7, v8, :cond_29

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    const-string v8, "SSH_MSG_KEXINIT received"

    invoke-interface {v7, v4, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_f
    iget-object v7, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v7}, Lcom/jcraft/jsch/Session;->receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v7

    :cond_10
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v8}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v8

    iput-object v8, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    move-result v8

    iget-object v9, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v9

    if-ne v8, v9, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/jcraft/jsch/Session;->kex_start_time:J

    iget-object v8, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/KeyExchange;->next(Lcom/jcraft/jsch/Buffer;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-virtual {v7}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v8, :cond_10

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-boolean v4, v1, Lcom/jcraft/jsch/Session;->in_prompt:Z

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v12, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-direct {v1, v10, v12, v7}, Lcom/jcraft/jsch/Session;->checkHost(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V

    iput-boolean v6, v1, Lcom/jcraft/jsch/Session;->in_prompt:Z

    iget-wide v12, v1, Lcom/jcraft/jsch/Session;->kex_start_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v14, v12

    iput-wide v14, v1, Lcom/jcraft/jsch/Session;->kex_start_time:J
    :try_end_4
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->send_newkeys()V

    iget-object v8, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v8}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v8

    iput-object v8, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v8

    const/16 v9, 0x15

    if-ne v8, v9, :cond_26

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    const-string v9, "SSH_MSG_NEWKEYS received"

    invoke-interface {v8, v4, v9}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_11
    iget-object v8, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v8, v7}, Lcom/jcraft/jsch/Session;->receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v7, "MaxAuthTries"

    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_18

    :cond_12
    :goto_6
    :try_start_7
    const-string v7, "userauth.none"

    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jcraft/jsch/UserAuth;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v7, v1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    move-result v8

    const-string v9, "PreferredAuthentications"

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-static {v9, v10}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-nez v8, :cond_13

    check-cast v7, Lcom/jcraft/jsch/UserAuthNone;

    invoke-virtual {v7}, Lcom/jcraft/jsch/UserAuthNone;->getMethods()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_13
    move-object v9, v5

    :cond_14
    :goto_7
    const-string v7, ","

    invoke-static {v9, v7}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    :goto_8
    const/4 v13, 0x0

    :goto_9
    if-nez v8, :cond_1e

    if-eqz v10, :cond_1e

    array-length v14, v10

    if-ge v12, v14, :cond_1e

    add-int/lit8 v14, v12, 0x1

    aget-object v15, v10, v12

    const/4 v3, 0x0

    :goto_a
    array-length v6, v7

    if-ge v3, v6, :cond_1c

    aget-object v6, v7, v3

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "Authentications that can continue: "

    :cond_15
    :goto_b
    array-length v6, v10

    if-ge v12, v6, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v10, v12

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v12, v12, 0x1

    array-length v6, v10

    if-ge v12, v6, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_16
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    invoke-interface {v6, v4, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Next authentication method: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_17
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userauth."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userauth."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/UserAuth;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_c

    :catch_3
    :try_start_a
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v11}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to load "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " method"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v11, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_18
    move-object v3, v5

    :goto_c
    if-eqz v3, :cond_1c

    :try_start_b
    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Authentication succeeded ("

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_b
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v3, v0

    goto :goto_e

    :catch_5
    move-exception v0

    move-object v2, v0

    goto :goto_f

    :catch_6
    move-exception v0

    move-object v2, v0

    goto :goto_10

    :catch_7
    move-exception v0

    move-object v3, v0

    goto :goto_11

    :catch_8
    nop

    goto :goto_13

    :cond_19
    :goto_d
    const/4 v13, 0x0

    goto :goto_14

    :goto_e
    :try_start_c
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    invoke-interface {v6, v11}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "an exception during authentication\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v11, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1a
    const/4 v13, 0x0

    goto :goto_15

    :goto_f
    throw v2

    :goto_10
    throw v2

    :goto_11
    invoke-virtual {v3}, Lcom/jcraft/jsch/JSchPartialAuthException;->getMethods()Ljava/lang/String;

    move-result-object v3

    const-string v6, ","

    invoke-static {v3, v6}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    const/4 v12, 0x0

    goto :goto_12

    :cond_1b
    move v12, v14

    :goto_12
    move-object v9, v3

    const/4 v3, 0x3

    const/4 v6, 0x0

    goto/16 :goto_8

    :goto_13
    const/4 v13, 0x1

    :cond_1c
    :goto_14
    move v12, v14

    const/4 v3, 0x3

    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_1e
    :goto_15
    if-nez v8, :cond_21

    iget v2, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v3, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    if-lt v2, v3, :cond_1f

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Login trials exceeds "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1f
    if-eqz v13, :cond_20

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "Auth cancel"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "Auth fail"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_23

    if-gtz v2, :cond_22

    iget v2, v1, Lcom/jcraft/jsch/Session;->timeout:I

    if-lez v2, :cond_23

    :cond_22
    iget v2, v1, Lcom/jcraft/jsch/Session;->timeout:I

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_23
    iput-boolean v4, v1, Lcom/jcraft/jsch/Session;->isAuthed:Z

    iget-object v2, v1, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v1, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connect thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " session"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v3, :cond_24

    iget-object v6, v1, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v6, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    goto :goto_16

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_17

    :cond_24
    :goto_16
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->requestPortForwarding()V

    :cond_25
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    iget-object v2, v1, Lcom/jcraft/jsch/Session;->password:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    iput-object v5, v1, Lcom/jcraft/jsch/Session;->password:[B

    return-void

    :goto_17
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v3

    :catch_9
    move-exception v0

    move-object v2, v0

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_18
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MaxAuthTries: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "MaxAuthTries"

    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_26
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid protocol(newkyes): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_a
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->in_prompt:Z

    throw v3

    :cond_27
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verify: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_28
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid protocol(kex): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid protocol: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2a
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "invalid server\'s version string"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "connection is closed by foreign host"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_19
    :try_start_12
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->in_kex:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    iget-boolean v2, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v2, :cond_2c

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v1, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->reset()V

    iget-object v6, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x8f

    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->checkFreeSize(I)V

    iget-object v6, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object v4, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v4, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v4, "en"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, v1, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :catch_b
    :cond_2c
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :catch_c
    const/4 v2, 0x0

    :try_start_15
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    instance-of v2, v3, Ljava/lang/RuntimeException;

    if-nez v2, :cond_2e

    instance-of v2, v3, Lcom/jcraft/jsch/JSchException;

    if-eqz v2, :cond_2d

    check-cast v3, Lcom/jcraft/jsch/JSchException;

    throw v3

    :cond_2d
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session.connect: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :goto_1a
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->password:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    iput-object v5, v1, Lcom/jcraft/jsch/Session;->password:[B

    throw v2

    :cond_2f
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "session is already connected"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public disconnect()V
    .locals 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disconnecting from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jcraft/jsch/Session;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->disconnect(Lcom/jcraft/jsch/Session;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->delPort(Lcom/jcraft/jsch/Session;)V

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;)V

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelX11;->removeFakedCookie(Lcom/jcraft/jsch/Session;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_1

    :cond_6
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v1}, Lcom/jcraft/jsch/Proxy;->close()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_7
    :goto_1
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->removeSession(Lcom/jcraft/jsch/Session;)Z

    return-void

    :goto_2
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public encode(Lcom/jcraft/jsch/Packet;)V
    .locals 9

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v4, v3, Lcom/jcraft/jsch/Buffer;->index:I

    aput v4, v2, v1

    iget-object v4, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v5, 0x5

    invoke-interface {v0, v4, v5, v2}, Lcom/jcraft/jsch/Compression;->compress([BI[I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    aget v2, v2, v1

    iput v2, v0, Lcom/jcraft/jsch/Buffer;->index:I

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->padding(I)V

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v2, 0x4

    aget-byte v0, v0, v2

    sget-object v2, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr v4, v0

    invoke-interface {v3, v5, v4, v0}, Lcom/jcraft/jsch/Random;->fill([BII)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->padding(I)V

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/jcraft/jsch/Session;->seqo:I

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/MAC;->update(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v3, v1, v2}, Lcom/jcraft/jsch/MAC;->update([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    :cond_2
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v3, :cond_3

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v7, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v6, v0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v4, v7

    invoke-interface/range {v3 .. v8}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    :cond_4
    return-void
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSessionId()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Session;->timeout:I

    return v0
.end method

.method public getUserInfo()Lcom/jcraft/jsch/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    return v0
.end method

.method public openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Channel;->getChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->addChannel(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Channel;->init()V

    instance-of v0, p1, Lcom/jcraft/jsch/ChannelSession;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->applyConfigChannel(Lcom/jcraft/jsch/ChannelSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "session is down"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    .locals 21

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    .line 9
    .line 10
    iget-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 11
    .line 12
    iget v2, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 13
    .line 14
    iget v3, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 17
    .line 18
    .line 19
    iget v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 20
    .line 21
    iget v11, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    .line 22
    .line 23
    add-int/2addr v0, v11

    .line 24
    iput v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 25
    .line 26
    iget-object v8, v6, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    .line 27
    .line 28
    if-eqz v8, :cond_1

    .line 29
    .line 30
    iget-object v12, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 31
    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v13, 0x0

    .line 34
    move-object v9, v12

    .line 35
    invoke-interface/range {v8 .. v13}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    aget-byte v1, v0, v8

    .line 42
    .line 43
    shl-int/lit8 v1, v1, 0x18

    .line 44
    .line 45
    const/high16 v2, -0x1000000

    .line 46
    .line 47
    and-int/2addr v1, v2

    .line 48
    const/4 v9, 0x1

    .line 49
    aget-byte v2, v0, v9

    .line 50
    .line 51
    shl-int/lit8 v2, v2, 0x10

    .line 52
    .line 53
    const/high16 v3, 0xff0000

    .line 54
    .line 55
    and-int/2addr v2, v3

    .line 56
    or-int/2addr v1, v2

    .line 57
    const/4 v10, 0x2

    .line 58
    aget-byte v2, v0, v10

    .line 59
    .line 60
    shl-int/lit8 v2, v2, 0x8

    .line 61
    .line 62
    const v3, 0xff00

    .line 63
    .line 64
    .line 65
    and-int/2addr v2, v3

    .line 66
    or-int/2addr v1, v2

    .line 67
    const/4 v11, 0x3

    .line 68
    aget-byte v0, v0, v11

    .line 69
    .line 70
    and-int/lit16 v0, v0, 0xff

    .line 71
    .line 72
    or-int v12, v1, v0

    .line 73
    .line 74
    const/high16 v13, 0x40000

    .line 75
    .line 76
    const/4 v14, 0x5

    .line 77
    if-lt v12, v14, :cond_2

    .line 78
    .line 79
    if-le v12, v13, :cond_3

    .line 80
    .line 81
    :cond_2
    iget-object v2, v6, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    .line 82
    .line 83
    iget-object v3, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    .line 84
    .line 85
    const/high16 v5, 0x40000

    .line 86
    .line 87
    move-object/from16 v0, p0

    .line 88
    .line 89
    move-object/from16 v1, p1

    .line 90
    .line 91
    move v4, v12

    .line 92
    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 93
    .line 94
    .line 95
    :cond_3
    add-int/lit8 v0, v12, 0x4

    .line 96
    .line 97
    iget v1, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    .line 98
    .line 99
    sub-int v15, v0, v1

    .line 100
    .line 101
    iget v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 102
    .line 103
    add-int v1, v0, v15

    .line 104
    .line 105
    iget-object v2, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 106
    .line 107
    array-length v3, v2

    .line 108
    if-le v1, v3, :cond_4

    .line 109
    .line 110
    add-int v1, v0, v15

    .line 111
    .line 112
    new-array v1, v1, [B

    .line 113
    .line 114
    invoke-static {v2, v8, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    .line 116
    .line 117
    iput-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 118
    .line 119
    :cond_4
    iget v0, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    .line 120
    .line 121
    rem-int v0, v15, v0

    .line 122
    .line 123
    const/4 v5, 0x4

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    const-string v0, "Bad packet length "

    .line 127
    .line 128
    invoke-static {v15, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v1, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-interface {v1, v5, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    iget-object v2, v6, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    .line 150
    .line 151
    iget-object v3, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    .line 152
    .line 153
    iget v0, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    .line 154
    .line 155
    sub-int v16, v13, v0

    .line 156
    .line 157
    move-object/from16 v0, p0

    .line 158
    .line 159
    move-object/from16 v1, p1

    .line 160
    .line 161
    move v4, v12

    .line 162
    const/4 v11, 0x4

    .line 163
    move/from16 v5, v16

    .line 164
    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    const/4 v11, 0x4

    .line 170
    :goto_1
    if-lez v15, :cond_7

    .line 171
    .line 172
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    .line 173
    .line 174
    iget-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 175
    .line 176
    iget v2, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 177
    .line 178
    invoke-virtual {v0, v1, v2, v15}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 179
    .line 180
    .line 181
    iget v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 182
    .line 183
    add-int/2addr v0, v15

    .line 184
    iput v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 185
    .line 186
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    .line 187
    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    iget-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 191
    .line 192
    iget v2, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    .line 193
    .line 194
    move v3, v15

    .line 195
    move-object v15, v0

    .line 196
    move-object/from16 v16, v1

    .line 197
    .line 198
    move/from16 v17, v2

    .line 199
    .line 200
    move/from16 v18, v3

    .line 201
    .line 202
    move-object/from16 v19, v1

    .line 203
    .line 204
    move/from16 v20, v2

    .line 205
    .line 206
    invoke-interface/range {v15 .. v20}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_7
    move v3, v15

    .line 211
    :goto_2
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    .line 212
    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    iget v1, v6, Lcom/jcraft/jsch/Session;->seqi:I

    .line 216
    .line 217
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 218
    .line 219
    .line 220
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    .line 221
    .line 222
    iget-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 223
    .line 224
    iget v2, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 225
    .line 226
    invoke-interface {v0, v1, v8, v2}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    .line 230
    .line 231
    iget-object v1, v6, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    .line 232
    .line 233
    invoke-interface {v0, v1, v8}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 234
    .line 235
    .line 236
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    .line 237
    .line 238
    iget-object v1, v6, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    .line 239
    .line 240
    array-length v2, v1

    .line 241
    invoke-virtual {v0, v1, v8, v2}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    .line 245
    .line 246
    iget-object v1, v6, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    .line 247
    .line 248
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_9

    .line 253
    .line 254
    if-gt v3, v13, :cond_8

    .line 255
    .line 256
    iget-object v2, v6, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    .line 257
    .line 258
    iget-object v4, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    .line 259
    .line 260
    sub-int v5, v13, v3

    .line 261
    .line 262
    move-object/from16 v0, p0

    .line 263
    .line 264
    move-object/from16 v1, p1

    .line 265
    .line 266
    move-object v3, v4

    .line 267
    move v4, v12

    .line 268
    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 274
    .line 275
    const-string v1, "MAC Error"

    .line 276
    .line 277
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :cond_9
    iget v0, v6, Lcom/jcraft/jsch/Session;->seqi:I

    .line 282
    .line 283
    add-int/2addr v0, v9

    .line 284
    iput v0, v6, Lcom/jcraft/jsch/Session;->seqi:I

    .line 285
    .line 286
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    .line 287
    .line 288
    if-eqz v0, :cond_b

    .line 289
    .line 290
    iget-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 291
    .line 292
    aget-byte v2, v1, v11

    .line 293
    .line 294
    iget-object v3, v6, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    .line 295
    .line 296
    iget v4, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 297
    .line 298
    sub-int/2addr v4, v14

    .line 299
    sub-int/2addr v4, v2

    .line 300
    aput v4, v3, v8

    .line 301
    .line 302
    invoke-interface {v0, v1, v14, v3}, Lcom/jcraft/jsch/Compression;->uncompress([BI[I)[B

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    if-eqz v0, :cond_a

    .line 307
    .line 308
    iput-object v0, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 309
    .line 310
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    .line 311
    .line 312
    aget v0, v0, v8

    .line 313
    .line 314
    add-int/2addr v0, v14

    .line 315
    iput v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_a
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 319
    .line 320
    const-string v1, "fail in inflater"

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :cond_b
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    and-int/lit16 v0, v0, 0xff

    .line 332
    .line 333
    if-eq v0, v9, :cond_12

    .line 334
    .line 335
    if-ne v0, v10, :cond_c

    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_c
    const/4 v1, 0x3

    .line 340
    if-ne v0, v1, :cond_d

    .line 341
    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 343
    .line 344
    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 346
    .line 347
    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-interface {v1, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_0

    .line 364
    .line 365
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    const-string v3, "Received SSH_MSG_UNIMPLEMENTED for "

    .line 372
    .line 373
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-interface {v1, v9, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_d
    if-ne v0, v11, :cond_e

    .line 389
    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 391
    .line 392
    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 394
    .line 395
    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 397
    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_e
    const/16 v1, 0x5d

    .line 402
    .line 403
    if-ne v0, v1, :cond_10

    .line 404
    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 409
    .line 410
    .line 411
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 412
    .line 413
    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    invoke-static {v0, v6}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    if-nez v0, :cond_f

    .line 423
    .line 424
    goto/16 :goto_0

    .line 425
    .line 426
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    .line 427
    .line 428
    .line 429
    move-result-wide v1

    .line 430
    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jsch/Channel;->addRemoteWindowSize(J)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_0

    .line 434
    .line 435
    :cond_10
    const/16 v1, 0x34

    .line 436
    .line 437
    if-ne v0, v1, :cond_11

    .line 438
    .line 439
    iput-boolean v9, v6, Lcom/jcraft/jsch/Session;->isAuthed:Z

    .line 440
    .line 441
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    .line 442
    .line 443
    if-nez v0, :cond_11

    .line 444
    .line 445
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    .line 446
    .line 447
    if-nez v0, :cond_11

    .line 448
    .line 449
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    .line 450
    .line 451
    const/4 v1, 0x6

    .line 452
    aget-object v0, v0, v1

    .line 453
    .line 454
    invoke-direct {v6, v0}, Lcom/jcraft/jsch/Session;->initDeflater(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    .line 458
    .line 459
    const/4 v1, 0x7

    .line 460
    aget-object v0, v0, v1

    .line 461
    .line 462
    invoke-direct {v6, v0}, Lcom/jcraft/jsch/Session;->initInflater(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    :cond_11
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 466
    .line 467
    .line 468
    return-object v7

    .line 469
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 470
    .line 471
    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 473
    .line 474
    .line 475
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 476
    .line 477
    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    .line 491
    .line 492
    const-string v4, "SSH_MSG_DISCONNECT: "

    .line 493
    .line 494
    const-string v5, " "

    .line 495
    .line 496
    invoke-static {v0, v4, v5}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-direct {v3, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw v3
.end method

.method public run()V
    .locals 13

    iput-object p0, p0, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v8, v5

    :catch_0
    :cond_0
    :goto_1
    const/4 v7, 0x0

    :goto_2
    :try_start_0
    iget-boolean v9, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_18

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    move-result v9

    if-ne v9, v7, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    invoke-virtual {v8, v0}, Lcom/jcraft/jsch/KeyExchange;->next(Lcom/jcraft/jsch/Buffer;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verify: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :cond_2
    const/16 v9, 0x14

    if-eq v7, v9, :cond_15

    const/16 v9, 0x15

    if-eq v7, v9, :cond_14

    packed-switch v7, :pswitch_data_0

    const/16 v9, 0x5d

    packed-switch v7, :pswitch_data_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown SSH message type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    iput v6, v7, Lcom/jcraft/jsch/Channel;->reply:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_1

    :cond_4
    iput v2, v7, Lcom/jcraft/jsch/Channel;->reply:I

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v9

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v9

    const-string v11, "exit-status"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/Channel;->setExitStatus(I)V

    const/16 v9, 0x63

    goto :goto_4

    :cond_6
    const/16 v9, 0x64

    :goto_4
    if-eqz v10, :cond_0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    :goto_5
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->disconnect()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->eof_remote()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0, v3, v4}, Lcom/jcraft/jsch/Buffer;->getString([I[I)[B

    move-result-object v10

    if-nez v7, :cond_7

    goto/16 :goto_1

    :cond_7
    aget v11, v4, v6

    if-nez v11, :cond_8

    goto/16 :goto_1

    :cond_8
    aget v12, v3, v6

    invoke-virtual {v7, v10, v12, v11}, Lcom/jcraft/jsch/Channel;->write_ext([BII)V

    aget v10, v4, v6

    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int/2addr v11, v10

    invoke-virtual {v7, v11}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    div-int/lit8 v11, v11, 0x2

    if-ge v10, v11, :cond_0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget v9, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int/2addr v9, v10

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-boolean v9, v7, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v9, :cond_9

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_9
    :goto_6
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget v9, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    :goto_7
    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :goto_8
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :pswitch_6
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    invoke-virtual {v0, v3, v4}, Lcom/jcraft/jsch/Buffer;->getString([I[I)[B

    move-result-object v10

    if-nez v7, :cond_a

    goto/16 :goto_1

    :cond_a
    aget v11, v4, v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-nez v11, :cond_b

    goto/16 :goto_1

    :cond_b
    :try_start_7
    aget v12, v3, v6

    invoke-virtual {v7, v10, v12, v11}, Lcom/jcraft/jsch/Channel;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    aget v10, v4, v6

    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int/2addr v11, v10

    invoke-virtual {v7, v11}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    div-int/lit8 v11, v11, 0x2

    if-ge v10, v11, :cond_0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget v9, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int/2addr v9, v10

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    monitor-enter v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    iget-boolean v9, v7, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v9, :cond_c

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_c
    :goto_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget v9, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_7

    :goto_a
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :catch_2
    :try_start_d
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_1

    :pswitch_7
    :try_start_e
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-nez v7, :cond_d

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/jcraft/jsch/Channel;->addRemoteWindowSize(J)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/Channel;->setExitStatus(I)V

    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->close:Z

    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    invoke-virtual {v7, v6}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v9

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v12

    if-eqz v7, :cond_0

    invoke-virtual {v7, v10, v11}, Lcom/jcraft/jsch/Channel;->setRemoteWindowSize(J)V

    invoke-virtual {v7, v12}, Lcom/jcraft/jsch/Channel;->setRemotePacketSize(I)V

    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->open_confirmation:Z

    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v7

    const-string v9, "forwarded-tcpip"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "x11"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-boolean v9, p0, Lcom/jcraft/jsch/Session;->x11_forwarding:Z

    if-nez v9, :cond_10

    :cond_e
    const-string v9, "auth-agent@openssh.com"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lcom/jcraft/jsch/Session;->agent_forwarding:Z

    if-nez v9, :cond_10

    :cond_f
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v7, 0x5c

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    sget-object v7, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    goto/16 :goto_5

    :cond_10
    invoke-static {v7}, Lcom/jcraft/jsch/Channel;->getChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/jcraft/jsch/Session;->addChannel(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {v9, v0}, Lcom/jcraft/jsch/Channel;->getData(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/Channel;->init()V

    new-instance v10, Ljava/lang/Thread;

    invoke-direct {v10, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Channel "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v7, :cond_11

    invoke-virtual {v10, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_11
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :pswitch_b
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getThread()Ljava/lang/Thread;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/16 v11, 0x51

    if-ne v7, v11, :cond_12

    const/4 v12, 0x1

    goto :goto_b

    :cond_12
    const/4 v12, 0x0

    :goto_b
    invoke-virtual {v10, v12}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setReply(I)V

    if-ne v7, v11, :cond_13

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getPort()I

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setPort(I)V

    :cond_13
    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v7, 0x52

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    goto/16 :goto_5

    :cond_14
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->send_newkeys()V

    invoke-direct {p0, v0, v8}, Lcom/jcraft/jsch/Session;->receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v7

    move-object v8, v7

    goto/16 :goto_1

    :catch_3
    move-exception v9

    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-nez v10, :cond_16

    iget v10, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    if-ge v7, v10, :cond_16

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->sendKeepAliveMsg()V

    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_16
    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v10, :cond_17

    iget v10, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    if-ge v7, v10, :cond_17

    goto :goto_c

    :cond_17
    throw v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :goto_d
    iput-boolean v6, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caught an exception, leaving main loop due to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_18
    :try_start_f
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    :catch_4
    iput-boolean v6, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendKeepAliveMsg()V
    .locals 3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    sget-object v2, Lcom/jcraft/jsch/Session;->keepalivemsg:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setHostKeyAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    return-void
.end method

.method public setHostKeyRepository(Lcom/jcraft/jsch/HostKeyRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    return-void
.end method

.method public setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->password:[B

    :cond_0
    return-void
.end method

.method public setPortForwardingL(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object p1

    iget-object v0, p1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v1, p1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    iget-object v2, p1, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    iget p1, p1, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6

    .line 2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I

    move-result p1

    return p1
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I
    .locals 7

    .line 3
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I

    move-result p1

    return p1
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I
    .locals 0

    .line 4
    invoke-static/range {p0 .. p5}, Lcom/jcraft/jsch/PortWatcher;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/jcraft/jsch/PortWatcher;->setConnectTimeout(I)V

    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "PortWatcher Thread for "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    iget p1, p1, Lcom/jcraft/jsch/PortWatcher;->lport:I

    return p1
.end method

.method public setPortForwardingR(Ljava/lang/String;)I
    .locals 9

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object p1

    iget-object v0, p1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v1, p1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/Session;->_setPortForwardingR(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v4, p1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    iget-object v6, p1, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    iget v7, p1, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    const/4 v8, 0x0

    move-object v2, p0

    move v5, v0

    invoke-static/range {v2 .. v8}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return v0
.end method

.method public setServerAliveInterval(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->setTimeout(I)V

    iput p1, p0, Lcom/jcraft/jsch/Session;->serverAliveInterval:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/jcraft/jsch/Session;->timeout:I

    return-void

    :cond_0
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "invalid timeout value"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    iput p1, p0, Lcom/jcraft/jsch/Session;->timeout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lcom/jcraft/jsch/Packet;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getTimeout()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_prompt:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "timeout in waiting for rekeying process."

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_3

    const/16 v3, 0x15

    if-eq v2, v3, :cond_3

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_3

    if-eq v2, v3, :cond_3

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    const/16 v3, 0x21

    if-eq v2, v3, :cond_3

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    .locals 11

    .line 2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getTimeout()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    cmp-long v2, v0, v3

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "timeout in waiting for rekeying process."

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    monitor-enter p2

    :try_start_1
    iget-wide v5, p2, Lcom/jcraft/jsch/Channel;->rwsize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v7, p3

    const/4 v2, 0x1

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    :try_start_2
    iget v5, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    add-int/2addr v5, v2

    iput v5, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    const-wide/16 v5, 0x64

    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget v5, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    :goto_2
    sub-int/2addr v5, v2

    iput v5, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :catchall_1
    move-exception p1

    iget p3, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    sub-int/2addr p3, v2

    iput p3, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    throw p1

    :catch_1
    iget v5, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    goto :goto_2

    :cond_3
    :goto_3
    iget-boolean v5, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v5, :cond_4

    monitor-exit p2

    goto :goto_0

    :cond_4
    iget-wide v5, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_5

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    sub-long/2addr v0, v7

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    monitor-exit p2

    goto/16 :goto_6

    :cond_5
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-boolean v5, p2, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v5, :cond_f

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_f

    monitor-enter p2

    :try_start_4
    iget-wide v5, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    const/4 v9, 0x0

    cmp-long v10, v5, v3

    if-lez v10, :cond_a

    iget-wide v3, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    cmp-long p3, v3, v7

    if-lez p3, :cond_6

    move-wide v3, v7

    :cond_6
    cmp-long p3, v3, v7

    if-eqz p3, :cond_9

    long-to-int p3, v3

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_8

    :cond_7
    const/16 v5, 0x8

    :goto_4
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v6, :cond_8

    invoke-interface {v6}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v9

    :cond_8
    invoke-virtual {p1, p3, v5, v9}, Lcom/jcraft/jsch/Packet;->shift(III)I

    move-result v9

    :cond_9
    iget-object p3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p3}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result p3

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v5

    sub-long/2addr v7, v3

    long-to-int v6, v7

    iget-wide v7, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    sub-long/2addr v7, v3

    iput-wide v7, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    move v3, v9

    move v9, p3

    move p3, v6

    goto :goto_5

    :cond_a
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_c

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    if-nez p3, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1, v9, v5, v3, p3}, Lcom/jcraft/jsch/Packet;->unshift(BIII)V

    :cond_c
    monitor-enter p2

    :try_start_5
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v2, :cond_e

    :cond_d
    monitor-exit p2

    goto/16 :goto_0

    :catchall_3
    move-exception p1

    goto :goto_7

    :cond_e
    iget-wide v2, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    int-to-long v4, p3

    cmp-long v6, v2, v4

    if-ltz v6, :cond_d

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    sub-long/2addr v0, v4

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_6
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    return-void

    :goto_7
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1

    :goto_8
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "channel is broken"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_9
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method
