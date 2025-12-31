.class public abstract Lcom/jcraft/jsch/UserAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected buf:Lcom/jcraft/jsch/Buffer;

.field protected packet:Lcom/jcraft/jsch/Packet;

.field protected userinfo:Lcom/jcraft/jsch/UserInfo;

.field protected username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getUserInfo()Lcom/jcraft/jsch/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    iget-object v0, p1, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->getBuffer()Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getUserName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
