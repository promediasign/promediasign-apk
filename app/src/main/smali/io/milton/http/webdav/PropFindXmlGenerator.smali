.class public Lio/milton/http/webdav/PropFindXmlGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final helper:Lio/milton/http/webdav/PropFindXmlGeneratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/webdav/PropFindXmlGenerator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/webdav/PropFindXmlGenerator;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/values/ValueWriters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/milton/http/webdav/PropFindXmlGeneratorHelper;

    invoke-direct {v0, p1}, Lio/milton/http/webdav/PropFindXmlGeneratorHelper;-><init>(Lio/milton/http/values/ValueWriters;)V

    iput-object v0, p0, Lio/milton/http/webdav/PropFindXmlGenerator;->helper:Lio/milton/http/webdav/PropFindXmlGeneratorHelper;

    return-void
.end method


# virtual methods
.method public generate(Ljava/util/List;Ljava/io/OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse;",
            ">;",
            "Ljava/io/OutputStream;",
            "Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/milton/http/webdav/PropFindXmlGenerator;->generate(Ljava/util/List;Ljava/io/OutputStream;ZLio/milton/http/webdav/PropFindXmlFooter;)V

    return-void
.end method

.method public generate(Ljava/util/List;Ljava/io/OutputStream;ZLio/milton/http/webdav/PropFindXmlFooter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse;",
            ">;",
            "Ljava/io/OutputStream;",
            "Z",
            "Lio/milton/http/webdav/PropFindXmlFooter;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/milton/http/webdav/PropFindXmlGenerator;->helper:Lio/milton/http/webdav/PropFindXmlGeneratorHelper;

    invoke-virtual {v0, p1}, Lio/milton/http/webdav/PropFindXmlGeneratorHelper;->findNameSpaces(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lio/milton/http/XmlWriter;

    invoke-direct {v1, p2}, Lio/milton/http/XmlWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lio/milton/http/XmlWriter;->writeXMLHeader()V

    sget-object p2, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {p2}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "multistatus"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/milton/http/webdav/PropFindXmlGenerator;->helper:Lio/milton/http/webdav/PropFindXmlGeneratorHelper;

    invoke-virtual {v5, v0}, Lio/milton/http/webdav/PropFindXmlGeneratorHelper;->generateNamespaceDeclarations(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/milton/http/XmlWriter;->open(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/milton/http/XmlWriter;->newLine()V

    iget-object v2, p0, Lio/milton/http/webdav/PropFindXmlGenerator;->helper:Lio/milton/http/webdav/PropFindXmlGeneratorHelper;

    invoke-virtual {v2, v1, p1, v0, p3}, Lio/milton/http/webdav/PropFindXmlGeneratorHelper;->appendResponses(Lio/milton/http/XmlWriter;Ljava/util/List;Ljava/util/Map;Z)V

    if-eqz p4, :cond_0

    invoke-interface {p4, v1}, Lio/milton/http/webdav/PropFindXmlFooter;->footer(Lio/milton/http/XmlWriter;)V

    :cond_0
    invoke-virtual {p2}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/milton/http/XmlWriter;->flush()V

    return-void
.end method
