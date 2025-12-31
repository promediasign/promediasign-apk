.class public Lcom/thegrizzlylabs/sardineandroid/DavResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final href:Ljava/net/URI;

.field private final props:Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;

.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/DavResource;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/model/Response;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource;->href:Ljava/net/URI;

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getStatusCode(Lcom/thegrizzlylabs/sardineandroid/model/Response;)I

    move-result v0

    iput v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource;->status:I

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;

    invoke-direct {v0, p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;-><init>(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)V

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource;->props:Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;

    return-void
.end method

.method public static synthetic access$000(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getCreationDate(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getModifiedDate(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;
    .locals 0

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getSupportedLock(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getContentType(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getContentLength(Lcom/thegrizzlylabs/sardineandroid/model/Response;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$400(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getEtag(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getDisplayName(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getResourceTypes(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getContentLanguage(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getCustomProps(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;
    .locals 0

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getLockDiscovery(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

    move-result-object p0

    return-object p0
.end method

.method private getContentLanguage(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getResourcetype()Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->getCollection()Lcom/thegrizzlylabs/sardineandroid/model/Collection;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "httpd/unix-directory"

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetcontentlanguage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method private getContentLength(Lcom/thegrizzlylabs/sardineandroid/model/Response;)J
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetcontentlength()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    sget-object v3, Lcom/thegrizzlylabs/sardineandroid/DavResource;->log:Ljava/util/logging/Logger;

    const-string v4, "Failed to parse content length "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private getContentType(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getResourcetype()Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->getCollection()Lcom/thegrizzlylabs/sardineandroid/model/Collection;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string p1, "httpd/unix-directory"

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetcontenttype()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetcontenttype()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method private getCreationDate(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getCreationdate()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private getCustomProps(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thegrizzlylabs/sardineandroid/model/Response;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getAny()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-static {v2}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toQName(Lorg/w3c/dom/Element;)Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getDisplayName(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getDisplayname()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private getEtag(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetetag()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private getLockDiscovery(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;
    .locals 3

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getLockdiscovery()Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private getModifiedDate(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGetlastmodified()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private getResourceTypes(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thegrizzlylabs/sardineandroid/model/Response;",
            ")",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getResourcetype()Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->getCollection()Lcom/thegrizzlylabs/sardineandroid/model/Collection;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "collection"

    invoke-static {v2}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createQNameWithDefaultNamespace(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->getPrincipal()Lcom/thegrizzlylabs/sardineandroid/model/Principal;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "principal"

    invoke-static {v2}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createQNameWithDefaultNamespace(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->getAny()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-static {v2}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toQName(Lorg/w3c/dom/Element;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getStatusCode(Lcom/thegrizzlylabs/sardineandroid/model/Response;)I
    .locals 2

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lokhttp3/internal/http/StatusLine;->Companion:Lokhttp3/internal/http/StatusLine$Companion;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/internal/http/StatusLine$Companion;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object p1

    iget p1, p1, Lokhttp3/internal/http/StatusLine;->code:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    sget-object p1, Lcom/thegrizzlylabs/sardineandroid/DavResource;->log:Ljava/util/logging/Logger;

    const-string v1, "Failed to parse status line: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_1
    :goto_0
    const/16 p1, 0xc8

    return p1
.end method

.method private getSupportedLock(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;
    .locals 3

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getSupportedlock()Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getContentLength()Ljava/lang/Long;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource;->props:Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;

    iget-object v0, v0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->contentLength:Ljava/lang/Long;

    return-object v0
.end method

.method public getModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource;->props:Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;

    iget-object v0, v0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->modified:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v1, Lcom/thegrizzlylabs/sardineandroid/DavResource;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse name from path "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource;->props:Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;

    iget-object v0, v0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->contentType:Ljava/lang/String;

    const-string v1, "httpd/unix-directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
