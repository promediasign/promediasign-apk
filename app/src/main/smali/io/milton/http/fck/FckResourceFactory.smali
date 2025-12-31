.class public Lio/milton/http/fck/FckResourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ResourceFactory;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final wrappedFactory:Lio/milton/http/ResourceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/fck/FckResourceFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/fck/FckResourceFactory;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/ResourceFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/fck/FckResourceFactory;->wrappedFactory:Lio/milton/http/ResourceFactory;

    return-void
.end method

.method private getParent(Ljava/lang/String;Lio/milton/common/Path;)Lio/milton/resource/CollectionResource;
    .locals 3

    iget-object v0, p0, Lio/milton/http/fck/FckResourceFactory;->wrappedFactory:Lio/milton/http/ResourceFactory;

    invoke-virtual {p2}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v0

    instance-of v1, v0, Lio/milton/resource/CollectionResource;

    if-eqz v1, :cond_0

    check-cast v0, Lio/milton/resource/CollectionResource;

    return-object v0

    :cond_0
    sget-object v0, Lio/milton/http/fck/FckResourceFactory;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not locate a CollectionResource at: http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;
    .locals 2

    invoke-static {p2}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object v0

    sget-object v1, Lio/milton/http/fck/FckFileManagerResource;->URL:Lio/milton/common/Path;

    invoke-virtual {v1, v0}, Lio/milton/common/Path;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/milton/http/fck/FckResourceFactory;->getParent(Ljava/lang/String;Lio/milton/common/Path;)Lio/milton/resource/CollectionResource;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Lio/milton/http/fck/FckFileManagerResource;

    invoke-direct {p1, v0}, Lio/milton/http/fck/FckFileManagerResource;-><init>(Lio/milton/resource/CollectionResource;)V

    return-object p1

    :cond_0
    sget-object v1, Lio/milton/http/fck/FckQuickUploaderResource;->URL:Lio/milton/common/Path;

    invoke-virtual {v1, v0}, Lio/milton/common/Path;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/milton/http/fck/FckResourceFactory;->getParent(Ljava/lang/String;Lio/milton/common/Path;)Lio/milton/resource/CollectionResource;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Lio/milton/http/fck/FckQuickUploaderResource;

    invoke-direct {p1, v0}, Lio/milton/http/fck/FckQuickUploaderResource;-><init>(Lio/milton/resource/CollectionResource;)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lio/milton/http/fck/FckResourceFactory;->wrappedFactory:Lio/milton/http/ResourceFactory;

    invoke-interface {v0, p1, p2}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p1

    return-object p1
.end method
