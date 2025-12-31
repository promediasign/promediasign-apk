.class public Lcom/dropbox/core/oauth/DbxRefreshResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/oauth/DbxRefreshResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final expiresIn:J

.field private issueTime:J

.field private scope:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/oauth/DbxRefreshResult$1;

    invoke-direct {v0}, Lcom/dropbox/core/oauth/DbxRefreshResult$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/oauth/DbxRefreshResult;->Reader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/oauth/DbxRefreshResult;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->accessToken:Ljava/lang/String;

    iput-wide p2, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->expiresIn:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->issueTime:J

    iput-object p4, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->scope:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "access token can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresAt()Ljava/lang/Long;
    .locals 6

    iget-wide v0, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->issueTime:J

    iget-wide v2, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->expiresIn:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
