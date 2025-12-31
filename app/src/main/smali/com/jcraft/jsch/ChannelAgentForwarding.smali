.class Lcom/jcraft/jsch/ChannelAgentForwarding;
.super Lcom/jcraft/jsch/Channel;
.source "SourceFile"


# instance fields
.field private final SSH2_AGENTC_ADD_IDENTITY:B

.field private final SSH2_AGENTC_REMOVE_ALL_IDENTITIES:B

.field private final SSH2_AGENTC_REMOVE_IDENTITY:B

.field private final SSH2_AGENTC_REQUEST_IDENTITIES:B

.field private final SSH2_AGENTC_SIGN_REQUEST:B

.field private final SSH2_AGENT_FAILURE:B

.field private final SSH2_AGENT_IDENTITIES_ANSWER:B

.field private final SSH2_AGENT_SIGN_RESPONSE:B

.field private final SSH_AGENTC_ADD_RSA_IDENTITY:B

.field private final SSH_AGENTC_REMOVE_ALL_RSA_IDENTITIES:B

.field private final SSH_AGENTC_REMOVE_RSA_IDENTITY:B

.field private final SSH_AGENTC_REQUEST_RSA_IDENTITIES:B

.field private final SSH_AGENTC_RSA_CHALLENGE:B

.field private final SSH_AGENT_FAILURE:B

.field private final SSH_AGENT_RSA_IDENTITIES_ANSWER:B

.field private final SSH_AGENT_RSA_RESPONSE:B

.field private final SSH_AGENT_SUCCESS:B

.field init:Z

.field private mbuf:Lcom/jcraft/jsch/Buffer;

.field private packet:Lcom/jcraft/jsch/Packet;

.field private rbuf:Lcom/jcraft/jsch/Buffer;

.field private wbuf:Lcom/jcraft/jsch/Buffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENTC_REQUEST_RSA_IDENTITIES:B

    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENT_RSA_IDENTITIES_ANSWER:B

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENTC_RSA_CHALLENGE:B

    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENT_RSA_RESPONSE:B

    const/4 v1, 0x5

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENT_FAILURE:B

    const/4 v1, 0x6

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENT_SUCCESS:B

    const/4 v1, 0x7

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENTC_ADD_RSA_IDENTITY:B

    const/16 v1, 0x8

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENTC_REMOVE_RSA_IDENTITY:B

    const/16 v1, 0x9

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENTC_REMOVE_ALL_RSA_IDENTITIES:B

    const/16 v1, 0xb

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENTC_REQUEST_IDENTITIES:B

    const/16 v1, 0xc

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENT_IDENTITIES_ANSWER:B

    const/16 v1, 0xd

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENTC_SIGN_REQUEST:B

    const/16 v1, 0xe

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENT_SIGN_RESPONSE:B

    const/16 v1, 0x11

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENTC_ADD_IDENTITY:B

    const/16 v1, 0x12

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENTC_REMOVE_IDENTITY:B

    const/16 v1, 0x13

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENTC_REMOVE_ALL_IDENTITIES:B

    const/16 v1, 0x1e

    iput-byte v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENT_FAILURE:B

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->init:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Channel;->setLocalWindowSizeMax(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    const/16 v1, 0x4000

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Channel;->setLocalPacketSize(I)V

    const-string v1, "auth-agent@openssh.com"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->type:[B

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->reset()V

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    return-void
.end method

.method private send([B)V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public eof_remote()V
    .locals 0

    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->eof_remote()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->eof()V

    return-void
.end method

.method public run()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->sendOpenConfirmation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->close:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->shift()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v1

    iget v3, v0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v3, p3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iput-object v0, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result p2

    if-le p1, p2, :cond_2

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iget p2, p1, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/lit8 p2, p2, -0x4

    iput p2, p1, Lcom/jcraft/jsch/Buffer;->s:I

    return-void

    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result p1

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p2
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object p3

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getUserInfo()Lcom/jcraft/jsch/UserInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    const/16 v0, 0xb

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    move-result-object v0

    monitor-enter v0

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/Identity;

    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object p3

    if-eqz p3, :cond_3

    add-int/lit8 p2, p2, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge v4, p1, :cond_6

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/Identity;

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    sget-object p2, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    monitor-exit v0

    goto/16 :goto_b

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    goto/16 :goto_b

    :cond_8
    const/16 v1, 0xd

    if-ne p1, v1, :cond_13

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :goto_4
    :try_start_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p3

    const/4 v2, 0x0

    if-ge v4, p3, :cond_10

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/Identity;

    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v3

    invoke-static {p1, v3}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez p2, :cond_b

    goto :goto_6

    :cond_b
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Passphrase for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/jcraft/jsch/UserInfo;->promptPassphrase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_5

    :cond_c
    invoke-interface {p2}, Lcom/jcraft/jsch/UserInfo;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {p3, v3}, Lcom/jcraft/jsch/Identity;->setPassphrase([B)Z

    move-result v3
    :try_end_3
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_b

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_0
    :cond_e
    :goto_5
    :try_start_4
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_7

    :cond_f
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_10
    move-object p3, v2

    :goto_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p3, :cond_11

    invoke-interface {p3, v0}, Lcom/jcraft/jsch/Identity;->getSignature([B)[B

    move-result-object v2

    :cond_11
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    if-nez v2, :cond_12

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    goto :goto_b

    :cond_12
    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    goto :goto_b

    :goto_8
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_13
    const/16 p2, 0x12

    const/4 v1, 0x6

    if-ne p1, p2, :cond_14

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/jcraft/jsch/IdentityRepository;->remove([B)Z

    :goto_9
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    goto :goto_b

    :cond_14
    const/16 p2, 0x9

    if-ne p1, p2, :cond_15

    goto :goto_9

    :cond_15
    const/16 p2, 0x13

    if-ne p1, p2, :cond_16

    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->removeAll()V

    goto :goto_9

    :cond_16
    const/16 p2, 0x11

    const/4 v2, 0x5

    if-ne p1, p2, :cond_18

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    invoke-interface {p3, p1}, Lcom/jcraft/jsch/IdentityRepository;->add([B)Z

    move-result p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    if-eqz p1, :cond_17

    goto :goto_a

    :cond_17
    const/4 v1, 0x5

    :goto_a
    invoke-virtual {p2, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    goto :goto_b

    :cond_18
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    :goto_b
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelAgentForwarding;->send([B)V

    return-void

    :catch_1
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
