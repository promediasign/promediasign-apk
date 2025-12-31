.class public Lio/milton/http/fck/FckQuickUploaderResource;
.super Lio/milton/http/fck/FckCommon;
.source "SourceFile"


# static fields
.field public static final URL:Lio/milton/common/Path;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private code:I

.field private filename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/fck/FckQuickUploaderResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/fck/FckQuickUploaderResource;->log:Lorg/slf4j/Logger;

    const-string v0, "/fck_upload"

    invoke-static {v0}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object v0

    sput-object v0, Lio/milton/http/fck/FckQuickUploaderResource;->URL:Lio/milton/common/Path;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/CollectionResource;)V
    .locals 1

    sget-object v0, Lio/milton/http/fck/FckQuickUploaderResource;->URL:Lio/milton/common/Path;

    invoke-direct {p0, p1, v0}, Lio/milton/http/fck/FckCommon;-><init>(Lio/milton/resource/CollectionResource;Lio/milton/common/Path;)V

    return-void
.end method

.method private processFileUpload(Lio/milton/http/FileItem;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/FileItem;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lio/milton/http/fck/FckCommon;->wrappedResource:Lio/milton/resource/CollectionResource;

    if-eqz p2, :cond_6

    const-string v0, "uploads"

    invoke-interface {p2, v0}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p2

    check-cast p2, Lio/milton/resource/CollectionResource;

    if-nez p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lio/milton/http/fck/FckCommon;->wrappedResource:Lio/milton/resource/CollectionResource;

    instance-of v2, v1, Lio/milton/resource/MakeCollectionableResource;

    if-eqz v2, :cond_0

    check-cast v1, Lio/milton/resource/MakeCollectionableResource;

    invoke-interface {v1, v0}, Lio/milton/resource/MakeCollectionableResource;->createCollection(Ljava/lang/String;)Lio/milton/resource/CollectionResource;

    move-result-object p2

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    const-string v0, "Cant create subfolder"

    invoke-direct {p1, p2, v0}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_3
    invoke-interface {p1}, Lio/milton/http/FileItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/milton/common/FileUtils;->sanitiseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/milton/http/fck/FckQuickUploaderResource;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processFileUpload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v3, v1

    :goto_4
    invoke-interface {p2, v0}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v0, v2}, Lio/milton/common/FileUtils;->incrementFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    move-object v0, v3

    goto :goto_4

    :cond_2
    invoke-interface {p1}, Lio/milton/http/FileItem;->getSize()J

    move-result-wide v4

    :try_start_1
    instance-of v2, p2, Lio/milton/resource/PutableResource;

    if-eqz v2, :cond_5

    check-cast p2, Lio/milton/resource/PutableResource;

    invoke-interface {p1}, Lio/milton/http/FileItem;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v0, p1, v2, v1}, Lio/milton/resource/PutableResource;->createNew(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p2, Lio/milton/http/fck/FckQuickUploaderResource;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_8

    :catch_4
    move-exception p1

    goto :goto_9

    :catch_5
    move-exception p1

    goto :goto_a

    :catch_6
    move-exception p1

    goto :goto_b

    :cond_3
    sget-object p1, Lio/milton/http/fck/FckQuickUploaderResource;->log:Lorg/slf4j/Logger;

    const-string p2, "createNew returned null"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_1
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_5
    if-eqz v3, :cond_4

    :try_start_2
    invoke-direct {p0, v0}, Lio/milton/http/fck/FckQuickUploaderResource;->uploadResponseOk(Ljava/lang/String;)V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_4
    invoke-direct {p0}, Lio/milton/http/fck/FckQuickUploaderResource;->uploadResponseOk()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :goto_6
    sget-object p2, Lio/milton/http/fck/FckQuickUploaderResource;->log:Lorg/slf4j/Logger;

    const-string v0, "Exception saving new file"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/milton/http/fck/FckQuickUploaderResource;->uploadResponseFailed(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_5
    :try_start_3
    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    const-string v0, "Does not implement PutableResource"

    invoke-direct {p1, p2, v0}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_8
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_9
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_a
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_b
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    const-string p2, "collection not found"

    invoke-direct {p1, p0, p2}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    throw p1
.end method

.method private uploadResponse(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lio/milton/http/fck/FckQuickUploaderResource;->code:I

    iput-object p2, p0, Lio/milton/http/fck/FckQuickUploaderResource;->filename:Ljava/lang/String;

    return-void
.end method

.method private uploadResponseFailed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lio/milton/http/fck/FckQuickUploaderResource;->uploadResponse(ILjava/lang/String;)V

    return-void
.end method

.method private uploadResponseOk()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/milton/http/fck/FckQuickUploaderResource;->uploadResponse(ILjava/lang/String;)V

    return-void
.end method

.method private uploadResponseOk(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/16 v0, 0xc9

    invoke-direct {p0, v0, p1}, Lio/milton/http/fck/FckQuickUploaderResource;->uploadResponse(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "text/html"

    return-object p1
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    const-string v0, "fckquickuploader"

    return-object v0
.end method

.method public processForm(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
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

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LA/g;->x(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lio/milton/http/fck/FckQuickUploaderResource;->processFileUpload(Lio/milton/http/FileItem;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    sget-object p1, Lio/milton/http/fck/FckQuickUploaderResource;->log:Lorg/slf4j/Logger;

    const-string p2, "no files to upload"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v0
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

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lio/milton/http/fck/FckQuickUploaderResource;->code:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "<script type=\"text/javascript\">\nwindow.parent.frames[\'frmUpload\'].OnUploadCompleted([code],\'[name]\') ;\n</script>\n"

    const-string v0, "[code]"

    invoke-virtual {p4, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lio/milton/http/fck/FckQuickUploaderResource;->filename:Ljava/lang/String;

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    const-string p4, "[name]"

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
