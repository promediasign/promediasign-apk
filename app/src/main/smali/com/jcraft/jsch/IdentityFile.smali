.class Lcom/jcraft/jsch/IdentityFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# instance fields
.field private identity:Ljava/lang/String;

.field private jsch:Lcom/jcraft/jsch/JSch;

.field private kpair:Lcom/jcraft/jsch/KeyPair;


# direct methods
.method private constructor <init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/IdentityFile;->jsch:Lcom/jcraft/jsch/JSch;

    iput-object p2, p0, Lcom/jcraft/jsch/IdentityFile;->identity:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;
    .locals 1

    .line 1
    invoke-static {p2, p0, p1}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object p1

    new-instance v0, Lcom/jcraft/jsch/IdentityFile;

    invoke-direct {v0, p2, p0, p1}, Lcom/jcraft/jsch/IdentityFile;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;
    .locals 0

    .line 2
    invoke-static {p3, p1, p2}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object p1

    new-instance p2, Lcom/jcraft/jsch/IdentityFile;

    invoke-direct {p2, p3, p0, p1}, Lcom/jcraft/jsch/IdentityFile;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    return-object p2
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method

.method public getAlgName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getKeyTypeName()[B

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public getKeyPair()Lcom/jcraft/jsch/KeyPair;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKeyBlob()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->getSignature([B)[B

    move-result-object p1

    return-object p1
.end method

.method public isEncrypted()Z
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public setPassphrase([B)Z
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->decrypt([B)Z

    move-result p1

    return p1
.end method
