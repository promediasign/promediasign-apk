.class public abstract Lio/milton/common/ContentTypeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final contentTypeService:Lio/milton/common/ContentTypeService;

.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/common/ContentTypeUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/common/ContentTypeUtils;->log:Lorg/slf4j/Logger;

    new-instance v0, Lio/milton/common/DefaultContentTypeService;

    invoke-direct {v0}, Lio/milton/common/DefaultContentTypeService;-><init>()V

    sput-object v0, Lio/milton/common/ContentTypeUtils;->contentTypeService:Lio/milton/common/ContentTypeService;

    return-void
.end method

.method private static buildContentTypeText(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lio/milton/common/Utils;->toCsv(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static findAcceptableContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/common/ContentTypeUtils;->contentTypeService:Lio/milton/common/ContentTypeService;

    invoke-static {p0}, Lio/milton/common/ContentTypeUtils;->toList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lio/milton/common/ContentTypeService;->getPreferedMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static findContentTypes(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/milton/common/ContentTypeUtils;->contentTypeService:Lio/milton/common/ContentTypeService;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/milton/common/ContentTypeService;->findContentTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/milton/common/ContentTypeUtils;->buildContentTypeText(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static findContentTypes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lio/milton/common/ContentTypeUtils;->contentTypeService:Lio/milton/common/ContentTypeService;

    invoke-interface {v0, p0}, Lio/milton/common/ContentTypeService;->findContentTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/milton/common/ContentTypeUtils;->buildContentTypeText(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
