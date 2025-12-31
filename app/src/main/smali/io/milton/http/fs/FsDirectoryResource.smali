.class public Lio/milton/http/fs/FsDirectoryResource;
.super Lio/milton/http/fs/FsResource;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/MakeCollectionableResource;
.implements Lio/milton/resource/PutableResource;
.implements Lio/milton/resource/CopyableResource;
.implements Lio/milton/resource/DeletableResource;
.implements Lio/milton/resource/MoveableResource;
.implements Lio/milton/resource/PropFindableResource;
.implements Lio/milton/resource/CollectionResource;
.implements Lio/milton/resource/LockableResource;
.implements Lio/milton/resource/GetableResource;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final contentService:Lio/milton/http/fs/FileContentService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/fs/FsDirectoryResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/fs/FsDirectoryResource;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/milton/http/fs/FileSystemResourceFactory;Ljava/io/File;Lio/milton/http/fs/FileContentService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/milton/http/fs/FsResource;-><init>(Ljava/lang/String;Lio/milton/http/fs/FileSystemResourceFactory;Ljava/io/File;)V

    iput-object p4, p0, Lio/milton/http/fs/FsDirectoryResource;->contentService:Lio/milton/http/fs/FileContentService;

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Is not a directory: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Directory does not exist: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildHref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lio/milton/http/fs/FsResource;->ssoPrefix:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {p1, p2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_1
    invoke-static {p1, v0}, Lio/milton/http/fs/FsDirectoryResource;->insertSsoPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1, p2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public static insertSsoPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {p0, v3, v0, v2, v1}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, v0, p1}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method


# virtual methods
.method public checkRedirect(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-virtual {v0}, Lio/milton/http/fs/FileSystemResourceFactory;->getDefaultPage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/milton/http/Request;->getAbsoluteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-virtual {p1}, Lio/milton/http/fs/FileSystemResourceFactory;->getDefaultPage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public child(Ljava/lang/String;)Lio/milton/resource/Resource;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    iget-object v1, p0, Lio/milton/http/fs/FsResource;->host:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lio/milton/http/fs/FileSystemResourceFactory;->resolveFile(Ljava/lang/String;Ljava/io/File;)Lio/milton/http/fs/FsResource;

    move-result-object p1

    return-object p1
.end method

.method public createCollection(Ljava/lang/String;)Lio/milton/resource/CollectionResource;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lio/milton/http/fs/FsDirectoryResource;

    iget-object v1, p0, Lio/milton/http/fs/FsResource;->host:Ljava/lang/String;

    iget-object v2, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    iget-object v3, p0, Lio/milton/http/fs/FsDirectoryResource;->contentService:Lio/milton/http/fs/FileContentService;

    invoke-direct {p1, v1, v2, v0, v3}, Lio/milton/http/fs/FsDirectoryResource;-><init>(Ljava/lang/String;Lio/milton/http/fs/FileSystemResourceFactory;Ljava/io/File;Lio/milton/http/fs/FileContentService;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createNew(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/String;)Lio/milton/resource/Resource;
    .locals 0

    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Lio/milton/http/fs/FsResource;->getFile()Ljava/io/File;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/fs/FsDirectoryResource;->contentService:Lio/milton/http/fs/FileContentService;

    invoke-interface {p1, p3, p2}, Lio/milton/http/fs/FileContentService;->setFileContent(Ljava/io/File;Ljava/io/InputStream;)V

    iget-object p1, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    iget-object p2, p0, Lio/milton/http/fs/FsResource;->host:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lio/milton/http/fs/FileSystemResourceFactory;->resolveFile(Ljava/lang/String;Ljava/io/File;)Lio/milton/http/fs/FsResource;

    move-result-object p1

    return-object p1
.end method

.method public doCopy(Ljava/io/File;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lio/milton/http/fs/FsResource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to copy to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getChildren()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/milton/resource/Resource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    iget-object v6, p0, Lio/milton/http/fs/FsResource;->host:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lio/milton/http/fs/FileSystemResourceFactory;->resolveFile(Ljava/lang/String;Ljava/io/File;)Lio/milton/http/fs/FsResource;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v5, Lio/milton/http/fs/FsDirectoryResource;->log:Lorg/slf4j/Logger;

    const-string v6, "Couldnt resolve file {}"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getContentLength()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "text/html"

    return-object p1
.end method

.method public getMaxAgeSeconds(Lio/milton/http/Auth;)Ljava/lang/Long;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V
    .locals 10
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

    invoke-virtual {p0}, Lio/milton/http/fs/FsResource;->getFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-virtual {p3}, Lio/milton/http/fs/FileSystemResourceFactory;->getRoot()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x5c

    const/16 p4, 0x2f

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lio/milton/http/XmlWriter;

    invoke-direct {p3, p1}, Lio/milton/http/XmlWriter;-><init>(Ljava/io/OutputStream;)V

    const-string p1, "html"

    invoke-virtual {p3, p1}, Lio/milton/http/XmlWriter;->open(Ljava/lang/String;)V

    const-string p4, "head"

    invoke-virtual {p3, p4}, Lio/milton/http/XmlWriter;->open(Ljava/lang/String;)V

    const-string v0, "<script type=\"text/javascript\" language=\"javascript1.1\">\n    var fNewDoc = false;\n  </script>\n  <script LANGUAGE=\"VBSCRIPT\">\n    On Error Resume Next\n    Set EditDocumentButton = CreateObject(\"SharePoint.OpenDocuments.3\")\n    fNewDoc = IsObject(EditDocumentButton)\n  </script>\n  <script type=\"text/javascript\" language=\"javascript1.1\">\n    var L_EditDocumentError_Text = \"The edit feature requires a SharePoint-compatible application and Microsoft Internet Explorer 4.0 or greater.\";\n    var L_EditDocumentRuntimeError_Text = \"Sorry, couldnt open the document.\";\n    function editDocument(strDocument) {\n      strDocument = \'http://192.168.1.2:8080\' + strDocument;       if (fNewDoc) {\n        if (!EditDocumentButton.EditDocument(strDocument)) {\n          alert(L_EditDocumentRuntimeError_Text + \' - \' + strDocument); \n        }\n      } else { \n        alert(L_EditDocumentError_Text + \' - \' + strDocument); \n      }\n    }\n  </script>\n"

    invoke-virtual {p3, v0}, Lio/milton/http/XmlWriter;->writeText(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;)V

    const-string p4, "body"

    invoke-virtual {p3, p4}, Lio/milton/http/XmlWriter;->open(Ljava/lang/String;)V

    const-string v0, "h1"

    invoke-virtual {p3, v0}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v0

    invoke-virtual {v0}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    move-result-object v0

    invoke-virtual {p0}, Lio/milton/http/fs/FsResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/milton/http/XmlWriter$Element;->writeText(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v0

    invoke-virtual {v0}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    const-string v0, "table"

    invoke-virtual {p3, v0}, Lio/milton/http/XmlWriter;->open(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/milton/http/fs/FsDirectoryResource;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/resource/Resource;

    const-string v3, "tr"

    invoke-virtual {p3, v3}, Lio/milton/http/XmlWriter;->open(Ljava/lang/String;)V

    const-string v4, "td"

    invoke-virtual {p3, v4}, Lio/milton/http/XmlWriter;->open(Ljava/lang/String;)V

    invoke-interface {v2}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v5}, Lio/milton/http/fs/FsDirectoryResource;->buildHref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "a"

    invoke-virtual {p3, v6}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v7

    const-string v8, "href"

    invoke-virtual {v7, v8, v5}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v7

    invoke-virtual {v7}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    move-result-object v7

    invoke-interface {v2}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/milton/http/XmlWriter$Element;->writeText(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v7

    invoke-virtual {v7}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    invoke-virtual {p3, v6}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v8, v7}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "editDocument(\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\')"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "onclick"

    invoke-virtual {v6, v7, v5}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v5

    invoke-virtual {v5}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    move-result-object v5

    const-string v6, "(edit with office)"

    invoke-virtual {v5, v6}, Lio/milton/http/XmlWriter$Element;->writeText(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v5

    invoke-virtual {v5}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    invoke-virtual {p3, v4}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v4

    invoke-virtual {v4}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lio/milton/resource/Resource;->getModifiedDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lio/milton/http/XmlWriter$Element;->writeText(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v2

    invoke-virtual {v2}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    invoke-virtual {p3, v3}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;)V

    invoke-virtual {p3}, Lio/milton/http/XmlWriter;->flush()V

    return-void
.end method
