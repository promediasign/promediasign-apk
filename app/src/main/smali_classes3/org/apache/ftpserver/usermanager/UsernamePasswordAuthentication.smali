.class public Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Authentication;


# instance fields
.field private password:Ljava/lang/String;

.field private userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->username:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/usermanager/impl/UserMetadata;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMetadata()Lorg/apache/ftpserver/usermanager/impl/UserMetadata;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->userMetadata:Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->username:Ljava/lang/String;

    return-object v0
.end method
