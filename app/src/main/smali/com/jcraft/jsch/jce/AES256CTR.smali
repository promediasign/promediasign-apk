.class public Lcom/jcraft/jsch/jce/AES256CTR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getIVSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(I[B[B)V
    .locals 3

    array-length v0, p3

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    new-array v0, v2, [B

    invoke-static {p3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_0
    array-length v0, p2

    const/16 v2, 0x20

    if-le v0, v2, :cond_1

    new-array v0, v2, [B

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    :cond_1
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p2, "AES/CTR/NoPadding"

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    iput-object p2, p0, Lcom/jcraft/jsch/jce/AES256CTR;->cipher:Ljavax/crypto/Cipher;

    const-class p2, Ljavax/crypto/Cipher;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/jce/AES256CTR;->cipher:Ljavax/crypto/Cipher;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, p1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jcraft/jsch/jce/AES256CTR;->cipher:Ljavax/crypto/Cipher;

    throw p1
.end method

.method public isCBC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update([BII[BI)V
    .locals 6

    iget-object v0, p0, Lcom/jcraft/jsch/jce/AES256CTR;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    return-void
.end method
