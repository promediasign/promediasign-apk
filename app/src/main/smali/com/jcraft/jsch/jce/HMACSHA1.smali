.class public Lcom/jcraft/jsch/jce/HMACSHA1;
.super Lcom/jcraft/jsch/jce/HMAC;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMAC;-><init>()V

    const-string v0, "hmac-sha1"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->name:Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, Lcom/jcraft/jsch/jce/HMAC;->bsize:I

    const-string v0, "HmacSHA1"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->algorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic doFinal([BI)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/jce/HMAC;->doFinal([BI)V

    return-void
.end method

.method public bridge synthetic getBlockSize()I
    .locals 1

    invoke-super {p0}, Lcom/jcraft/jsch/jce/HMAC;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic init([B)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMAC;->init([B)V

    return-void
.end method

.method public bridge synthetic update(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMAC;->update(I)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jce/HMAC;->update([BII)V

    return-void
.end method
