.class public Lio/milton/http/fck/FckFileManagerResource;
.super Lio/milton/http/fck/FckCommon;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/GetableResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/fck/FckFileManagerResource$FckPostParams;,
        Lio/milton/http/fck/FckFileManagerResource$FckGetParams;,
        Lio/milton/http/fck/FckFileManagerResource$FckParams;
    }
.end annotation


# static fields
.field public static final URL:Lio/milton/common/Path;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private uploadParams:Lio/milton/http/fck/FckFileManagerResource$FckPostParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/fck/FckFileManagerResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/fck/FckFileManagerResource;->log:Lorg/slf4j/Logger;

    const-string v0, "/fck_connector.html"

    invoke-static {v0}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object v0

    sput-object v0, Lio/milton/http/fck/FckFileManagerResource;->URL:Lio/milton/common/Path;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/CollectionResource;)V
    .locals 1

    sget-object v0, Lio/milton/http/fck/FckFileManagerResource;->URL:Lio/milton/common/Path;

    invoke-direct {p0, p1, v0}, Lio/milton/http/fck/FckCommon;-><init>(Lio/milton/resource/CollectionResource;Lio/milton/common/Path;)V

    return-void
.end method

.method public static synthetic access$000(Lio/milton/http/fck/FckFileManagerResource;Lio/milton/resource/CollectionResource;Lio/milton/common/Path;)Lio/milton/resource/Resource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/milton/http/fck/FckFileManagerResource;->find(Lio/milton/resource/CollectionResource;Lio/milton/common/Path;)Lio/milton/resource/Resource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lio/milton/http/fck/FckFileManagerResource;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$200(Lio/milton/http/fck/FckFileManagerResource;)Lio/milton/http/fck/FckFileManagerResource$FckPostParams;
    .locals 0

    iget-object p0, p0, Lio/milton/http/fck/FckFileManagerResource;->uploadParams:Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    return-object p0
.end method

.method private find(Lio/milton/resource/CollectionResource;Lio/milton/common/Path;)Lio/milton/resource/Resource;
    .locals 7

    invoke-virtual {p2}, Lio/milton/common/Path;->getParts()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    instance-of v4, p1, Lio/milton/resource/CollectionResource;

    const/4 v5, 0x0

    const-string v6, " in path: "

    if-eqz v4, :cond_1

    check-cast p1, Lio/milton/resource/CollectionResource;

    invoke-interface {p1, v3}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lio/milton/http/fck/FckFileManagerResource;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lio/milton/http/fck/FckFileManagerResource;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a collection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v5

    :cond_2
    return-object p1
.end method


# virtual methods
.method public getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lio/milton/http/fck/FckFileManagerResource;->uploadParams:Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    if-eqz p1, :cond_0

    const-string p1, "text/html"

    goto :goto_0

    :cond_0
    const-string p1, "text/xml; charset=UTF-8"

    :goto_0
    return-object p1
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    const-string v0, "fckeditor"

    return-object v0
.end method

.method public processForm(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/milton/http/FileItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    invoke-direct {v0, p0, p1}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;-><init>(Lio/milton/http/fck/FckFileManagerResource;Ljava/util/Map;)V

    iput-object v0, p0, Lio/milton/http/fck/FckFileManagerResource;->uploadParams:Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    invoke-virtual {v0, p2}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->processFileUploadCommand(Ljava/util/Map;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    sget-object p2, Lio/milton/http/fck/FckFileManagerResource;->log:Lorg/slf4j/Logger;

    const-string p4, "sendContent"

    invoke-interface {p2, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object p2, p0, Lio/milton/http/fck/FckFileManagerResource;->uploadParams:Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    if-eqz p2, :cond_2

    const-string p2, "CKEditorFuncNum"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const-string p3, "<script type=\"text/javascript\">window.parent.CKEDITOR.tools.callFunction( [func], \"[name]\" );</script>"

    const-string p4, "[func]"

    invoke-virtual {p3, p4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lio/milton/http/fck/FckFileManagerResource;->uploadParams:Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    iget p4, p4, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->code:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "[code]"

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/milton/http/fck/FckFileManagerResource;->uploadParams:Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    iget-object v0, p3, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p4, p3, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->message:Ljava/lang/String;

    :cond_0
    const-string v0, "[msg]"

    iget-object p3, p3, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->message:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/milton/http/fck/FckFileManagerResource;->uploadParams:Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    iget-object v0, p3, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->newName:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object p4, p3, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->newName:Ljava/lang/String;

    :cond_1
    const-string p4, "[name]"

    iget-object p3, p3, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->newName:Ljava/lang/String;

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_2
    new-instance p2, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;

    invoke-direct {p2, p0, p1, p3}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;-><init>(Lio/milton/http/fck/FckFileManagerResource;Ljava/io/OutputStream;Ljava/util/Map;)V

    :try_start_0
    invoke-virtual {p2}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->process()V
    :try_end_0
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
