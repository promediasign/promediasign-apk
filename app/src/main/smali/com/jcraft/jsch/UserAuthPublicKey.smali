.class Lcom/jcraft/jsch/UserAuthPublicKey;
.super Lcom/jcraft/jsch/UserAuth;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-super/range {p0 .. p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    monitor-exit v2

    return v4

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    iget-object v3, v1, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    iget v6, v0, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v7, v0, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    if-lt v6, v7, :cond_1

    monitor-exit v2

    return v4

    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jcraft/jsch/Identity;

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v7

    const/16 v8, 0x35

    const/16 v9, 0x33

    const/16 v10, 0x32

    if-eqz v7, :cond_6

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Packet;->reset()V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11, v10}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v12, "ssh-connection"

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v12, "publickey"

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->getAlgName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0, v11}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    :cond_2
    :goto_1
    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v11}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v11

    iput-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x3c

    if-ne v11, v12, :cond_3

    goto :goto_2

    :cond_3
    if-ne v11, v9, :cond_4

    goto :goto_2

    :cond_4
    if-ne v11, v8, :cond_5

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->getInt()I

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v11, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v11

    iget-object v12, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v12}, Lcom/jcraft/jsch/Buffer;->getString()[B

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v12, :cond_2

    invoke-interface {v12, v11}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_2
    if-eq v11, v12, :cond_6

    goto/16 :goto_7

    :cond_6
    const/4 v11, 0x5

    const/4 v12, 0x5

    :cond_7
    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v1, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v13, :cond_a

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v1, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Passphrase for "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/jcraft/jsch/UserInfo;->promptPassphrase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v3, "publickey"

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    iget-object v13, v1, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v13}, Lcom/jcraft/jsch/UserInfo;->getPassphrase()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    invoke-static {v13}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v13

    goto :goto_4

    :cond_a
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v3, "USERAUTH fail"

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v13, 0x0

    :goto_4
    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v14

    if-eqz v14, :cond_c

    if-eqz v13, :cond_e

    :cond_c
    invoke-interface {v6, v13}, Lcom/jcraft/jsch/Identity;->setPassphrase([B)Z

    move-result v14

    if-eqz v14, :cond_e

    if-eqz v13, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v12

    instance-of v12, v12, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    if-eqz v12, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v12

    check-cast v12, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    invoke-virtual {v12}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->check()V

    :cond_d
    move-object v14, v13

    goto :goto_5

    :cond_e
    invoke-static {v13}, Lcom/jcraft/jsch/Util;->bzero([B)V

    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_7

    const/4 v14, 0x0

    :goto_5
    invoke-static {v14}, Lcom/jcraft/jsch/Util;->bzero([B)V

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v12

    if-eqz v12, :cond_f

    goto/16 :goto_7

    :cond_f
    if-nez v7, :cond_10

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v7

    :cond_10
    if-nez v7, :cond_11

    goto/16 :goto_7

    :cond_11
    iget-object v12, v1, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v12}, Lcom/jcraft/jsch/Packet;->reset()V

    iget-object v12, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v12, v10}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v12, "ssh-connection"

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v12, "publickey"

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v6}, Lcom/jcraft/jsch/Identity;->getAlgName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v10, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getSessionId()[B

    move-result-object v7

    array-length v10, v7

    add-int/lit8 v13, v10, 0x4

    iget-object v14, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    iget v14, v14, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v14, v13

    sub-int/2addr v14, v11

    new-array v14, v14, [B

    ushr-int/lit8 v15, v10, 0x18

    int-to-byte v15, v15

    aput-byte v15, v14, v4

    ushr-int/lit8 v15, v10, 0x10

    int-to-byte v15, v15

    aput-byte v15, v14, v12

    ushr-int/lit8 v15, v10, 0x8

    int-to-byte v15, v15

    const/16 v16, 0x2

    aput-byte v15, v14, v16

    const/4 v15, 0x3

    int-to-byte v9, v10

    aput-byte v9, v14, v15

    const/4 v9, 0x4

    invoke-static {v7, v4, v14, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v9, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v7, v7, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr v7, v11

    invoke-static {v9, v11, v14, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v6, v14}, Lcom/jcraft/jsch/Identity;->getSignature([B)[B

    move-result-object v6

    if-nez v6, :cond_12

    goto/16 :goto_8

    :cond_12
    iget-object v7, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    :cond_13
    :goto_6
    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v6

    iput-object v6, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x34

    if-ne v6, v7, :cond_14

    monitor-exit v2

    return v12

    :cond_14
    if-ne v6, v8, :cond_15

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    iget-object v7, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v7, :cond_13

    invoke-interface {v7, v6}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    const/16 v9, 0x33

    if-ne v6, v9, :cond_17

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v6, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    iget-object v7, v1, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v7

    if-nez v7, :cond_16

    iget v6, v0, Lcom/jcraft/jsch/Session;->auth_failures:I

    add-int/2addr v6, v12

    iput v6, v0, Lcom/jcraft/jsch/Session;->auth_failures:I

    goto :goto_7

    :cond_16
    new-instance v0, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_18
    :goto_8
    monitor-exit v2

    return v4

    :goto_9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
