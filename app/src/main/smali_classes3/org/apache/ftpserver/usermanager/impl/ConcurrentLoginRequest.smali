.class public Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/AuthorizationRequest;


# instance fields
.field private concurrentLogins:I

.field private concurrentLoginsFromThisIP:I

.field private maxConcurrentLogins:I

.field private maxConcurrentLoginsPerIP:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLogins:I

    iput v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLoginsPerIP:I

    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->concurrentLogins:I

    iput p2, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->concurrentLoginsFromThisIP:I

    return-void
.end method


# virtual methods
.method public getConcurrentLogins()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->concurrentLogins:I

    return v0
.end method

.method public getConcurrentLoginsFromThisIP()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->concurrentLoginsFromThisIP:I

    return v0
.end method

.method public getMaxConcurrentLogins()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLogins:I

    return v0
.end method

.method public getMaxConcurrentLoginsPerIP()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLoginsPerIP:I

    return v0
.end method

.method public setMaxConcurrentLogins(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLogins:I

    return-void
.end method

.method public setMaxConcurrentLoginsPerIP(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->maxConcurrentLoginsPerIP:I

    return-void
.end method
