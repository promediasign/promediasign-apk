.class public Lio/milton/http/webdav/WebDavProtocol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/HttpExtension;
.implements Lio/milton/property/PropertySource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/webdav/WebDavProtocol$MiltonExtTextContentProperty;,
        Lio/milton/http/webdav/WebDavProtocol$SupportedReportSetProperty;,
        Lio/milton/http/webdav/WebDavProtocol$MSIsReadOnlyPropertyWriter;,
        Lio/milton/http/webdav/WebDavProtocol$MSIsCollectionPropertyWriter;,
        Lio/milton/http/webdav/WebDavProtocol$MSNamePropertyWriter;,
        Lio/milton/http/webdav/WebDavProtocol$EtagPropertyWriter;,
        Lio/milton/http/webdav/WebDavProtocol$QuotaAvailableBytesPropertyWriter;,
        Lio/milton/http/webdav/WebDavProtocol$QuotaUsedBytesPropertyWriter;,
        Lio/milton/http/webdav/WebDavProtocol$ContentLengthPropertyWriter;,
        Lio/milton/http/webdav/WebDavProtocol$ContentTypePropertyWriter;,
        Lio/milton/http/webdav/WebDavProtocol$ResourceTypePropertyWriter;,
        Lio/milton/http/webdav/WebDavProtocol$LastModifiedDatePropertyWriter;,
        Lio/milton/http/webdav/WebDavProtocol$CreationDatePropertyWriter;,
        Lio/milton/http/webdav/WebDavProtocol$DisplayNamePropertyWriter;
    }
.end annotation


# static fields
.field public static final NS_DAV:Lio/milton/common/NameSpace;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private customPostHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final displayNameFormatter:Lio/milton/http/webdav/DisplayNameFormatter;

.field private final eTagGenerator:Lio/milton/http/http11/ETagGenerator;

.field private final handlerHelper:Lio/milton/http/HandlerHelper;

.field private final handlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/milton/http/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mkColHandler:Lio/milton/http/webdav/MkColHandler;

.field private final propPatchHandler:Lio/milton/http/webdav/PropPatchHandler;

.field private final propertyMap:Lio/milton/http/webdav/PropertyMap;

.field private final propertySources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/property/PropertySource;",
            ">;"
        }
    .end annotation
.end field

.field private final quotaDataAccessor:Lio/milton/http/quota/QuotaDataAccessor;

.field private final reports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

.field private final userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/milton/http/webdav/WebDavProtocol;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/webdav/WebDavProtocol;->log:Lorg/slf4j/Logger;

    new-instance v0, Lio/milton/common/NameSpace;

    const-string v1, "DAV:"

    const-string v2, "d"

    invoke-direct {v0, v1, v2}, Lio/milton/common/NameSpace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/HandlerHelper;Lio/milton/http/webdav/ResourceTypeHelper;Lio/milton/http/webdav/WebDavResponseHandler;Ljava/util/List;Lio/milton/http/quota/QuotaDataAccessor;Lio/milton/http/webdav/PropPatchSetter;Lio/milton/property/PropertyAuthoriser;Lio/milton/http/http11/ETagGenerator;Lio/milton/http/UrlAdapter;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/webdav/UserAgentHelper;Lio/milton/http/webdav/PropFindRequestFieldParser;Lio/milton/http/webdav/PropFindPropertyBuilder;Lio/milton/http/webdav/DisplayNameFormatter;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/HandlerHelper;",
            "Lio/milton/http/webdav/ResourceTypeHelper;",
            "Lio/milton/http/webdav/WebDavResponseHandler;",
            "Ljava/util/List<",
            "Lio/milton/property/PropertySource;",
            ">;",
            "Lio/milton/http/quota/QuotaDataAccessor;",
            "Lio/milton/http/webdav/PropPatchSetter;",
            "Lio/milton/property/PropertyAuthoriser;",
            "Lio/milton/http/http11/ETagGenerator;",
            "Lio/milton/http/UrlAdapter;",
            "Lio/milton/http/ResourceHandlerHelper;",
            "Lio/milton/http/webdav/UserAgentHelper;",
            "Lio/milton/http/webdav/PropFindRequestFieldParser;",
            "Lio/milton/http/webdav/PropFindPropertyBuilder;",
            "Lio/milton/http/webdav/DisplayNameFormatter;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v8, p3

    move-object/from16 v2, p5

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p14

    iput-object v3, v0, Lio/milton/http/webdav/WebDavProtocol;->displayNameFormatter:Lio/milton/http/webdav/DisplayNameFormatter;

    iput-object v10, v0, Lio/milton/http/webdav/WebDavProtocol;->userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;

    iput-object v1, v0, Lio/milton/http/webdav/WebDavProtocol;->handlerHelper:Lio/milton/http/HandlerHelper;

    move-object/from16 v3, p8

    iput-object v3, v0, Lio/milton/http/webdav/WebDavProtocol;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    iput-object v11, v0, Lio/milton/http/webdav/WebDavProtocol;->handlers:Ljava/util/Set;

    move-object v3, p2

    iput-object v3, v0, Lio/milton/http/webdav/WebDavProtocol;->resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

    iput-object v2, v0, Lio/milton/http/webdav/WebDavProtocol;->quotaDataAccessor:Lio/milton/http/quota/QuotaDataAccessor;

    new-instance v4, Lio/milton/http/webdav/PropertyMap;

    sget-object v5, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {v5}, Lio/milton/common/NameSpace;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/milton/http/webdav/PropertyMap;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lio/milton/http/webdav/WebDavProtocol;->propertyMap:Lio/milton/http/webdav/PropertyMap;

    new-instance v5, Lio/milton/http/webdav/WebDavProtocol$ContentLengthPropertyWriter;

    invoke-direct {v5, p0}, Lio/milton/http/webdav/WebDavProtocol$ContentLengthPropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v5}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    new-instance v5, Lio/milton/http/webdav/WebDavProtocol$ContentTypePropertyWriter;

    invoke-direct {v5, p0}, Lio/milton/http/webdav/WebDavProtocol$ContentTypePropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v5}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    new-instance v5, Lio/milton/http/webdav/WebDavProtocol$CreationDatePropertyWriter;

    const-string v6, "getcreated"

    invoke-direct {v5, p0, v6}, Lio/milton/http/webdav/WebDavProtocol$CreationDatePropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    new-instance v5, Lio/milton/http/webdav/WebDavProtocol$CreationDatePropertyWriter;

    const-string v6, "creationdate"

    invoke-direct {v5, p0, v6}, Lio/milton/http/webdav/WebDavProtocol$CreationDatePropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    new-instance v5, Lio/milton/http/webdav/WebDavProtocol$DisplayNamePropertyWriter;

    invoke-direct {v5, p0}, Lio/milton/http/webdav/WebDavProtocol$DisplayNamePropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v5}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    new-instance v5, Lio/milton/http/webdav/WebDavProtocol$LastModifiedDatePropertyWriter;

    invoke-direct {v5, p0}, Lio/milton/http/webdav/WebDavProtocol$LastModifiedDatePropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v5}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    new-instance v5, Lio/milton/http/webdav/WebDavProtocol$ResourceTypePropertyWriter;

    invoke-direct {v5, p0}, Lio/milton/http/webdav/WebDavProtocol$ResourceTypePropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v5}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    new-instance v5, Lio/milton/http/webdav/WebDavProtocol$EtagPropertyWriter;

    invoke-direct {v5, p0}, Lio/milton/http/webdav/WebDavProtocol$EtagPropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v5}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    new-instance v5, Lio/milton/http/webdav/WebDavProtocol$MSIsCollectionPropertyWriter;

    invoke-direct {v5, p0}, Lio/milton/http/webdav/WebDavProtocol$MSIsCollectionPropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v5}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    new-instance v5, Lio/milton/http/webdav/WebDavProtocol$MSIsReadOnlyPropertyWriter;

    invoke-direct {v5, p0}, Lio/milton/http/webdav/WebDavProtocol$MSIsReadOnlyPropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v5}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    new-instance v5, Lio/milton/http/webdav/WebDavProtocol$MSNamePropertyWriter;

    invoke-direct {v5, p0}, Lio/milton/http/webdav/WebDavProtocol$MSNamePropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v5}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    sget-object v5, Lio/milton/http/webdav/WebDavProtocol;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resourceTypeHelper: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    if-nez v2, :cond_0

    const-string v2, "no quota data"

    invoke-interface {v5, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "quotaDataAccessor: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v2, Lio/milton/http/webdav/WebDavProtocol$QuotaAvailableBytesPropertyWriter;

    invoke-direct {v2, p0}, Lio/milton/http/webdav/WebDavProtocol$QuotaAvailableBytesPropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v2}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    new-instance v2, Lio/milton/http/webdav/WebDavProtocol$QuotaUsedBytesPropertyWriter;

    invoke-direct {v2, p0}, Lio/milton/http/webdav/WebDavProtocol$QuotaUsedBytesPropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v2}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    :goto_0
    new-instance v2, Lio/milton/http/webdav/WebDavProtocol$SupportedReportSetProperty;

    invoke-direct {v2, p0}, Lio/milton/http/webdav/WebDavProtocol$SupportedReportSetProperty;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v2}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    if-eqz p15, :cond_1

    new-instance v2, Lio/milton/http/webdav/WebDavProtocol$MiltonExtTextContentProperty;

    invoke-direct {v2, p0}, Lio/milton/http/webdav/WebDavProtocol$MiltonExtTextContentProperty;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    invoke-virtual {v4, v2}, Lio/milton/http/webdav/PropertyMap;->add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V

    :cond_1
    new-instance v2, Lio/milton/http/values/ValueWriters;

    invoke-direct {v2}, Lio/milton/http/values/ValueWriters;-><init>()V

    if-nez p4, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    move-object/from16 v3, p4

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "provided property sources: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iput-object v3, v0, Lio/milton/http/webdav/WebDavProtocol;->propertySources:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "adding webdav as a property source to: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " hashCode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lio/milton/http/webdav/WebDavProtocol;->addPropertySource(Lio/milton/property/PropertySource;)V

    if-nez p6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "creating default patcheSetter: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v6, Lio/milton/http/webdav/PropertySourcePatchSetter;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v4, Lio/milton/http/webdav/PropertySourcePatchSetter;

    invoke-direct {v4, v3, v2}, Lio/milton/http/webdav/PropertySourcePatchSetter;-><init>(Ljava/util/List;Lio/milton/http/values/ValueWriters;)V

    move-object v5, v4

    goto :goto_2

    :cond_3
    move-object/from16 v5, p6

    :goto_2
    new-instance v2, Lio/milton/http/webdav/PropFindHandler;

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    invoke-direct {v2, v9, v3, v8, v4}, Lio/milton/http/webdav/PropFindHandler;-><init>(Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/webdav/PropFindRequestFieldParser;Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/webdav/PropFindPropertyBuilder;)V

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lio/milton/http/webdav/MkColHandler;

    invoke-direct {v2, v8, p1}, Lio/milton/http/webdav/MkColHandler;-><init>(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/HandlerHelper;)V

    iput-object v2, v0, Lio/milton/http/webdav/WebDavProtocol;->mkColHandler:Lio/milton/http/webdav/MkColHandler;

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v12, Lio/milton/http/webdav/PropPatchHandler;

    new-instance v4, Lio/milton/http/webdav/DefaultPropPatchParser;

    invoke-direct {v4}, Lio/milton/http/webdav/DefaultPropPatchParser;-><init>()V

    move-object v2, v12

    move-object/from16 v3, p10

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lio/milton/http/webdav/PropPatchHandler;-><init>(Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/webdav/PropPatchRequestParser;Lio/milton/http/webdav/PropPatchSetter;Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/property/PropertyAuthoriser;)V

    iput-object v12, v0, Lio/milton/http/webdav/WebDavProtocol;->propPatchHandler:Lio/milton/http/webdav/PropPatchHandler;

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lio/milton/http/webdav/CopyHandler;

    invoke-direct {v2, v8, p1, v9, v10}, Lio/milton/http/webdav/CopyHandler;-><init>(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/HandlerHelper;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/webdav/UserAgentHelper;)V

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lio/milton/http/webdav/MoveHandler;

    invoke-direct {v2, v8, p1, v9, v10}, Lio/milton/http/webdav/MoveHandler;-><init>(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/HandlerHelper;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/webdav/UserAgentHelper;)V

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lio/milton/http/webdav/WebDavProtocol;->reports:Ljava/util/Map;

    new-instance v2, Lio/milton/http/report/ReportHandler;

    invoke-direct {v2, v8, v9, v1}, Lio/milton/http/report/ReportHandler;-><init>(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/ResourceHandlerHelper;Ljava/util/Map;)V

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$000(Lio/milton/http/webdav/WebDavProtocol;)Lio/milton/http/webdav/DisplayNameFormatter;
    .locals 0

    iget-object p0, p0, Lio/milton/http/webdav/WebDavProtocol;->displayNameFormatter:Lio/milton/http/webdav/DisplayNameFormatter;

    return-object p0
.end method

.method public static synthetic access$200(Lio/milton/http/webdav/WebDavProtocol;)Lio/milton/http/webdav/ResourceTypeHelper;
    .locals 0

    iget-object p0, p0, Lio/milton/http/webdav/WebDavProtocol;->resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

    return-object p0
.end method

.method public static synthetic access$300(Lio/milton/http/webdav/WebDavProtocol;)Lio/milton/http/quota/QuotaDataAccessor;
    .locals 0

    iget-object p0, p0, Lio/milton/http/webdav/WebDavProtocol;->quotaDataAccessor:Lio/milton/http/quota/QuotaDataAccessor;

    return-object p0
.end method

.method public static synthetic access$400(Lio/milton/http/webdav/WebDavProtocol;)Lio/milton/http/http11/ETagGenerator;
    .locals 0

    iget-object p0, p0, Lio/milton/http/webdav/WebDavProtocol;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    return-object p0
.end method

.method public static synthetic access$500(Lio/milton/http/webdav/WebDavProtocol;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/milton/http/webdav/WebDavProtocol;->reports:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addPropertySource(Lio/milton/property/PropertySource;)V
    .locals 3

    iget-object v0, p0, Lio/milton/http/webdav/WebDavProtocol;->propertySources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/milton/http/webdav/WebDavProtocol;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adding property source: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " new size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/milton/http/webdav/WebDavProtocol;->propertySources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public clearProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported. Standard webdav properties are not writable"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllPropertyNames(Lio/milton/resource/Resource;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            ")",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/WebDavProtocol;->propertyMap:Lio/milton/http/webdav/PropertyMap;

    invoke-virtual {v0, p1}, Lio/milton/http/webdav/PropertyMap;->getAllPropertyNames(Lio/milton/resource/Resource;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCustomPostHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/WebDavProtocol;->customPostHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getHandlers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/milton/http/Handler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/WebDavProtocol;->handlers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/WebDavProtocol;->propertyMap:Lio/milton/http/webdav/PropertyMap;

    invoke-virtual {v0, p1, p2}, Lio/milton/http/webdav/PropertyMap;->getProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyMetaData(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Lio/milton/property/PropertySource$PropertyMetaData;
    .locals 3

    iget-object v0, p0, Lio/milton/http/webdav/WebDavProtocol;->propertyMap:Lio/milton/http/webdav/PropertyMap;

    invoke-virtual {v0, p1, p2}, Lio/milton/http/webdav/PropertyMap;->getPropertyMetaData(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Lio/milton/property/PropertySource$PropertyMetaData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/milton/http/webdav/WebDavProtocol;->userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;

    invoke-static {}, Lio/milton/http/HttpManager;->request()Lio/milton/http/Request;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/milton/http/webdav/UserAgentHelper;->isNautilus(Lio/milton/http/Request;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lio/milton/http/webdav/WebDavProtocol;->getProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lio/milton/property/PropertySource$PropertyMetaData;->UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;

    return-object p1

    :cond_0
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lio/milton/property/PropertySource$PropertyMetaData;->UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public setProperty(Ljavax/xml/namespace/QName;Ljava/lang/Object;Lio/milton/resource/Resource;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported. Standard webdav properties are not writable"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
