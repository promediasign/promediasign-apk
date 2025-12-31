.class public Lcom/jcraft/jsch/DHEC384;
.super Lcom/jcraft/jsch/DHECN;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/DHECN;-><init>()V

    const-string v0, "sha-384"

    iput-object v0, p0, Lcom/jcraft/jsch/DHECN;->sha_name:Ljava/lang/String;

    const/16 v0, 0x180

    iput v0, p0, Lcom/jcraft/jsch/DHECN;->key_size:I

    return-void
.end method
