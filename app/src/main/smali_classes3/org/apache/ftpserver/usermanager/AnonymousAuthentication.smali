.class public Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Authentication;


# instance fields
.field private userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/usermanager/impl/UserMetadata;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;->userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    return-void
.end method


# virtual methods
.method public getUserMetadata()Lorg/apache/ftpserver/usermanager/impl/UserMetadata;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;->userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    return-object v0
.end method
