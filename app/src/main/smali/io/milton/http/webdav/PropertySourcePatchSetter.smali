.class public Lio/milton/http/webdav/PropertySourcePatchSetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/webdav/PropPatchSetter;


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

.field private final valueWriters:Lio/milton/http/values/ValueWriters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/webdav/PropertySourcePatchSetter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/PropertySourcePatchSetter;->propertySources:Ljava/util/List;

    new-instance p1, Lio/milton/http/values/ValueWriters;

    invoke-direct {p1}, Lio/milton/http/values/ValueWriters;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/PropertySourcePatchSetter;->valueWriters:Lio/milton/http/values/ValueWriters;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lio/milton/http/values/ValueWriters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/property/PropertySource;",
            ">;",
            "Lio/milton/http/values/ValueWriters;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/PropertySourcePatchSetter;->propertySources:Ljava/util/List;

    iput-object p2, p0, Lio/milton/http/webdav/PropertySourcePatchSetter;->valueWriters:Lio/milton/http/values/ValueWriters;

    return-void
.end method

.method private addErrorProp(Ljava/util/Map;Lio/milton/http/Response$Status;Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/milton/http/Response$Status;",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse$NameAndError;",
            ">;>;",
            "Lio/milton/http/Response$Status;",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Lio/milton/http/webdav/PropFindResponse$NameAndError;

    invoke-direct {p1, p3, p4}, Lio/milton/http/webdav/PropFindResponse$NameAndError;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private parse(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropertySourcePatchSetter;->valueWriters:Lio/milton/http/values/ValueWriters;

    invoke-virtual {v0, p1, p3, p2}, Lio/milton/http/values/ValueWriters;->parse(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public setProperties(Ljava/lang/String;Lio/milton/http/webdav/PropPatchParseResult;Lio/milton/resource/Resource;)Lio/milton/http/webdav/PropFindResponse;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    sget-object v0, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setProperties: resource type: {}"

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/EnumMap;

    const-class v0, Lio/milton/http/Response$Status;

    invoke-direct {v4, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual/range {p2 .. p2}, Lio/milton/http/webdav/PropPatchParseResult;->getFieldsToSet()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v6, "Unknown property"

    const-string v7, "Property is read only"

    const-string v8, "property is not writable in source: "

    const-string v9, "Not authorised"

    const/4 v10, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/xml/namespace/QName;

    iget-object v12, v1, Lio/milton/http/webdav/PropertySourcePatchSetter;->propertySources:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/milton/property/PropertySource;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/xml/namespace/QName;

    invoke-interface {v13, v14, v2}, Lio/milton/property/PropertySource;->getPropertyMetaData(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Lio/milton/property/PropertySource$PropertyMetaData;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lio/milton/property/PropertySource$PropertyMetaData;->isUnknown()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v14}, Lio/milton/property/PropertySource$PropertyMetaData;->isWritable()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14}, Lio/milton/property/PropertySource$PropertyMetaData;->getValueType()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v1, v11, v0, v6}, Lio/milton/http/webdav/PropertySourcePatchSetter;->parse(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    sget-object v6, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

    const-string v7, "setProperties: name: {} source: {}"

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v6, v7, v11, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v13, v11, v0, v2}, Lio/milton/property/PropertySource;->setProperty(Ljavax/xml/namespace/QName;Ljava/lang/Object;Lio/milton/resource/Resource;)V

    new-instance v0, Lio/milton/http/values/ValueAndType;

    invoke-virtual {v14}, Lio/milton/property/PropertySource$PropertyMetaData;->getValueType()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v10, v6}, Lio/milton/http/values/ValueAndType;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v3, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v6, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

    const-string v7, "setProperties: NotAuthorised to write property: {}"

    invoke-interface {v6, v7, v11, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lio/milton/http/Response$Status;->SC_UNAUTHORIZED:Lio/milton/http/Response$Status;

    invoke-direct {v1, v4, v0, v11, v9}, Lio/milton/http/webdav/PropertySourcePatchSetter;->addErrorProp(Ljava/util/Map;Lio/milton/http/Response$Status;Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    sget-object v0, Lio/milton/http/Response$Status;->SC_FORBIDDEN:Lio/milton/http/Response$Status;

    invoke-direct {v1, v4, v0, v11, v7}, Lio/milton/http/webdav/PropertySourcePatchSetter;->addErrorProp(Ljava/util/Map;Lio/milton/http/Response$Status;Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sget-object v7, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "property not found: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " on resource: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    sget-object v7, Lio/milton/http/Response$Status;->SC_NOT_FOUND:Lio/milton/http/Response$Status;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/namespace/QName;

    invoke-direct {v1, v4, v7, v0, v6}, Lio/milton/http/webdav/PropertySourcePatchSetter;->addErrorProp(Ljava/util/Map;Lio/milton/http/Response$Status;Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lio/milton/http/webdav/PropPatchParseResult;->getFieldsToRemove()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p2 .. p2}, Lio/milton/http/webdav/PropPatchParseResult;->getFieldsToRemove()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/xml/namespace/QName;

    iget-object v11, v1, Lio/milton/http/webdav/PropertySourcePatchSetter;->propertySources:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/milton/property/PropertySource;

    invoke-interface {v12, v5, v2}, Lio/milton/property/PropertySource;->getPropertyMetaData(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Lio/milton/property/PropertySource$PropertyMetaData;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lio/milton/property/PropertySource$PropertyMetaData;->isUnknown()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v13}, Lio/milton/property/PropertySource$PropertyMetaData;->isWritable()Z

    move-result v11

    if-eqz v11, :cond_5

    :try_start_1
    sget-object v11, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

    const-string v14, "clearProperty"

    invoke-interface {v11, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-interface {v12, v5, v2}, Lio/milton/property/PropertySource;->clearProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)V

    new-instance v11, Lio/milton/http/values/ValueAndType;

    invoke-virtual {v13}, Lio/milton/property/PropertySource$PropertyMetaData;->getValueType()Ljava/lang/Class;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lio/milton/http/values/ValueAndType;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v3, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object v11, Lio/milton/http/Response$Status;->SC_UNAUTHORIZED:Lio/milton/http/Response$Status;

    invoke-direct {v1, v4, v11, v5, v9}, Lio/milton/http/webdav/PropertySourcePatchSetter;->addErrorProp(Ljava/util/Map;Lio/milton/http/Response$Status;Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v11, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    sget-object v11, Lio/milton/http/Response$Status;->SC_FORBIDDEN:Lio/milton/http/Response$Status;

    invoke-direct {v1, v4, v11, v5, v7}, Lio/milton/http/webdav/PropertySourcePatchSetter;->addErrorProp(Ljava/util/Map;Lio/milton/http/Response$Status;Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-object v11, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "property not found to remove: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    sget-object v11, Lio/milton/http/Response$Status;->SC_NOT_FOUND:Lio/milton/http/Response$Status;

    invoke-direct {v1, v4, v11, v5, v6}, Lio/milton/http/webdav/PropertySourcePatchSetter;->addErrorProp(Ljava/util/Map;Lio/milton/http/Response$Status;Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v4}, Ljava/util/EnumMap;->size()I

    move-result v2

    if-lez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "errorProps: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/EnumMap;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " listing property sources:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, v1, Lio/milton/http/webdav/PropertySourcePatchSetter;->propertySources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/property/PropertySource;

    sget-object v5, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  source: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    sget-object v0, Lio/milton/http/webdav/PropertySourcePatchSetter;->log:Lorg/slf4j/Logger;

    const-string v2, "resource is not commitable"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance v0, Lio/milton/http/webdav/PropFindResponse;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v3, v4}, Lio/milton/http/webdav/PropFindResponse;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public supports(Lio/milton/resource/Resource;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
