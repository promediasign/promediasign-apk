.class public Lorg/apache/ftpserver/usermanager/impl/WritePermission;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Authority;


# instance fields
.field private permissionRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/WritePermission;->permissionRoot:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/WritePermission;->permissionRoot:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;
    .locals 3

    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    invoke-virtual {p1}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;->getFile()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/WritePermission;->permissionRoot:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public canAuthorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Z
    .locals 0

    instance-of p1, p1, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    return p1
.end method
