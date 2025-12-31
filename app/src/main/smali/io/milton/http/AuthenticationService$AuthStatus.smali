.class public Lio/milton/http/AuthenticationService$AuthStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/AuthenticationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthStatus"
.end annotation


# instance fields
.field public final auth:Lio/milton/http/Auth;

.field public final loginFailed:Z


# direct methods
.method public constructor <init>(Lio/milton/http/Auth;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/AuthenticationService$AuthStatus;->auth:Lio/milton/http/Auth;

    iput-boolean p2, p0, Lio/milton/http/AuthenticationService$AuthStatus;->loginFailed:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/milton/http/AuthenticationService$AuthStatus;->auth:Lio/milton/http/Auth;

    if-nez v0, :cond_0

    const-string v0, "AuthStatus: no creds"

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lio/milton/http/AuthenticationService$AuthStatus;->loginFailed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthStatus: login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lio/milton/http/AuthenticationService$AuthStatus;->auth:Lio/milton/http/Auth;

    invoke-virtual {v1}, Lio/milton/http/Auth;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthStatus: logged in: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
