.class public Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Authority;


# instance fields
.field private maxConcurrentLogins:I

.field private maxConcurrentLoginsPerIP:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLogins:I

    iput p2, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLoginsPerIP:I

    return-void
.end method


# virtual methods
.method public authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;
    .locals 3

    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLogins:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getConcurrentLogins()I

    move-result v2

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLoginsPerIP:I

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getConcurrentLoginsFromThisIP()I

    move-result v2

    if-ge v0, v2, :cond_1

    return-object v1

    :cond_1
    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLogins:I

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->setMaxConcurrentLogins(I)V

    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;->maxConcurrentLoginsPerIP:I

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->setMaxConcurrentLoginsPerIP(I)V

    return-object p1

    :cond_2
    return-object v1
.end method

.method public canAuthorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Z
    .locals 0

    instance-of p1, p1, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    return p1
.end method
