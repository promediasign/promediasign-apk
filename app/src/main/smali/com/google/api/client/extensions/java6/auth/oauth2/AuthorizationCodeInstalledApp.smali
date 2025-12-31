.class public Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp$Browser;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final browser:Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp$Browser;

.field private final flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

.field private final receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp$Browser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    iput-object p1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    iput-object p1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    iput-object p3, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->browser:Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp$Browser;

    return-void
.end method


# virtual methods
.method public authorize(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->loadCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/Credential;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/Credential;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/Credential;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x3c

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {p1}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->stop()V

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {v0}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newAuthorizationUrl()Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->onAuthorization(Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;)V

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {v1}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->waitForCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v2, v1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newTokenRequest(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/TokenRequest;->execute()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v1, v0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->createAndStoreCredential(Lcom/google/api/client/auth/oauth2/TokenResponse;Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {v0}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->stop()V

    return-object p1

    :goto_1
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {v0}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->stop()V

    throw p1
.end method

.method public onAuthorization(Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->browser:Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp$Browser;

    check-cast v0, Lv/f;

    invoke-virtual {v0, p1}, Lv/f;->a(Ljava/lang/String;)V

    return-void
.end method
