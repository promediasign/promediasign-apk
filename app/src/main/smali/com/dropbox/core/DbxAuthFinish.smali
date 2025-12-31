.class public final Lcom/dropbox/core/DbxAuthFinish;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AccessTokenReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BearerTokenTypeReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/DbxAuthFinish;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final accountId:Ljava/lang/String;

.field private final expiresIn:Ljava/lang/Long;

.field private issueTime:J

.field private final refreshToken:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private final teamId:Ljava/lang/String;

.field private final urlState:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$1;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$2;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->BearerTokenTypeReader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$3;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$3;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->AccessTokenReader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/DbxAuthFinish;->accessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/dropbox/core/DbxAuthFinish;->expiresIn:Ljava/lang/Long;

    iput-object p3, p0, Lcom/dropbox/core/DbxAuthFinish;->refreshToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/DbxAuthFinish;->userId:Ljava/lang/String;

    iput-object p6, p0, Lcom/dropbox/core/DbxAuthFinish;->accountId:Ljava/lang/String;

    iput-object p5, p0, Lcom/dropbox/core/DbxAuthFinish;->teamId:Ljava/lang/String;

    iput-object p7, p0, Lcom/dropbox/core/DbxAuthFinish;->urlState:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/dropbox/core/DbxAuthFinish;->issueTime:J

    iput-object p8, p0, Lcom/dropbox/core/DbxAuthFinish;->scope:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresAt()Ljava/lang/Long;
    .locals 7

    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->expiresIn:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-wide v1, p0, Lcom/dropbox/core/DbxAuthFinish;->issueTime:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setIssueTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/dropbox/core/DbxAuthFinish;->issueTime:J

    return-void
.end method

.method public withUrlState(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 10

    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->urlState:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dropbox/core/DbxAuthFinish;

    iget-object v2, p0, Lcom/dropbox/core/DbxAuthFinish;->accessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxAuthFinish;->expiresIn:Ljava/lang/Long;

    iget-object v4, p0, Lcom/dropbox/core/DbxAuthFinish;->refreshToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/DbxAuthFinish;->userId:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/DbxAuthFinish;->teamId:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/DbxAuthFinish;->accountId:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/DbxAuthFinish;->scope:Ljava/lang/String;

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v9}, Lcom/dropbox/core/DbxAuthFinish;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/dropbox/core/DbxAuthFinish;->issueTime:J

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/DbxAuthFinish;->setIssueTime(J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already have URL state."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
