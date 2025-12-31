.class public Lorg/apache/mina/filter/ssl/KeyStoreFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:[B

.field private password:[C

.field private provider:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "JKS"

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->provider:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->password:[C

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->data:[B

    return-void
.end method

.method private setData(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->setData([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    throw v0
.end method


# virtual methods
.method public newInstance()Ljava/security/KeyStore;
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->data:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->provider:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->type:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->type:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->data:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->password:[C

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data property is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData([B)V
    .locals 3

    .line 2
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->data:[B

    return-void
.end method

.method public setDataFile(Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->setData(Ljava/io/InputStream;)V

    return-void
.end method

.method public setDataUrl(Ljava/net/URL;)V
    .locals 0

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->setData(Ljava/io/InputStream;)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->password:[C

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->password:[C

    :goto_0
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->provider:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/KeyStoreFactory;->type:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
