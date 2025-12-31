.class public abstract Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;,
        Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;
    }
.end annotation


# instance fields
.field private final authorizationServerEncodedUrl:Ljava/lang/String;

.field private final clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private final clientId:Ljava/lang/String;

.field private final clock:Lcom/google/api/client/util/Clock;

.field private final credentialDataStore:Lcom/google/api/client/util/store/DataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/client/util/store/DataStore<",
            "Lcom/google/api/client/auth/oauth2/StoredCredential;",
            ">;"
        }
    .end annotation
.end field

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

.field private final refreshListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private final requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field private final scopes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenServerEncodedUrl:Ljava/lang/String;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->tokenServerEncodedUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->clientId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientId:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->authorizationServerEncodedUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->authorizationServerEncodedUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->scopes:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->scopes:Ljava/util/Collection;

    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->clock:Lcom/google/api/client/util/Clock;

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clock:Lcom/google/api/client/util/Clock;

    iget-object p1, p1, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->refreshListeners:Ljava/util/Collection;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->refreshListeners:Ljava/util/Collection;

    return-void
.end method

.method private newCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 3

    new-instance v0, Lcom/google/api/client/auth/oauth2/Credential$Builder;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    invoke-direct {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)V

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->tokenServerEncodedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clock:Lcom/google/api/client/util/Clock;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;

    invoke-direct {v2, p1, v1}, Lcom/google/api/client/auth/oauth2/DataStoreCredentialRefreshListener;-><init>(Ljava/lang/String;Lcom/google/api/client/util/store/DataStore;)V

    invoke-virtual {v0, v2}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->getRefreshListeners()Ljava/util/Collection;

    move-result-object p1

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->refreshListeners:Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->build()Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createAndStoreCredential(Lcom/google/api/client/auth/oauth2/TokenResponse;Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 2

    invoke-direct {p0, p2}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object p1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/api/client/auth/oauth2/StoredCredential;

    invoke-direct {v1, p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;-><init>(Lcom/google/api/client/auth/oauth2/Credential;)V

    invoke-interface {v0, p2, v1}, Lcom/google/api/client/util/store/DataStore;->set(Ljava/lang/String;Ljava/io/Serializable;)Lcom/google/api/client/util/store/DataStore;

    :cond_0
    return-object p1
.end method

.method public final getAuthorizationServerEncodedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->authorizationServerEncodedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClock()Lcom/google/api/client/util/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->clock:Lcom/google/api/client/util/Clock;

    return-object v0
.end method

.method public final getCredentialDataStore()Lcom/google/api/client/util/store/DataStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/client/util/store/DataStore<",
            "Lcom/google/api/client/auth/oauth2/StoredCredential;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    return-object v0
.end method

.method public final getCredentialStore()Lcom/google/api/client/auth/oauth2/CredentialStore;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    return-object v0
.end method

.method public final getRefreshListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->refreshListeners:Ljava/util/Collection;

    return-object v0
.end method

.method public final getRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    return-object v0
.end method

.method public final getScopes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->scopes:Ljava/util/Collection;

    return-object v0
.end method

.method public final getScopesAsString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/api/client/util/Joiner;->on(C)Lcom/google/api/client/util/Joiner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->scopes:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTokenServerEncodedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->tokenServerEncodedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public loadCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 3

    invoke-static {p1}, Lcom/google/api/client/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->credentialDataStore:Lcom/google/api/client/util/store/DataStore;

    invoke-interface {v2, p1}, Lcom/google/api/client/util/store/DataStore;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/StoredCredential;

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/Credential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;->getExpirationTimeMilliseconds()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    return-object v0
.end method

.method public abstract newAuthorizationUrl()Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
.end method

.method public abstract newTokenRequest(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;
.end method
