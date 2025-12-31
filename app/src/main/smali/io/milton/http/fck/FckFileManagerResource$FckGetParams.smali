.class Lio/milton/http/fck/FckFileManagerResource$FckGetParams;
.super Lio/milton/http/fck/FckFileManagerResource$FckParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/fck/FckFileManagerResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FckGetParams"
.end annotation


# instance fields
.field command:Ljava/lang/String;

.field newFolderName:Ljava/lang/String;

.field private final out:Ljava/io/OutputStream;

.field resourceType:Ljava/lang/String;

.field sFolder:Ljava/lang/String;

.field serverPath:Ljava/lang/String;

.field final synthetic this$0:Lio/milton/http/fck/FckFileManagerResource;

.field private final writer:Lio/milton/http/XmlWriter;


# direct methods
.method public constructor <init>(Lio/milton/http/fck/FckFileManagerResource;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->this$0:Lio/milton/http/fck/FckFileManagerResource;

    invoke-direct {p0, p1, p3}, Lio/milton/http/fck/FckFileManagerResource$FckParams;-><init>(Lio/milton/http/fck/FckFileManagerResource;Ljava/util/Map;)V

    iput-object p2, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->out:Ljava/io/OutputStream;

    new-instance p1, Lio/milton/http/XmlWriter;

    invoke-direct {p1, p2}, Lio/milton/http/XmlWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer:Lio/milton/http/XmlWriter;

    const-string p1, "Command"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->command:Ljava/lang/String;

    const-string p1, "Type"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->resourceType:Ljava/lang/String;

    const-string p1, "CurrentFolder"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->sFolder:Ljava/lang/String;

    const-string p1, "NewFolderName"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->newFolderName:Ljava/lang/String;

    iget-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->sFolder:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->sFolder:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->sFolder:Ljava/lang/String;

    :cond_0
    const-string p1, "ServerPath"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->serverPath:Ljava/lang/String;

    return-void
.end method

.method private processUploadFolderCommand()V
    .locals 3

    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->this$0:Lio/milton/http/fck/FckFileManagerResource;

    invoke-static {v0}, Lio/milton/http/fck/FckFileManagerResource;->access$200(Lio/milton/http/fck/FckFileManagerResource;)Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<script type=\'text/javascript\'>\nwindow.parent.frames[\'frmUpload\'].OnUploadCompleted("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->this$0:Lio/milton/http/fck/FckFileManagerResource;

    invoke-static {v1}, Lio/milton/http/fck/FckFileManagerResource;->access$200(Lio/milton/http/fck/FckFileManagerResource;)Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    move-result-object v1

    iget v1, v1, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->this$0:Lio/milton/http/fck/FckFileManagerResource;

    invoke-static {v1}, Lio/milton/http/fck/FckFileManagerResource;->access$200(Lio/milton/http/fck/FckFileManagerResource;)Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    move-result-object v1

    iget-object v1, v1, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ",\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->this$0:Lio/milton/http/fck/FckFileManagerResource;

    invoke-static {v1}, Lio/milton/http/fck/FckFileManagerResource;->access$200(Lio/milton/http/fck/FckFileManagerResource;)Lio/milton/http/fck/FckFileManagerResource$FckPostParams;

    move-result-object v1

    iget-object v1, v1, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ");\n</script>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->out:Ljava/io/OutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "ioexception writing response to upload"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no post for upload command"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public initXml()V
    .locals 1

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lio/milton/http/XmlWriter;->writeXMLHeader()V

    return-void
.end method

.method public process()V
    .locals 6

    const-string v0, "Unknown command: "

    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->sFolder:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object v1

    iget-object v3, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->this$0:Lio/milton/http/fck/FckFileManagerResource;

    iget-object v4, v3, Lio/milton/http/fck/FckCommon;->wrappedResource:Lio/milton/resource/CollectionResource;

    invoke-static {v3, v4, v1}, Lio/milton/http/fck/FckFileManagerResource;->access$000(Lio/milton/http/fck/FckFileManagerResource;Lio/milton/resource/CollectionResource;Lio/milton/common/Path;)Lio/milton/resource/Resource;

    move-result-object v1

    instance-of v3, v1, Lio/milton/resource/CollectionResource;

    if-eqz v3, :cond_0

    check-cast v1, Lio/milton/resource/CollectionResource;

    iput-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "not found or not CollectionResource: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    if-eqz v1, :cond_5

    :try_start_0
    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->command:Ljava/lang/String;

    const-string v3, "GetFolders"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->processGetFoldersCommand(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->command:Ljava/lang/String;

    const-string v3, "GetFoldersAndFiles"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->processGetFoldersCommand(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->command:Ljava/lang/String;

    const-string v2, "CreateFolder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->processCreateFolderCommand()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->command:Ljava/lang/String;

    const-string v2, "FileUpload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->processUploadFolderCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer:Lio/milton/http/XmlWriter;

    invoke-virtual {v0}, Lio/milton/http/XmlWriter;->flush()V

    return-void

    :cond_4
    :try_start_1
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->command:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance v0, Lio/milton/http/exceptions/ConflictException;

    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    invoke-direct {v0, v1}, Lio/milton/http/exceptions/ConflictException;-><init>(Lio/milton/resource/Resource;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer:Lio/milton/http/XmlWriter;

    invoke-virtual {v1}, Lio/milton/http/XmlWriter;->flush()V

    throw v0

    :cond_5
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No PutableResource with that path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->sFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance v0, Lio/milton/http/exceptions/BadRequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Path not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->sFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/milton/http/exceptions/BadRequestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processCreateFolderCommand()V
    .locals 5

    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processCreateFolderCommand: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->newFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->newFolderName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "has child"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/16 v0, 0x65

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    instance-of v1, v0, Lio/milton/resource/MakeCollectionableResource;

    if-eqz v1, :cond_1

    check-cast v0, Lio/milton/resource/MakeCollectionableResource;

    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->newFolderName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/milton/resource/MakeCollectionableResource;->createCollection(Ljava/lang/String;)Lio/milton/resource/CollectionResource;

    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "add new child ok"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Lio/milton/http/exceptions/BadRequestException;

    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    const-string v2, "Folder does not allow creating subfolders"

    invoke-direct {v0, v1, v2}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception creating new folder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->newFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    invoke-interface {v3}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x67

    :goto_1
    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->initXml()V

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v1

    const-string v2, "Connector"

    invoke-virtual {v1, v2}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v1

    const-string v3, "command"

    iget-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->command:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    const-string v3, "resourceType"

    iget-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->resourceType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    invoke-virtual {v1}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v1

    const-string v3, "CurrentFolder"

    invoke-virtual {v1, v3}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v1

    const-string v3, "path"

    iget-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->sFolder:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    const-string v3, "url"

    iget-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->sFolder:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    invoke-virtual {v1}, Lio/milton/http/XmlWriter$Element;->noContent()Lio/milton/http/XmlWriter$Element;

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v1

    const-string v3, "Error"

    invoke-virtual {v1, v3}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "number"

    invoke-virtual {v1, v3, v0}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    invoke-virtual {v1}, Lio/milton/http/XmlWriter$Element;->noContent()Lio/milton/http/XmlWriter$Element;

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lio/milton/http/XmlWriter;->flush()V

    return-void
.end method

.method public processGetFoldersCommand(Z)V
    .locals 8

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->initXml()V

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v0

    const-string v1, "Connector"

    invoke-virtual {v0, v1}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v0

    const-string v2, "command"

    iget-object v3, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->command:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    const-string v2, "resourceType"

    iget-object v3, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->resourceType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    invoke-virtual {v0}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v0

    const-string v2, "CurrentFolder"

    invoke-virtual {v0, v2}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v0

    const-string v2, "path"

    iget-object v3, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->sFolder:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    const-string v2, "url"

    iget-object v3, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->sFolder:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    invoke-virtual {v0}, Lio/milton/http/XmlWriter$Element;->noContent()Lio/milton/http/XmlWriter$Element;

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v0

    const-string v2, "Folders"

    invoke-virtual {v0, v2}, Lio/milton/http/XmlWriter;->open(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Lio/milton/http/XmlWriter;->writeText(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    invoke-interface {v0}, Lio/milton/resource/CollectionResource;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "name"

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/milton/resource/Resource;

    instance-of v6, v4, Lio/milton/resource/CollectionResource;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v6

    const-string v7, "Folder"

    invoke-virtual {v6, v7}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v6

    invoke-interface {v4}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/milton/common/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    invoke-virtual {v6}, Lio/milton/http/XmlWriter$Element;->noContent()Lio/milton/http/XmlWriter$Element;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object p1

    const-string v0, "Files"

    invoke-virtual {p1, v0}, Lio/milton/http/XmlWriter;->open(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/milton/http/XmlWriter;->writeText(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    invoke-interface {p1}, Lio/milton/resource/CollectionResource;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/resource/Resource;

    instance-of v3, v2, Lio/milton/resource/CollectionResource;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object v3

    const-string v4, "File"

    invoke-virtual {v3, v4}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v3

    invoke-interface {v2}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/milton/common/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    instance-of v4, v2, Lio/milton/resource/GetableResource;

    const-string v6, "size"

    const-string v7, ""

    if-eqz v4, :cond_4

    check-cast v2, Lio/milton/resource/GetableResource;

    invoke-interface {v2}, Lio/milton/resource/GetableResource;->getContentLength()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v3, v6, v7}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    invoke-virtual {v3}, Lio/milton/http/XmlWriter$Element;->noContent()Lio/milton/http/XmlWriter$Element;

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v6, v7}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer()Lio/milton/http/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lio/milton/http/XmlWriter;->flush()V

    return-void
.end method

.method public writer()Lio/milton/http/XmlWriter;
    .locals 1

    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckGetParams;->writer:Lio/milton/http/XmlWriter;

    return-object v0
.end method
