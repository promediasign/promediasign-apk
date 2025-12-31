.class public Lio/milton/http/fs/FsFileResource;
.super Lio/milton/http/fs/FsResource;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/CopyableResource;
.implements Lio/milton/resource/DeletableResource;
.implements Lio/milton/resource/GetableResource;
.implements Lio/milton/resource/MoveableResource;
.implements Lio/milton/resource/PropFindableResource;
.implements Lio/milton/resource/ReplaceableResource;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final contentService:Lio/milton/http/fs/FileContentService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/fs/FsFileResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/fs/FsFileResource;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/milton/http/fs/FileSystemResourceFactory;Ljava/io/File;Lio/milton/http/fs/FileContentService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/milton/http/fs/FsResource;-><init>(Ljava/lang/String;Lio/milton/http/fs/FileSystemResourceFactory;Ljava/io/File;)V

    iput-object p4, p0, Lio/milton/http/fs/FsFileResource;->contentService:Lio/milton/http/fs/FileContentService;

    return-void
.end method


# virtual methods
.method public checkRedirect(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public doCopy(Ljava/io/File;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed doing copy to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getContentLength()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-static {v0}, Lio/milton/common/ContentTypeUtils;->findContentTypes(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lio/milton/common/ContentTypeUtils;->findAcceptableContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/milton/http/fs/FsFileResource;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "getContentType: preferred: {} mime: {} selected: {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v0, v4, p1

    const/4 p1, 0x2

    aput-object v1, v4, p1

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public getMaxAgeSeconds(Lio/milton/http/Auth;)Ljava/lang/Long;
    .locals 0

    iget-object p1, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-virtual {p1, p0}, Lio/milton/http/fs/FileSystemResourceFactory;->maxAgeSeconds(Lio/milton/http/fs/FsResource;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public replaceContent(Ljava/io/InputStream;Ljava/lang/Long;)V
    .locals 2

    :try_start_0
    iget-object p2, p0, Lio/milton/http/fs/FsFileResource;->contentService:Lio/milton/http/fs/FileContentService;

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-interface {p2, v0, p1}, Lio/milton/http/fs/FileContentService;->setFileContent(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lio/milton/http/exceptions/BadRequestException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldnt write to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lio/milton/http/exceptions/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
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

    const-string p3, "sendContent: send whole file "

    const-string p4, "sendContent: ranged content: "

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/milton/http/fs/FsFileResource;->contentService:Lio/milton/http/fs/FileContentService;

    iget-object v2, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-interface {v1, v2}, Lio/milton/http/fs/FileContentService;->getFileContent(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz p2, :cond_0

    sget-object p3, Lio/milton/http/fs/FsFileResource;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-static {v0, p2, p1}, Lio/milton/common/RangeUtils;->writeRange(Ljava/io/InputStream;Lio/milton/http/Range;Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    sget-object p2, Lio/milton/http/fs/FsFileResource;->log:Lorg/slf4j/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    :goto_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/milton/common/ReadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/milton/common/WritingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :goto_1
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    new-instance p1, Lio/milton/http/exceptions/NotFoundException;

    const-string p2, "Couldnt locate content"

    invoke-direct {p1, p2}, Lio/milton/http/exceptions/NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p1
.end method
