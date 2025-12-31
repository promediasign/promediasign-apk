.class public Lio/milton/http/LockToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private from:Ljava/util/Date;

.field public info:Lio/milton/http/LockInfo;

.field public timeout:Lio/milton/http/LockTimeout;

.field public tokenId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/milton/http/LockToken;->from:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/milton/http/LockInfo;Lio/milton/http/LockTimeout;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/milton/http/LockToken;->from:Ljava/util/Date;

    iput-object p1, p0, Lio/milton/http/LockToken;->tokenId:Ljava/lang/String;

    iput-object p2, p0, Lio/milton/http/LockToken;->info:Lio/milton/http/LockInfo;

    iput-object p3, p0, Lio/milton/http/LockToken;->timeout:Lio/milton/http/LockTimeout;

    return-void
.end method


# virtual methods
.method public getFrom()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/milton/http/LockToken;->from:Ljava/util/Date;

    return-object v0
.end method

.method public setFrom(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/LockToken;->from:Ljava/util/Date;

    return-void
.end method
