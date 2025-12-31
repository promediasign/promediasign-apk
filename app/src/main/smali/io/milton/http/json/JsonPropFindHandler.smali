.class public Lio/milton/http/json/JsonPropFindHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/json/JsonPropFindHandler$Helper;,
        Lio/milton/http/json/JsonPropFindHandler$SimpleResource;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final helper:Lio/milton/http/json/JsonPropFindHandler$Helper;

.field private final propertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/json/JsonPropFindHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/json/JsonPropFindHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/webdav/PropFindPropertyBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/json/JsonPropFindHandler;->propertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

    new-instance p1, Lio/milton/http/json/JsonPropFindHandler$Helper;

    invoke-direct {p1, p0}, Lio/milton/http/json/JsonPropFindHandler$Helper;-><init>(Lio/milton/http/json/JsonPropFindHandler;)V

    iput-object p1, p0, Lio/milton/http/json/JsonPropFindHandler;->helper:Lio/milton/http/json/JsonPropFindHandler$Helper;

    return-void
.end method

.method private eval(Ljavax/xml/namespace/QName;Lio/milton/http/webdav/PropFindResponse;)Z
    .locals 1

    invoke-virtual {p2}, Lio/milton/http/webdav/PropFindResponse;->getKnownProperties()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/milton/http/values/ValueAndType;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/milton/http/values/ValueAndType;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private filterResults(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "!"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2}, Lio/milton/http/json/JsonPropFindHandler;->parseQName(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/webdav/PropFindResponse;

    invoke-direct {p0, p2, v1}, Lio/milton/http/json/JsonPropFindHandler;->eval(Ljavax/xml/namespace/QName;Lio/milton/http/webdav/PropFindResponse;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private parseQName(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, v0, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {v1}, Lio/milton/common/NameSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private toProperties(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/milton/http/webdav/PropertiesRequest$Property;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/namespace/QName;

    new-instance v2, Lio/milton/http/webdav/PropertiesRequest$Property;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lio/milton/http/webdav/PropertiesRequest$Property;-><init>(Ljavax/xml/namespace/QName;Ljava/util/Set;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toSimple(Lio/milton/resource/Resource;)Lio/milton/http/json/JsonPropFindHandler$SimpleResource;
    .locals 1

    new-instance v0, Lio/milton/http/json/JsonPropFindHandler$SimpleResource;

    invoke-direct {v0, p0, p1}, Lio/milton/http/json/JsonPropFindHandler$SimpleResource;-><init>(Lio/milton/http/json/JsonPropFindHandler;Lio/milton/resource/Resource;)V

    return-object v0
.end method

.method private toSimpleList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/milton/resource/Resource;",
            ">;)",
            "Ljava/util/List<",
            "Lio/milton/http/json/JsonPropFindHandler$SimpleResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/resource/Resource;

    invoke-direct {p0, v1}, Lio/milton/http/json/JsonPropFindHandler;->toSimple(Lio/milton/resource/Resource;)Lio/milton/http/json/JsonPropFindHandler$SimpleResource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public parseField(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lio/milton/http/json/JsonPropFindHandler;->parseQName(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public sendContent(Lio/milton/resource/PropFindableResource;Ljava/lang/String;Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/PropFindableResource;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lio/milton/http/Range;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p4, 0x0

    sget-object p6, Lio/milton/http/json/JsonPropFindHandler;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendContent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance p6, Lnet/sf/json/JsonConfig;

    invoke-direct {p6}, Lnet/sf/json/JsonConfig;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p6, v0}, Lnet/sf/json/JsonConfig;->setIgnoreTransientFields(Z)V

    sget-object v1, Lnet/sf/json/util/CycleDetectionStrategy;->LENIENT:Lnet/sf/json/util/CycleDetectionStrategy;

    invoke-virtual {p6, v1}, Lnet/sf/json/JsonConfig;->setCycleDetectionStrategy(Lnet/sf/json/util/CycleDetectionStrategy;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object p3, p0, Lio/milton/http/json/JsonPropFindHandler;->propertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

    if-nez p3, :cond_1

    instance-of p2, p1, Lio/milton/resource/CollectionResource;

    if-eqz p2, :cond_0

    check-cast p1, Lio/milton/resource/CollectionResource;

    invoke-interface {p1}, Lio/milton/resource/CollectionResource;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/milton/http/json/JsonPropFindHandler;->toSimpleList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-static {p1, p6}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object p1

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0, p1}, Lio/milton/http/json/JsonPropFindHandler;->toSimple(Lio/milton/resource/Resource;)Lio/milton/http/json/JsonPropFindHandler$SimpleResource;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p3, "fields"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ","

    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v4, p3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p3, v5

    invoke-virtual {p0, v6, v2, v3}, Lio/milton/http/json/JsonPropFindHandler;->parseField(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V

    add-int/2addr v5, v0

    goto :goto_1

    :cond_2
    const-string p3, "depth"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_2

    :cond_3
    const/4 p3, 0x1

    :goto_2
    const-string v4, "/_DAV/PROPFIND"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    new-instance v4, Lio/milton/http/webdav/PropertiesRequest;

    invoke-direct {p0, v2}, Lio/milton/http/json/JsonPropFindHandler;->toProperties(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v4, v2}, Lio/milton/http/webdav/PropertiesRequest;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lio/milton/http/json/JsonPropFindHandler;->log:Lorg/slf4j/Logger;

    iget-object v5, p0, Lio/milton/http/json/JsonPropFindHandler;->propertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "prop builder: "

    aput-object v7, v6, p4

    aput-object v5, v6, v0

    const-string p4, "href"

    const/4 v0, 0x2

    aput-object p4, v6, v0

    const/4 p4, 0x3

    aput-object p2, v6, p4

    invoke-static {v2, v6}, Lio/milton/common/LogUtils;->debug(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    :try_start_0
    iget-object p4, p0, Lio/milton/http/json/JsonPropFindHandler;->propertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

    invoke-interface {p4, p1, p3, v4, p2}, Lio/milton/http/webdav/PropFindPropertyBuilder;->buildProperties(Lio/milton/resource/PropFindableResource;ILio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "where"

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/milton/http/json/JsonPropFindHandler;->filterResults(Ljava/util/List;Ljava/lang/String;)V

    iget-object p2, p0, Lio/milton/http/json/JsonPropFindHandler;->helper:Lio/milton/http/json/JsonPropFindHandler$Helper;

    invoke-static {p2, p1, v3}, Lio/milton/http/json/JsonPropFindHandler$Helper;->access$000(Lio/milton/http/json/JsonPropFindHandler$Helper;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_0

    :goto_3
    invoke-interface {p1, v1}, Lnet/sf/json/JSON;->write(Ljava/io/Writer;)Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    return-void

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/RuntimeException;

    const-string p4, "Requested url is not properly encoded: "

    .line 1
    invoke-static {p4, p2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
