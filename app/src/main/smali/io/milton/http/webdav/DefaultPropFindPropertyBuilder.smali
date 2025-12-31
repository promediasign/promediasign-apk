.class public Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/webdav/PropFindPropertyBuilder;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final propertySources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/property/PropertySource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/property/PropertySource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->propertySources:Ljava/util/List;

    return-void
.end method

.method private appendResponses(Ljava/util/List;Lio/milton/resource/PropFindableResource;ILio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse;",
            ">;",
            "Lio/milton/resource/PropFindableResource;",
            "I",
            "Lio/milton/http/webdav/PropertiesRequest;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p5}, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->suffixSlash(Lio/milton/resource/PropFindableResource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, v8

    move v6, p3

    invoke-virtual/range {v1 .. v8}, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->processResource(Ljava/util/List;Lio/milton/resource/PropFindableResource;Lio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static fixUrlForWindows(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "%26"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private suffixSlash(Lio/milton/resource/PropFindableResource;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    instance-of p1, p1, Lio/milton/resource/CollectionResource;

    if-eqz p1, :cond_0

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method


# virtual methods
.method public buildProperties(Lio/milton/resource/PropFindableResource;ILio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/PropFindableResource;",
            "I",
            "Lio/milton/http/webdav/PropertiesRequest;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "buildProperties: "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "url:"

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v1, 0x3

    aput-object p4, v2, v1

    invoke-static {v0, v2}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    invoke-static {p4}, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->fixUrlForWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->appendResponses(Ljava/util/List;Lio/milton/resource/PropFindableResource;ILio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)V

    return-object p4
.end method

.method public findAllProps(Lio/milton/resource/PropFindableResource;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/PropFindableResource;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->propertySources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/property/PropertySource;

    invoke-interface {v2, p1}, Lio/milton/property/PropertySource;->getAllPropertyNames(Lio/milton/resource/Resource;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public processResource(Ljava/util/List;Lio/milton/resource/PropFindableResource;Lio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;IILjava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse;",
            ">;",
            "Lio/milton/resource/PropFindableResource;",
            "Lio/milton/http/webdav/PropertiesRequest;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v9, p6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v10, 0x1

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    instance-of v11, v0, Lio/milton/resource/CollectionResource;

    if-eqz v11, :cond_0

    const-string v12, "/"

    invoke-virtual {v1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v12, v1

    invoke-virtual/range {p3 .. p3}, Lio/milton/http/webdav/PropertiesRequest;->isAllProp()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v8, v0}, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->findAllProps(Lio/milton/resource/PropFindableResource;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lio/milton/http/webdav/PropertiesRequest;->getNames()Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/xml/namespace/QName;

    sget-object v14, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->log:Lorg/slf4j/Logger;

    new-array v15, v5, [Ljava/lang/Object;

    const-string v16, "processResource: find property:"

    aput-object v16, v15, v4

    aput-object v13, v15, v10

    invoke-static {v14, v15}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v14

    const-string v15, "href"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v14, Lio/milton/http/values/ValueAndType;

    const-class v15, Ljava/lang/String;

    invoke-direct {v14, v12, v15}, Lio/milton/http/values/ValueAndType;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v6, v13, v14}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x2

    const/16 v18, 0x3

    goto/16 :goto_5

    :cond_2
    iget-object v14, v8, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->propertySources:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/milton/property/PropertySource;

    sget-object v2, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->log:Lorg/slf4j/Logger;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    new-array v5, v3, [Ljava/lang/Object;

    const-string v18, "look for field"

    aput-object v18, v5, v4

    aput-object v13, v5, v10

    const-string v18, " in property source"

    const/16 v17, 0x2

    aput-object v18, v5, v17

    const/16 v18, 0x3

    aput-object v16, v5, v18

    invoke-static {v2, v5}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    invoke-interface {v15, v13, v0}, Lio/milton/property/PropertySource;->getPropertyMetaData(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Lio/milton/property/PropertySource$PropertyMetaData;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lio/milton/property/PropertySource$PropertyMetaData;->isUnknown()Z

    move-result v16

    if-nez v16, :cond_4

    :try_start_0
    invoke-interface {v15, v13, v0}, Lio/milton/property/PropertySource;->getProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    new-array v10, v3, [Ljava/lang/Object;

    const-string v18, "processResource: got value"

    aput-object v18, v10, v4

    const/16 v16, 0x1

    aput-object v14, v10, v16

    const-string v18, "from source"
    :try_end_0
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v17, 0x2

    :try_start_1
    aput-object v18, v10, v17
    :try_end_1
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v18, 0x3

    :try_start_2
    aput-object v15, v10, v18

    invoke-static {v2, v10}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    if-nez v14, :cond_3

    new-instance v2, Lio/milton/http/values/ValueAndType;

    invoke-virtual {v5}, Lio/milton/property/PropertySource$PropertyMetaData;->getValueType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v14, v5}, Lio/milton/http/values/ValueAndType;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_3
    invoke-virtual {v6, v13, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_3
    new-instance v2, Lio/milton/http/values/ValueAndType;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v14, v5}, Lio/milton/http/values/ValueAndType;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_2
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    const/16 v17, 0x2

    :catch_1
    const/16 v18, 0x3

    :catch_2
    new-instance v2, Lio/milton/http/webdav/PropFindResponse$NameAndError;

    const-string v5, "Not authorised"

    invoke-direct {v2, v13, v5}, Lio/milton/http/webdav/PropFindResponse$NameAndError;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/16 v17, 0x2

    const/16 v18, 0x3

    const/4 v5, 0x2

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/16 v17, 0x2

    const/16 v18, 0x3

    sget-object v2, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "property not found in any property source: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_6
    new-instance v2, Lio/milton/http/webdav/PropFindResponse$NameAndError;

    const/4 v5, 0x0

    invoke-direct {v2, v13, v5}, Lio/milton/http/webdav/PropFindResponse$NameAndError;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    const/4 v5, 0x2

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_7
    sget-object v1, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "some properties could not be resolved. Listing property sources:"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, v8, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->propertySources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/property/PropertySource;

    sget-object v3, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lio/milton/http/Response$Status;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v2, Lio/milton/http/Response$Status;->SC_NOT_FOUND:Lio/milton/http/Response$Status;

    invoke-virtual {v1, v2, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/milton/http/webdav/PropFindResponse;

    invoke-direct {v2, v12, v6, v1}, Lio/milton/http/webdav/PropFindResponse;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v10, p1

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v13, p5

    if-le v13, v9, :cond_b

    if-eqz v11, :cond_b

    check-cast v0, Lio/milton/resource/CollectionResource;

    invoke-interface {v0}, Lio/milton/resource/CollectionResource;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/milton/resource/Resource;

    instance-of v1, v0, Lio/milton/resource/PropFindableResource;

    if-eqz v1, :cond_9

    invoke-interface {v0}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    sget-object v1, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "null name for resource of type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in folder: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WILL NOT be returned in PROPFIND response!!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_9
    const/4 v14, 0x1

    goto :goto_7

    .line 1
    :cond_a
    invoke-static {v12}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    invoke-static {v1}, Lio/milton/common/Utils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v0

    check-cast v2, Lio/milton/resource/PropFindableResource;

    const/4 v14, 0x1

    add-int/lit8 v6, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v5, p5

    move-object v7, v12

    invoke-virtual/range {v0 .. v7}, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->processResource(Ljava/util/List;Lio/milton/resource/PropFindableResource;Lio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_7

    :cond_b
    return-void
.end method
