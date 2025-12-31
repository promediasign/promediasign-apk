.class public Lio/milton/config/HttpManagerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/config/HttpManagerBuilder$CreationException;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected authenticationHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/AuthenticationHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected authenticationService:Lio/milton/http/AuthenticationService;

.field protected basicHandler:Lio/milton/http/http11/auth/BasicAuthHandler;

.field protected beanPropertySource:Lio/milton/property/BeanPropertySource;

.field protected buffering:Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;

.field protected cacheControlHelper:Lio/milton/http/http11/CacheControlHelper;

.field private cacheManager:Lio/milton/cache/CacheManager;

.field protected contentGenerator:Lio/milton/http/http11/ContentGenerator;

.field protected contextPath:Ljava/lang/String;

.field protected controllers:Ljava/util/List;

.field protected cookieAuthenticationHandler:Lio/milton/http/http11/auth/CookieAuthenticationHandler;

.field protected cookieDelegateHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/AuthenticationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private cookieSigningKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cookieSigningKeysFile:Ljava/lang/String;

.field protected defaultPassword:Ljava/lang/String;

.field protected defaultStandardFilter:Lio/milton/http/Filter;

.field protected defaultUser:Ljava/lang/String;

.field private dependencies:Ljava/util/List;

.field protected digestHandler:Lio/milton/http/http11/auth/DigestAuthenticationHandler;

.field protected displayNameFormatter:Lio/milton/http/webdav/DisplayNameFormatter;

.field protected eTagGenerator:Lio/milton/http/http11/ETagGenerator;

.field protected enableBasicAuth:Z

.field protected enableCompression:Z

.field protected enableCookieAuth:Z

.field protected enableDigestAuth:Z

.field protected enableEarlyAuth:Z

.field protected enableExpectContinue:Z

.field protected enableFormAuth:Z

.field private enableOAuth2:Z

.field protected enableOptionsAuth:Z

.field private enableQuota:Z

.field protected enableTextContentProperty:Z

.field protected enabledCkBrowser:Z

.field protected enabledJson:Z

.field protected entityTransport:Lio/milton/http/entity/EntityTransport;

.field protected eventManager:Lio/milton/event/EventManager;

.field protected expiredNonceRemover:Lio/milton/http/http11/auth/ExpiredNonceRemover;

.field protected extraAuthenticationHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/AuthenticationHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected extraPropertySources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/property/PropertySource;",
            ">;"
        }
    .end annotation
.end field

.field protected fileContentService:Lio/milton/http/fs/FileContentService;

.field protected filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/Filter;",
            ">;"
        }
    .end annotation
.end field

.field protected formAuthenticationHandler:Lio/milton/http/http11/auth/FormAuthenticationHandler;

.field private fsHomeDir:Ljava/lang/String;

.field protected fsRealm:Ljava/lang/String;

.field protected handlerHelper:Lio/milton/http/HandlerHelper;

.field protected http11ResponseHandler:Lio/milton/http/http11/Http11ResponseHandler;

.field protected initDone:Z

.field protected listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected loginPage:Ljava/lang/String;

.field protected loginPageExcludePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected loginPageTypeHandler:Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;

.field protected loginResponseHandler:Lio/milton/http/http11/auth/LoginResponseHandler;

.field protected mainResourceFactory:Lio/milton/http/ResourceFactory;

.field protected mapOfNameAndPasswords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected matchHelper:Lio/milton/http/http11/MatchHelper;

.field private maxAgeSeconds:Ljava/lang/Long;

.field protected multiNamespaceCustomPropertySource:Lio/milton/property/MultiNamespaceCustomPropertySource;

.field protected multiNamespaceCustomPropertySourceEnabled:Z

.field protected nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

.field protected nonceValiditySeconds:I

.field protected nonces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lio/milton/http/http11/auth/Nonce;",
            ">;"
        }
    .end annotation
.end field

.field private oAuth2Handler:Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;

.field protected outerResourceFactory:Lio/milton/http/ResourceFactory;

.field protected outerWebdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

.field protected partialGetHelper:Lio/milton/http/http11/PartialGetHelper;

.field private propFindPropertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

.field private propFindRequestFieldParser:Lio/milton/http/webdav/PropFindRequestFieldParser;

.field protected propFindXmlGenerator:Lio/milton/http/webdav/PropFindXmlGenerator;

.field protected propPatchSetter:Lio/milton/http/webdav/PropPatchSetter;

.field protected propertyAuthoriser:Lio/milton/property/PropertyAuthoriser;

.field protected propertySources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/property/PropertySource;",
            ">;"
        }
    .end annotation
.end field

.field protected protocolHandlers:Lio/milton/http/ProtocolHandlers;

.field protected protocols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/milton/http/HttpExtension;",
            ">;"
        }
    .end annotation
.end field

.field protected quotaDataAccessor:Lio/milton/http/quota/QuotaDataAccessor;

.field protected resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

.field protected resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

.field private rootContext:Lio/milton/context/RootContext;

.field protected rootDir:Ljava/io/File;

.field protected securityManager:Lio/milton/http/SecurityManager;

.field protected shutdownHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected urlAdapter:Lio/milton/http/UrlAdapter;

.field private useLongLivedCookies:Z

.field protected userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;

.field protected valueWriters:Lio/milton/http/values/ValueWriters;

.field protected webDavProtocol:Lio/milton/http/webdav/WebDavProtocol;

.field protected webdavEnabled:Z

.field protected webdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/config/HttpManagerBuilder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/milton/http/fs/SimpleFileContentService;

    invoke-direct {v0}, Lio/milton/http/fs/SimpleFileContentService;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->fileContentService:Lio/milton/http/fs/FileContentService;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->nonces:Ljava/util/Map;

    const v0, 0x15180

    iput v0, p0, Lio/milton/config/HttpManagerBuilder;->nonceValiditySeconds:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->shutdownHandlers:Ljava/util/List;

    new-instance v0, Lio/milton/http/http11/SimpleContentGenerator;

    invoke-direct {v0}, Lio/milton/http/http11/SimpleContentGenerator;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->contentGenerator:Lio/milton/http/http11/ContentGenerator;

    new-instance v0, Lio/milton/http/http11/DefaultCacheControlHelper;

    invoke-direct {v0}, Lio/milton/http/http11/DefaultCacheControlHelper;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cacheControlHelper:Lio/milton/http/http11/CacheControlHelper;

    new-instance v0, Lio/milton/event/EventManagerImpl;

    invoke-direct {v0}, Lio/milton/event/EventManagerImpl;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->eventManager:Lio/milton/event/EventManager;

    new-instance v0, Lio/milton/http/http11/DefaultETagGenerator;

    invoke-direct {v0}, Lio/milton/http/http11/DefaultETagGenerator;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    new-instance v0, Lio/milton/http/values/ValueWriters;

    invoke-direct {v0}, Lio/milton/http/values/ValueWriters;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->valueWriters:Lio/milton/http/values/ValueWriters;

    new-instance v0, Lio/milton/http/StandardFilter;

    invoke-direct {v0}, Lio/milton/http/StandardFilter;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->defaultStandardFilter:Lio/milton/http/Filter;

    new-instance v0, Lio/milton/http/UrlAdapterImpl;

    invoke-direct {v0}, Lio/milton/http/UrlAdapterImpl;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->urlAdapter:Lio/milton/http/UrlAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableOptionsAuth:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/milton/config/HttpManagerBuilder;->enableCompression:Z

    iput-boolean v1, p0, Lio/milton/config/HttpManagerBuilder;->enabledJson:Z

    iput-boolean v1, p0, Lio/milton/config/HttpManagerBuilder;->enableBasicAuth:Z

    iput-boolean v1, p0, Lio/milton/config/HttpManagerBuilder;->enableDigestAuth:Z

    iput-boolean v1, p0, Lio/milton/config/HttpManagerBuilder;->enableFormAuth:Z

    iput-boolean v1, p0, Lio/milton/config/HttpManagerBuilder;->enableCookieAuth:Z

    iput-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enabledCkBrowser:Z

    iput-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableEarlyAuth:Z

    iput-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableTextContentProperty:Z

    const-string v2, "/login.html"

    iput-object v2, p0, Lio/milton/config/HttpManagerBuilder;->loginPage:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lio/milton/config/HttpManagerBuilder;->rootDir:Ljava/io/File;

    const-string v3, "milton"

    iput-object v3, p0, Lio/milton/config/HttpManagerBuilder;->fsRealm:Ljava/lang/String;

    const-string v3, "user"

    iput-object v3, p0, Lio/milton/config/HttpManagerBuilder;->defaultUser:Ljava/lang/String;

    const-string v3, "password"

    iput-object v3, p0, Lio/milton/config/HttpManagerBuilder;->defaultPassword:Ljava/lang/String;

    iput-boolean v1, p0, Lio/milton/config/HttpManagerBuilder;->multiNamespaceCustomPropertySourceEnabled:Z

    new-instance v3, Lio/milton/http/webdav/DefaultDisplayNameFormatter;

    invoke-direct {v3}, Lio/milton/http/webdav/DefaultDisplayNameFormatter;-><init>()V

    iput-object v3, p0, Lio/milton/config/HttpManagerBuilder;->displayNameFormatter:Lio/milton/http/webdav/DisplayNameFormatter;

    iput-boolean v1, p0, Lio/milton/config/HttpManagerBuilder;->webdavEnabled:Z

    new-instance v3, Lio/milton/http/http11/auth/LoginResponseHandler$ContentTypeLoginPageTypeHandler;

    invoke-direct {v3}, Lio/milton/http/http11/auth/LoginResponseHandler$ContentTypeLoginPageTypeHandler;-><init>()V

    iput-object v3, p0, Lio/milton/config/HttpManagerBuilder;->loginPageTypeHandler:Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;

    iput-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableExpectContinue:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/milton/config/HttpManagerBuilder;->controllers:Ljava/util/List;

    const-wide/16 v3, 0xa

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lio/milton/config/HttpManagerBuilder;->maxAgeSeconds:Ljava/lang/Long;

    iput-object v2, p0, Lio/milton/config/HttpManagerBuilder;->fsHomeDir:Ljava/lang/String;

    new-instance v2, Lio/milton/cache/LocalCacheManager;

    invoke-direct {v2}, Lio/milton/cache/LocalCacheManager;-><init>()V

    iput-object v2, p0, Lio/milton/config/HttpManagerBuilder;->cacheManager:Lio/milton/cache/CacheManager;

    new-instance v2, Lio/milton/context/RootContext;

    invoke-direct {v2}, Lio/milton/context/RootContext;-><init>()V

    iput-object v2, p0, Lio/milton/config/HttpManagerBuilder;->rootContext:Lio/milton/context/RootContext;

    iput-boolean v1, p0, Lio/milton/config/HttpManagerBuilder;->useLongLivedCookies:Z

    iput-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableQuota:Z

    iput-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableOAuth2:Z

    return-void
.end method

.method private init(Lio/milton/http/AuthenticationService;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->buildResourceTypeHelper()V

    :cond_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propFindXmlGenerator:Lio/milton/http/webdav/PropFindXmlGenerator;

    if-nez v0, :cond_1

    new-instance v0, Lio/milton/http/webdav/PropFindXmlGenerator;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->valueWriters:Lio/milton/http/values/ValueWriters;

    invoke-direct {v0, v1}, Lio/milton/http/webdav/PropFindXmlGenerator;-><init>(Lio/milton/http/values/ValueWriters;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propFindXmlGenerator:Lio/milton/http/webdav/PropFindXmlGenerator;

    const-string v1, "propFindXmlGenerator"

    invoke-virtual {p0, v1, v0}, Lio/milton/config/HttpManagerBuilder;->showLog(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->http11ResponseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lio/milton/config/HttpManagerBuilder;->createDefaultHttp11ResponseHandler(Lio/milton/http/AuthenticationService;)Lio/milton/http/http11/DefaultHttp11ResponseHandler;

    move-result-object p1

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cacheControlHelper:Lio/milton/http/http11/CacheControlHelper;

    invoke-virtual {p1, v0}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->setCacheControlHelper(Lio/milton/http/http11/CacheControlHelper;)V

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->buffering:Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;

    invoke-virtual {p1, v0}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->setBuffering(Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;)V

    iput-object p1, p0, Lio/milton/config/HttpManagerBuilder;->http11ResponseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    const-string v0, "http11ResponseHandler"

    invoke-virtual {p0, v0, p1}, Lio/milton/config/HttpManagerBuilder;->showLog(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lio/milton/config/HttpManagerBuilder;->webdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    if-nez p1, :cond_3

    new-instance p1, Lio/milton/http/webdav/DefaultWebDavResponseHandler;

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->http11ResponseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->propFindXmlGenerator:Lio/milton/http/webdav/PropFindXmlGenerator;

    invoke-direct {p1, v0, v1, v2}, Lio/milton/http/webdav/DefaultWebDavResponseHandler;-><init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/webdav/ResourceTypeHelper;Lio/milton/http/webdav/PropFindXmlGenerator;)V

    iput-object p1, p0, Lio/milton/config/HttpManagerBuilder;->webdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    :cond_3
    iget-object p1, p0, Lio/milton/config/HttpManagerBuilder;->webdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iput-object p1, p0, Lio/milton/config/HttpManagerBuilder;->outerWebdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iget-boolean p1, p0, Lio/milton/config/HttpManagerBuilder;->enableCompression:Z

    if-eqz p1, :cond_4

    new-instance p1, Lio/milton/http/CompressingResponseHandler;

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->webdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-direct {p1, v0}, Lio/milton/http/CompressingResponseHandler;-><init>(Lio/milton/http/webdav/WebDavResponseHandler;)V

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->buffering:Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;

    invoke-virtual {p1, v0}, Lio/milton/http/AbstractWrappingResponseHandler;->setBuffering(Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;)V

    iput-object p1, p0, Lio/milton/config/HttpManagerBuilder;->outerWebdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    const-string p1, "webdavResponseHandler"

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->webdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-virtual {p0, p1, v0}, Lio/milton/config/HttpManagerBuilder;->showLog(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-boolean p1, p0, Lio/milton/config/HttpManagerBuilder;->enableFormAuth:Z

    if-eqz p1, :cond_5

    sget-object p1, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    const-string v0, "form authentication is enabled, so wrap response handler with {}"

    const-class v1, Lio/milton/http/http11/auth/LoginResponseHandler;

    invoke-interface {p1, v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/milton/config/HttpManagerBuilder;->loginResponseHandler:Lio/milton/http/http11/auth/LoginResponseHandler;

    if-nez p1, :cond_5

    new-instance p1, Lio/milton/http/http11/auth/LoginResponseHandler;

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->outerWebdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->mainResourceFactory:Lio/milton/http/ResourceFactory;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->loginPageTypeHandler:Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;

    invoke-direct {p1, v0, v1, v2}, Lio/milton/http/http11/auth/LoginResponseHandler;-><init>(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/ResourceFactory;Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;)V

    iput-object p1, p0, Lio/milton/config/HttpManagerBuilder;->loginResponseHandler:Lio/milton/http/http11/auth/LoginResponseHandler;

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->loginPageExcludePaths:Ljava/util/List;

    invoke-virtual {p1, v0}, Lio/milton/http/http11/auth/LoginResponseHandler;->setExcludePaths(Ljava/util/List;)V

    iget-object p1, p0, Lio/milton/config/HttpManagerBuilder;->loginResponseHandler:Lio/milton/http/http11/auth/LoginResponseHandler;

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->loginPage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/milton/http/http11/auth/LoginResponseHandler;->setLoginPage(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/config/HttpManagerBuilder;->loginResponseHandler:Lio/milton/http/http11/auth/LoginResponseHandler;

    iput-object p1, p0, Lio/milton/config/HttpManagerBuilder;->outerWebdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    :cond_5
    invoke-direct {p0}, Lio/milton/config/HttpManagerBuilder;->initAnnotatedResourceFactory()V

    invoke-direct {p0}, Lio/milton/config/HttpManagerBuilder;->initProtocols()V

    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->afterInit()V

    return-void
.end method

.method private initAnnotatedResourceFactory()V
    .locals 3

    const-string v0, "Exception initialising AnnotationResourceFactory"

    sget-object v1, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    const-string v2, "initAnnotatedResourceFactory"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->getMainResourceFactory()Lio/milton/http/ResourceFactory;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private initProtocols()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->initDone:Z

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->handlerHelper:Lio/milton/http/HandlerHelper;

    if-nez v0, :cond_0

    new-instance v0, Lio/milton/http/HandlerHelper;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->authenticationService:Lio/milton/http/AuthenticationService;

    invoke-direct {v0, v1}, Lio/milton/http/HandlerHelper;-><init>(Lio/milton/http/AuthenticationService;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->handlerHelper:Lio/milton/http/HandlerHelper;

    const-string v1, "handlerHelper"

    invoke-virtual {p0, v1, v0}, Lio/milton/config/HttpManagerBuilder;->showLog(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableExpectContinue:Z

    if-nez v0, :cond_1

    sget-object v0, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    const-string v1, "ExpectContinue support has been disabled"

    :goto_0
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    const-string v1, "ExpectContinue is enabled. This can cause problems on most servlet containers with clients such as CyberDuck"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->handlerHelper:Lio/milton/http/HandlerHelper;

    iget-boolean v1, p0, Lio/milton/config/HttpManagerBuilder;->enableExpectContinue:Z

    invoke-virtual {v0, v1}, Lio/milton/http/HandlerHelper;->setEnableExpectContinue(Z)V

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    if-nez v0, :cond_2

    new-instance v0, Lio/milton/http/ResourceHandlerHelper;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->handlerHelper:Lio/milton/http/HandlerHelper;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->urlAdapter:Lio/milton/http/UrlAdapter;

    iget-object v3, p0, Lio/milton/config/HttpManagerBuilder;->webdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iget-object v4, p0, Lio/milton/config/HttpManagerBuilder;->authenticationService:Lio/milton/http/AuthenticationService;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/milton/http/ResourceHandlerHelper;-><init>(Lio/milton/http/HandlerHelper;Lio/milton/http/UrlAdapter;Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/AuthenticationService;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    const-string v1, "resourceHandlerHelper"

    invoke-virtual {p0, v1, v0}, Lio/milton/config/HttpManagerBuilder;->showLog(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->buildOuterResourceFactory()V

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->listeners:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_4
    :goto_2
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->webdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

    invoke-virtual {p0, v0, v1}, Lio/milton/config/HttpManagerBuilder;->buildProtocolHandlers(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/webdav/ResourceTypeHelper;)V

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->filters:Ljava/util/List;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->filters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->filters:Ljava/util/List;

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :goto_4
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->filters:Ljava/util/List;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->defaultStandardFilter:Lio/milton/http/Filter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public afterInit()V
    .locals 0

    return-void
.end method

.method public buildHttpManager()Lio/milton/http/HttpManager;
    .locals 11

    iget-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->initDone:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->init()V

    :cond_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->listeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->entityTransport:Lio/milton/http/entity/EntityTransport;

    if-nez v0, :cond_3

    new-instance v0, Lio/milton/http/entity/DefaultEntityTransport;

    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->userAgentHelper()Lio/milton/http/webdav/UserAgentHelper;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/milton/http/entity/DefaultEntityTransport;-><init>(Lio/milton/http/webdav/UserAgentHelper;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->entityTransport:Lio/milton/http/entity/EntityTransport;

    :cond_3
    new-instance v0, Lio/milton/http/HttpManager;

    iget-object v4, p0, Lio/milton/config/HttpManagerBuilder;->outerResourceFactory:Lio/milton/http/ResourceFactory;

    iget-object v5, p0, Lio/milton/config/HttpManagerBuilder;->outerWebdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iget-object v6, p0, Lio/milton/config/HttpManagerBuilder;->protocolHandlers:Lio/milton/http/ProtocolHandlers;

    iget-object v7, p0, Lio/milton/config/HttpManagerBuilder;->entityTransport:Lio/milton/http/entity/EntityTransport;

    iget-object v8, p0, Lio/milton/config/HttpManagerBuilder;->filters:Ljava/util/List;

    iget-object v9, p0, Lio/milton/config/HttpManagerBuilder;->eventManager:Lio/milton/event/EventManager;

    iget-object v10, p0, Lio/milton/config/HttpManagerBuilder;->shutdownHandlers:Ljava/util/List;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lio/milton/http/HttpManager;-><init>(Lio/milton/http/ResourceFactory;Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/ProtocolHandlers;Lio/milton/http/entity/EntityTransport;Ljava/util/List;Lio/milton/event/EventManager;Ljava/util/List;)V

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->listeners:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    throw v1

    :cond_5
    :goto_1
    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->expiredNonceRemover:Lio/milton/http/http11/auth/ExpiredNonceRemover;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->shutdownHandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    const-string v2, "Starting {} this will remove Digest nonces from memory when they expire"

    iget-object v3, p0, Lio/milton/config/HttpManagerBuilder;->expiredNonceRemover:Lio/milton/http/http11/auth/ExpiredNonceRemover;

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->expiredNonceRemover:Lio/milton/http/http11/auth/ExpiredNonceRemover;

    invoke-virtual {v1}, Lio/milton/http/http11/auth/ExpiredNonceRemover;->start()V

    :cond_6
    return-object v0
.end method

.method public buildJsonResourceFactory()Lio/milton/http/json/JsonResourceFactory;
    .locals 5

    new-instance v0, Lio/milton/http/json/JsonPropFindHandler;

    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->propFindPropertyBuilder()Lio/milton/http/webdav/PropFindPropertyBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/milton/http/json/JsonPropFindHandler;-><init>(Lio/milton/http/webdav/PropFindPropertyBuilder;)V

    new-instance v1, Lio/milton/http/json/JsonPropPatchHandler;

    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->buildPatchSetter()Lio/milton/http/webdav/PropPatchSetter;

    move-result-object v2

    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->initPropertyAuthoriser()Lio/milton/property/PropertyAuthoriser;

    move-result-object v3

    iget-object v4, p0, Lio/milton/config/HttpManagerBuilder;->eventManager:Lio/milton/event/EventManager;

    invoke-direct {v1, v2, v3, v4}, Lio/milton/http/json/JsonPropPatchHandler;-><init>(Lio/milton/http/webdav/PropPatchSetter;Lio/milton/property/PropertyAuthoriser;Lio/milton/event/EventManager;)V

    new-instance v2, Lio/milton/http/json/JsonResourceFactory;

    iget-object v3, p0, Lio/milton/config/HttpManagerBuilder;->outerResourceFactory:Lio/milton/http/ResourceFactory;

    iget-object v4, p0, Lio/milton/config/HttpManagerBuilder;->eventManager:Lio/milton/event/EventManager;

    invoke-direct {v2, v3, v4, v0, v1}, Lio/milton/http/json/JsonResourceFactory;-><init>(Lio/milton/http/ResourceFactory;Lio/milton/event/EventManager;Lio/milton/http/json/JsonPropFindHandler;Lio/milton/http/json/JsonPropPatchHandler;)V

    return-object v2
.end method

.method public buildOuterResourceFactory()V
    .locals 3

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->outerResourceFactory:Lio/milton/http/ResourceFactory;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->mainResourceFactory:Lio/milton/http/ResourceFactory;

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->outerResourceFactory:Lio/milton/http/ResourceFactory;

    iget-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enabledJson:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->buildJsonResourceFactory()Lio/milton/http/json/JsonResourceFactory;

    move-result-object v0

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->outerResourceFactory:Lio/milton/http/ResourceFactory;

    sget-object v1, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Enabled json/ajax gatewayw with: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enabledCkBrowser:Z

    if-eqz v0, :cond_1

    new-instance v0, Lio/milton/http/fck/FckResourceFactory;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->outerResourceFactory:Lio/milton/http/ResourceFactory;

    invoke-direct {v0, v1}, Lio/milton/http/fck/FckResourceFactory;-><init>(Lio/milton/http/ResourceFactory;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->outerResourceFactory:Lio/milton/http/ResourceFactory;

    sget-object v1, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Enabled CK Editor support with: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public buildPatchSetter()Lio/milton/http/webdav/PropPatchSetter;
    .locals 2

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propPatchSetter:Lio/milton/http/webdav/PropPatchSetter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propertySources:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Lio/milton/http/webdav/PropertySourcePatchSetter;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->propertySources:Ljava/util/List;

    invoke-direct {v0, v1}, Lio/milton/http/webdav/PropertySourcePatchSetter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propPatchSetter:Lio/milton/http/webdav/PropPatchSetter;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Property sources have not been initialised yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propPatchSetter:Lio/milton/http/webdav/PropPatchSetter;

    return-object v0
.end method

.method public buildProtocolHandlers(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/webdav/ResourceTypeHelper;)V
    .locals 8

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->protocols:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->protocols:Ljava/util/ArrayList;

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->matchHelper:Lio/milton/http/http11/MatchHelper;

    if-nez v0, :cond_0

    new-instance v0, Lio/milton/http/http11/MatchHelper;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    invoke-direct {v0, v1}, Lio/milton/http/http11/MatchHelper;-><init>(Lio/milton/http/http11/ETagGenerator;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->matchHelper:Lio/milton/http/http11/MatchHelper;

    :cond_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->partialGetHelper:Lio/milton/http/http11/PartialGetHelper;

    if-nez v0, :cond_1

    new-instance v0, Lio/milton/http/http11/PartialGetHelper;

    invoke-direct {v0}, Lio/milton/http/http11/PartialGetHelper;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->partialGetHelper:Lio/milton/http/http11/PartialGetHelper;

    :cond_1
    new-instance v0, Lio/milton/http/http11/Http11Protocol;

    iget-object v3, p0, Lio/milton/config/HttpManagerBuilder;->handlerHelper:Lio/milton/http/HandlerHelper;

    iget-object v4, p0, Lio/milton/config/HttpManagerBuilder;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    iget-boolean v5, p0, Lio/milton/config/HttpManagerBuilder;->enableOptionsAuth:Z

    iget-object v6, p0, Lio/milton/config/HttpManagerBuilder;->matchHelper:Lio/milton/http/http11/MatchHelper;

    iget-object v7, p0, Lio/milton/config/HttpManagerBuilder;->partialGetHelper:Lio/milton/http/http11/PartialGetHelper;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/milton/http/http11/Http11Protocol;-><init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/HandlerHelper;Lio/milton/http/ResourceHandlerHelper;ZLio/milton/http/http11/MatchHelper;Lio/milton/http/http11/PartialGetHelper;)V

    iget-object p1, p0, Lio/milton/config/HttpManagerBuilder;->protocols:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lio/milton/config/HttpManagerBuilder;->initDefaultPropertySources(Lio/milton/http/webdav/ResourceTypeHelper;)Ljava/util/List;

    iget-object p1, p0, Lio/milton/config/HttpManagerBuilder;->extraPropertySources:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/milton/property/PropertySource;

    sget-object v0, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Add extra property source: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propertySources:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->initWebdavProtocol()V

    iget-object p1, p0, Lio/milton/config/HttpManagerBuilder;->webDavProtocol:Lio/milton/http/webdav/WebDavProtocol;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lio/milton/config/HttpManagerBuilder;->protocols:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lio/milton/config/HttpManagerBuilder;->protocolHandlers:Lio/milton/http/ProtocolHandlers;

    if-nez p1, :cond_4

    new-instance p1, Lio/milton/http/ProtocolHandlers;

    iget-object p2, p0, Lio/milton/config/HttpManagerBuilder;->protocols:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Lio/milton/http/ProtocolHandlers;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lio/milton/config/HttpManagerBuilder;->protocolHandlers:Lio/milton/http/ProtocolHandlers;

    :cond_4
    return-void
.end method

.method public buildResourceTypeHelper()V
    .locals 2

    new-instance v0, Lio/milton/http/webdav/WebDavResourceTypeHelper;

    invoke-direct {v0}, Lio/milton/http/webdav/WebDavResourceTypeHelper;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

    const-string v1, "resourceTypeHelper"

    invoke-virtual {p0, v1, v0}, Lio/milton/config/HttpManagerBuilder;->showLog(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public createDefaultHttp11ResponseHandler(Lio/milton/http/AuthenticationService;)Lio/milton/http/http11/DefaultHttp11ResponseHandler;
    .locals 3

    new-instance v0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->contentGenerator:Lio/milton/http/http11/ContentGenerator;

    invoke-direct {v0, p1, v1, v2}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;-><init>(Lio/milton/http/AuthenticationService;Lio/milton/http/http11/ETagGenerator;Lio/milton/http/http11/ContentGenerator;)V

    return-object v0
.end method

.method public getEventManager()Lio/milton/event/EventManager;
    .locals 1

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->eventManager:Lio/milton/event/EventManager;

    return-object v0
.end method

.method public getMainResourceFactory()Lio/milton/http/ResourceFactory;
    .locals 1

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->mainResourceFactory:Lio/milton/http/ResourceFactory;

    return-object v0
.end method

.method public final init()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->listeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->dependencies:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->rootContext:Lio/milton/context/RootContext;

    invoke-virtual {v2, v1}, Lio/milton/context/Context;->put(Ljava/lang/Object;)Lio/milton/context/Registration;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->mainResourceFactory:Lio/milton/http/ResourceFactory;

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->fsHomeDir:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->fsHomeDir:Ljava/lang/String;

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->fsHomeDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->rootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->rootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    const-string v1, "Using FileSystemResourceFactory with context path: {}"

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->contextPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lio/milton/http/fs/FileSystemResourceFactory;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->rootDir:Ljava/io/File;

    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->securityManager()Lio/milton/http/SecurityManager;

    move-result-object v3

    iget-object v4, p0, Lio/milton/config/HttpManagerBuilder;->contextPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lio/milton/http/fs/FileSystemResourceFactory;-><init>(Ljava/io/File;Lio/milton/http/SecurityManager;Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->fileContentService:Lio/milton/http/fs/FileContentService;

    invoke-virtual {v1, v2}, Lio/milton/http/fs/FileSystemResourceFactory;->setContentService(Lio/milton/http/fs/FileContentService;)V

    iput-object v1, p0, Lio/milton/config/HttpManagerBuilder;->mainResourceFactory:Lio/milton/http/ResourceFactory;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Using file system with root directory: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Root directory is not valid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->rootDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->mainResourceFactory:Lio/milton/http/ResourceFactory;

    sget-object v1, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Using mainResourceFactory: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->authenticationService:Lio/milton/http/AuthenticationService;

    if-nez v0, :cond_17

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->basicHandler:Lio/milton/http/http11/auth/BasicAuthHandler;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableBasicAuth:Z

    if-eqz v0, :cond_6

    new-instance v0, Lio/milton/http/http11/auth/BasicAuthHandler;

    invoke-direct {v0}, Lio/milton/http/http11/auth/BasicAuthHandler;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->basicHandler:Lio/milton/http/http11/auth/BasicAuthHandler;

    :cond_6
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->basicHandler:Lio/milton/http/http11/auth/BasicAuthHandler;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    if-nez v0, :cond_9

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->expiredNonceRemover:Lio/milton/http/http11/auth/ExpiredNonceRemover;

    if-nez v0, :cond_8

    new-instance v0, Lio/milton/http/http11/auth/ExpiredNonceRemover;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->nonces:Ljava/util/Map;

    iget v3, p0, Lio/milton/config/HttpManagerBuilder;->nonceValiditySeconds:I

    invoke-direct {v0, v2, v3}, Lio/milton/http/http11/auth/ExpiredNonceRemover;-><init>(Ljava/util/Map;I)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->expiredNonceRemover:Lio/milton/http/http11/auth/ExpiredNonceRemover;

    const-string v2, "expiredNonceRemover"

    invoke-virtual {p0, v2, v0}, Lio/milton/config/HttpManagerBuilder;->showLog(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    new-instance v0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;

    iget v2, p0, Lio/milton/config/HttpManagerBuilder;->nonceValiditySeconds:I

    iget-object v3, p0, Lio/milton/config/HttpManagerBuilder;->expiredNonceRemover:Lio/milton/http/http11/auth/ExpiredNonceRemover;

    iget-object v4, p0, Lio/milton/config/HttpManagerBuilder;->nonces:Ljava/util/Map;

    invoke-direct {v0, v2, v3, v4}, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;-><init>(ILio/milton/http/http11/auth/ExpiredNonceRemover;Ljava/util/Map;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    const-string v2, "nonceProvider"

    invoke-virtual {p0, v2, v0}, Lio/milton/config/HttpManagerBuilder;->showLog(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->digestHandler:Lio/milton/http/http11/auth/DigestAuthenticationHandler;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableDigestAuth:Z

    if-eqz v0, :cond_a

    new-instance v0, Lio/milton/http/http11/auth/DigestAuthenticationHandler;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    invoke-direct {v0, v2}, Lio/milton/http/http11/auth/DigestAuthenticationHandler;-><init>(Lio/milton/http/http11/auth/NonceProvider;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->digestHandler:Lio/milton/http/http11/auth/DigestAuthenticationHandler;

    :cond_a
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->digestHandler:Lio/milton/http/http11/auth/DigestAuthenticationHandler;

    if-eqz v0, :cond_b

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->oAuth2Handler:Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableOAuth2:Z

    if-eqz v0, :cond_c

    new-instance v0, Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    invoke-direct {v0, v2}, Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;-><init>(Lio/milton/http/http11/auth/NonceProvider;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->oAuth2Handler:Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;

    :cond_c
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->oAuth2Handler:Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;

    if-eqz v0, :cond_d

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->formAuthenticationHandler:Lio/milton/http/http11/auth/FormAuthenticationHandler;

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableFormAuth:Z

    if-eqz v0, :cond_e

    new-instance v0, Lio/milton/http/http11/auth/FormAuthenticationHandler;

    invoke-direct {v0}, Lio/milton/http/http11/auth/FormAuthenticationHandler;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->formAuthenticationHandler:Lio/milton/http/http11/auth/FormAuthenticationHandler;

    :cond_e
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->formAuthenticationHandler:Lio/milton/http/http11/auth/FormAuthenticationHandler;

    if-eqz v0, :cond_f

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->extraAuthenticationHandlers:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->extraAuthenticationHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Adding extra auth handlers: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->extraAuthenticationHandlers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_10
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieAuthenticationHandler:Lio/milton/http/http11/auth/CookieAuthenticationHandler;

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->enableCookieAuth:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieDelegateHandlers:Ljava/util/List;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieDelegateHandlers:Ljava/util/List;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->basicHandler:Lio/milton/http/http11/auth/BasicAuthHandler;

    if-eqz v1, :cond_11

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->basicHandler:Lio/milton/http/http11/auth/BasicAuthHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_11
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->digestHandler:Lio/milton/http/http11/auth/DigestAuthenticationHandler;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->cookieDelegateHandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->digestHandler:Lio/milton/http/http11/auth/DigestAuthenticationHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_12
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->formAuthenticationHandler:Lio/milton/http/http11/auth/FormAuthenticationHandler;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->cookieDelegateHandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->formAuthenticationHandler:Lio/milton/http/http11/auth/FormAuthenticationHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_13
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->oAuth2Handler:Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->cookieDelegateHandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->oAuth2Handler:Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_14
    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->initCookieSigningKeys()V

    new-instance v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->cookieDelegateHandlers:Ljava/util/List;

    iget-object v3, p0, Lio/milton/config/HttpManagerBuilder;->mainResourceFactory:Lio/milton/http/ResourceFactory;

    iget-object v4, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;-><init>(Lio/milton/http/http11/auth/NonceProvider;Ljava/util/List;Lio/milton/http/ResourceFactory;Ljava/util/List;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieAuthenticationHandler:Lio/milton/http/http11/auth/CookieAuthenticationHandler;

    iget-boolean v1, p0, Lio/milton/config/HttpManagerBuilder;->useLongLivedCookies:Z

    invoke-virtual {v0, v1}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->setUseLongLivedCookies(Z)V

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->cookieAuthenticationHandler:Lio/milton/http/http11/auth/CookieAuthenticationHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    new-instance v0, Lio/milton/http/AuthenticationService;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->authenticationHandlers:Ljava/util/List;

    invoke-direct {v0, v1}, Lio/milton/http/AuthenticationService;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->authenticationService:Lio/milton/http/AuthenticationService;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->rootContext:Lio/milton/context/RootContext;

    invoke-virtual {v1, v0}, Lio/milton/context/Context;->put(Ljava/lang/Object;)Lio/milton/context/Registration;

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieAuthenticationHandler:Lio/milton/http/http11/auth/CookieAuthenticationHandler;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->rootContext:Lio/milton/context/RootContext;

    invoke-virtual {v1, v0}, Lio/milton/context/Context;->put(Ljava/lang/Object;)Lio/milton/context/Registration;

    :cond_16
    const-string v0, "authenticationService"

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->authenticationService:Lio/milton/http/AuthenticationService;

    invoke-virtual {p0, v0, v1}, Lio/milton/config/HttpManagerBuilder;->showLog(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->authenticationService:Lio/milton/http/AuthenticationService;

    invoke-direct {p0, v0}, Lio/milton/config/HttpManagerBuilder;->init(Lio/milton/http/AuthenticationService;)V

    return-void
.end method

.method public initBeanPropertySource()Lio/milton/property/BeanPropertySource;
    .locals 1

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->beanPropertySource:Lio/milton/property/BeanPropertySource;

    if-nez v0, :cond_0

    new-instance v0, Lio/milton/property/BeanPropertySource;

    invoke-direct {v0}, Lio/milton/property/BeanPropertySource;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->beanPropertySource:Lio/milton/property/BeanPropertySource;

    :cond_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->beanPropertySource:Lio/milton/property/BeanPropertySource;

    return-object v0
.end method

.method public initCookieSigningKeys()V
    .locals 4

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeysFile:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "keys.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeysFile:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    const-string v2, "Reading cookie signing keys from: {}"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    invoke-static {v1, v2}, Lio/milton/common/FileUtils;->readLines(Ljava/io/File;Ljava/util/List;)V

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Loaded Keys: {}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    invoke-static {v1, v0}, Lio/milton/common/FileUtils;->writeLines(Ljava/io/File;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    sget-object v0, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    const-string v2, "Cookie signing keys file does not exist: {}. Will attempt to create it with a random key"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "*** If using a server cluster you MUST ensure a common key file is used ***"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->cookieSigningKeys:Ljava/util/List;

    invoke-static {v1, v0}, Lio/milton/common/FileUtils;->writeLines(Ljava/io/File;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public initDefaultPropertySources(Lio/milton/http/webdav/ResourceTypeHelper;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/webdav/ResourceTypeHelper;",
            ")",
            "Ljava/util/List<",
            "Lio/milton/property/PropertySource;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->propFindPropertyBuilder()Lio/milton/http/webdav/PropFindPropertyBuilder;

    iget-object p1, p0, Lio/milton/config/HttpManagerBuilder;->propertySources:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->multiNamespaceCustomPropertySource:Lio/milton/property/MultiNamespaceCustomPropertySource;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/milton/config/HttpManagerBuilder;->multiNamespaceCustomPropertySourceEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lio/milton/property/MultiNamespaceCustomPropertySource;

    invoke-direct {v0}, Lio/milton/property/MultiNamespaceCustomPropertySource;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->multiNamespaceCustomPropertySource:Lio/milton/property/MultiNamespaceCustomPropertySource;

    :cond_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->multiNamespaceCustomPropertySource:Lio/milton/property/MultiNamespaceCustomPropertySource;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lio/milton/config/HttpManagerBuilder;->initBeanPropertySource()Lio/milton/property/BeanPropertySource;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->beanPropertySource:Lio/milton/property/BeanPropertySource;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "I actually expected propertySources to be created by now and set into the PropfindPropertyBuilder "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initPropertyAuthoriser()Lio/milton/property/PropertyAuthoriser;
    .locals 3

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propertyAuthoriser:Lio/milton/property/PropertyAuthoriser;

    if-nez v0, :cond_0

    new-instance v0, Lio/milton/property/DefaultPropertyAuthoriser;

    invoke-direct {v0}, Lio/milton/property/DefaultPropertyAuthoriser;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propertyAuthoriser:Lio/milton/property/PropertyAuthoriser;

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->beanPropertySource:Lio/milton/property/BeanPropertySource;

    if-eqz v0, :cond_0

    new-instance v0, Lio/milton/property/BeanPropertyAuthoriser;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->beanPropertySource:Lio/milton/property/BeanPropertySource;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->propertyAuthoriser:Lio/milton/property/PropertyAuthoriser;

    invoke-direct {v0, v1, v2}, Lio/milton/property/BeanPropertyAuthoriser;-><init>(Lio/milton/property/BeanPropertySource;Lio/milton/property/PropertyAuthoriser;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propertyAuthoriser:Lio/milton/property/PropertyAuthoriser;

    :cond_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propertyAuthoriser:Lio/milton/property/PropertyAuthoriser;

    return-object v0
.end method

.method public initWebdavProtocol()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/milton/config/HttpManagerBuilder;->propPatchSetter:Lio/milton/http/webdav/PropPatchSetter;

    if-nez v1, :cond_0

    new-instance v1, Lio/milton/http/webdav/PropertySourcePatchSetter;

    iget-object v2, v0, Lio/milton/config/HttpManagerBuilder;->propertySources:Ljava/util/List;

    invoke-direct {v1, v2}, Lio/milton/http/webdav/PropertySourcePatchSetter;-><init>(Ljava/util/List;)V

    iput-object v1, v0, Lio/milton/config/HttpManagerBuilder;->propPatchSetter:Lio/milton/http/webdav/PropPatchSetter;

    :cond_0
    iget-object v1, v0, Lio/milton/config/HttpManagerBuilder;->propFindRequestFieldParser:Lio/milton/http/webdav/PropFindRequestFieldParser;

    if-nez v1, :cond_1

    new-instance v1, Lio/milton/http/webdav/DefaultPropFindRequestFieldParser;

    invoke-direct {v1}, Lio/milton/http/webdav/DefaultPropFindRequestFieldParser;-><init>()V

    new-instance v2, Lio/milton/http/webdav/MsPropFindRequestFieldParser;

    invoke-direct {v2, v1}, Lio/milton/http/webdav/MsPropFindRequestFieldParser;-><init>(Lio/milton/http/webdav/PropFindRequestFieldParser;)V

    iput-object v2, v0, Lio/milton/config/HttpManagerBuilder;->propFindRequestFieldParser:Lio/milton/http/webdav/PropFindRequestFieldParser;

    :cond_1
    iget-object v1, v0, Lio/milton/config/HttpManagerBuilder;->quotaDataAccessor:Lio/milton/http/quota/QuotaDataAccessor;

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lio/milton/config/HttpManagerBuilder;->enableQuota:Z

    if-eqz v1, :cond_2

    new-instance v1, Lio/milton/http/quota/DefaultQuotaDataAccessor;

    invoke-direct {v1}, Lio/milton/http/quota/DefaultQuotaDataAccessor;-><init>()V

    iput-object v1, v0, Lio/milton/config/HttpManagerBuilder;->quotaDataAccessor:Lio/milton/http/quota/QuotaDataAccessor;

    :cond_2
    iget-object v1, v0, Lio/milton/config/HttpManagerBuilder;->webDavProtocol:Lio/milton/http/webdav/WebDavProtocol;

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lio/milton/config/HttpManagerBuilder;->webdavEnabled:Z

    if-eqz v1, :cond_3

    new-instance v1, Lio/milton/http/webdav/WebDavProtocol;

    iget-object v3, v0, Lio/milton/config/HttpManagerBuilder;->handlerHelper:Lio/milton/http/HandlerHelper;

    iget-object v4, v0, Lio/milton/config/HttpManagerBuilder;->resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

    iget-object v5, v0, Lio/milton/config/HttpManagerBuilder;->webdavResponseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iget-object v6, v0, Lio/milton/config/HttpManagerBuilder;->propertySources:Ljava/util/List;

    iget-object v7, v0, Lio/milton/config/HttpManagerBuilder;->quotaDataAccessor:Lio/milton/http/quota/QuotaDataAccessor;

    iget-object v8, v0, Lio/milton/config/HttpManagerBuilder;->propPatchSetter:Lio/milton/http/webdav/PropPatchSetter;

    invoke-virtual/range {p0 .. p0}, Lio/milton/config/HttpManagerBuilder;->initPropertyAuthoriser()Lio/milton/property/PropertyAuthoriser;

    move-result-object v9

    iget-object v10, v0, Lio/milton/config/HttpManagerBuilder;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    iget-object v11, v0, Lio/milton/config/HttpManagerBuilder;->urlAdapter:Lio/milton/http/UrlAdapter;

    iget-object v12, v0, Lio/milton/config/HttpManagerBuilder;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual/range {p0 .. p0}, Lio/milton/config/HttpManagerBuilder;->userAgentHelper()Lio/milton/http/webdav/UserAgentHelper;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lio/milton/config/HttpManagerBuilder;->propFindRequestFieldParser()Lio/milton/http/webdav/PropFindRequestFieldParser;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lio/milton/config/HttpManagerBuilder;->propFindPropertyBuilder()Lio/milton/http/webdav/PropFindPropertyBuilder;

    move-result-object v15

    iget-object v2, v0, Lio/milton/config/HttpManagerBuilder;->displayNameFormatter:Lio/milton/http/webdav/DisplayNameFormatter;

    move-object/from16 v16, v15

    iget-boolean v15, v0, Lio/milton/config/HttpManagerBuilder;->enableTextContentProperty:Z

    move-object/from16 v17, v2

    move-object v2, v1

    move/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v2 .. v17}, Lio/milton/http/webdav/WebDavProtocol;-><init>(Lio/milton/http/HandlerHelper;Lio/milton/http/webdav/ResourceTypeHelper;Lio/milton/http/webdav/WebDavResponseHandler;Ljava/util/List;Lio/milton/http/quota/QuotaDataAccessor;Lio/milton/http/webdav/PropPatchSetter;Lio/milton/property/PropertyAuthoriser;Lio/milton/http/http11/ETagGenerator;Lio/milton/http/UrlAdapter;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/webdav/UserAgentHelper;Lio/milton/http/webdav/PropFindRequestFieldParser;Lio/milton/http/webdav/PropFindPropertyBuilder;Lio/milton/http/webdav/DisplayNameFormatter;Z)V

    iput-object v1, v0, Lio/milton/config/HttpManagerBuilder;->webDavProtocol:Lio/milton/http/webdav/WebDavProtocol;

    :cond_3
    return-void
.end method

.method public propFindPropertyBuilder()Lio/milton/http/webdav/PropFindPropertyBuilder;
    .locals 2

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propFindPropertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propertySources:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propertySources:Ljava/util/List;

    :cond_0
    new-instance v0, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->propertySources:Ljava/util/List;

    invoke-direct {v0, v1}, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propFindPropertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

    :cond_1
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propFindPropertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

    return-object v0
.end method

.method public propFindRequestFieldParser()Lio/milton/http/webdav/PropFindRequestFieldParser;
    .locals 2

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propFindRequestFieldParser:Lio/milton/http/webdav/PropFindRequestFieldParser;

    if-nez v0, :cond_0

    new-instance v0, Lio/milton/http/webdav/DefaultPropFindRequestFieldParser;

    invoke-direct {v0}, Lio/milton/http/webdav/DefaultPropFindRequestFieldParser;-><init>()V

    new-instance v1, Lio/milton/http/webdav/MsPropFindRequestFieldParser;

    invoke-direct {v1, v0}, Lio/milton/http/webdav/MsPropFindRequestFieldParser;-><init>(Lio/milton/http/webdav/PropFindRequestFieldParser;)V

    iput-object v1, p0, Lio/milton/config/HttpManagerBuilder;->propFindRequestFieldParser:Lio/milton/http/webdav/PropFindRequestFieldParser;

    :cond_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->propFindRequestFieldParser:Lio/milton/http/webdav/PropFindRequestFieldParser;

    return-object v0
.end method

.method public securityManager()Lio/milton/http/SecurityManager;
    .locals 4

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->securityManager:Lio/milton/http/SecurityManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->mapOfNameAndPasswords:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->mapOfNameAndPasswords:Ljava/util/Map;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->defaultUser:Ljava/lang/String;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->defaultPassword:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->defaultUser:Ljava/lang/String;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->defaultPassword:Ljava/lang/String;

    const-string v3, "Configuring default user and password: {}/{} for SimpleSecurityManager"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->fsRealm:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "milton"

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->fsRealm:Ljava/lang/String;

    :cond_1
    new-instance v0, Lio/milton/http/fs/SimpleSecurityManager;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->fsRealm:Ljava/lang/String;

    iget-object v2, p0, Lio/milton/config/HttpManagerBuilder;->mapOfNameAndPasswords:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lio/milton/http/fs/SimpleSecurityManager;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->securityManager:Lio/milton/http/SecurityManager;

    :cond_2
    sget-object v0, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->securityManager:Lio/milton/http/SecurityManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Using securityManager: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->rootContext:Lio/milton/context/RootContext;

    iget-object v1, p0, Lio/milton/config/HttpManagerBuilder;->securityManager:Lio/milton/http/SecurityManager;

    invoke-virtual {v0, v1}, Lio/milton/context/Context;->put(Ljava/lang/Object;)Lio/milton/context/Registration;

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->securityManager:Lio/milton/http/SecurityManager;

    return-object v0
.end method

.method public setEnableBasicAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/milton/config/HttpManagerBuilder;->enableBasicAuth:Z

    return-void
.end method

.method public setEnableCookieAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/milton/config/HttpManagerBuilder;->enableCookieAuth:Z

    return-void
.end method

.method public setEnableDigestAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/milton/config/HttpManagerBuilder;->enableDigestAuth:Z

    return-void
.end method

.method public setEnableFormAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/milton/config/HttpManagerBuilder;->enableFormAuth:Z

    return-void
.end method

.method public setEnabledJson(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/milton/config/HttpManagerBuilder;->enabledJson:Z

    return-void
.end method

.method public setNonceProvider(Lio/milton/http/http11/auth/NonceProvider;)V
    .locals 0

    iput-object p1, p0, Lio/milton/config/HttpManagerBuilder;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    return-void
.end method

.method public setResourceFactory(Lio/milton/http/ResourceFactory;)V
    .locals 0

    iput-object p1, p0, Lio/milton/config/HttpManagerBuilder;->mainResourceFactory:Lio/milton/http/ResourceFactory;

    return-void
.end method

.method public showLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lio/milton/config/HttpManagerBuilder;->log:Lorg/slf4j/Logger;

    const-string v1, "set property: {} to: {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public userAgentHelper()Lio/milton/http/webdav/UserAgentHelper;
    .locals 1

    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;

    if-nez v0, :cond_0

    new-instance v0, Lio/milton/http/webdav/DefaultUserAgentHelper;

    invoke-direct {v0}, Lio/milton/http/webdav/DefaultUserAgentHelper;-><init>()V

    iput-object v0, p0, Lio/milton/config/HttpManagerBuilder;->userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;

    :cond_0
    iget-object v0, p0, Lio/milton/config/HttpManagerBuilder;->userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;

    return-object v0
.end method
