.class public Lio/milton/http/webdav/MsPropFindRequestFieldParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/webdav/PropFindRequestFieldParser;


# instance fields
.field private final wrapped:Lio/milton/http/webdav/PropFindRequestFieldParser;


# direct methods
.method public constructor <init>(Lio/milton/http/webdav/PropFindRequestFieldParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/MsPropFindRequestFieldParser;->wrapped:Lio/milton/http/webdav/PropFindRequestFieldParser;

    return-void
.end method

.method private add(Lio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljavax/xml/namespace/QName;

    sget-object v1, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {v1}, Lio/milton/common/NameSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/milton/http/webdav/PropertiesRequest;->add(Ljavax/xml/namespace/QName;)V

    return-void
.end method


# virtual methods
.method public getRequestedFields(Ljava/io/InputStream;)Lio/milton/http/webdav/PropertiesRequest;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/MsPropFindRequestFieldParser;->wrapped:Lio/milton/http/webdav/PropFindRequestFieldParser;

    invoke-interface {v0, p1}, Lio/milton/http/webdav/PropFindRequestFieldParser;->getRequestedFields(Ljava/io/InputStream;)Lio/milton/http/webdav/PropertiesRequest;

    move-result-object p1

    invoke-virtual {p1}, Lio/milton/http/webdav/PropertiesRequest;->isAllProp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lio/milton/http/webdav/PropertiesRequest;->getNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "creationdate"

    invoke-direct {p0, p1, v0}, Lio/milton/http/webdav/MsPropFindRequestFieldParser;->add(Lio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)V

    const-string v0, "getlastmodified"

    invoke-direct {p0, p1, v0}, Lio/milton/http/webdav/MsPropFindRequestFieldParser;->add(Lio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)V

    const-string v0, "displayname"

    invoke-direct {p0, p1, v0}, Lio/milton/http/webdav/MsPropFindRequestFieldParser;->add(Lio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)V

    const-string v0, "resourcetype"

    invoke-direct {p0, p1, v0}, Lio/milton/http/webdav/MsPropFindRequestFieldParser;->add(Lio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)V

    const-string v0, "getcontenttype"

    invoke-direct {p0, p1, v0}, Lio/milton/http/webdav/MsPropFindRequestFieldParser;->add(Lio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)V

    const-string v0, "getcontentlength"

    invoke-direct {p0, p1, v0}, Lio/milton/http/webdav/MsPropFindRequestFieldParser;->add(Lio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)V

    const-string v0, "getetag"

    invoke-direct {p0, p1, v0}, Lio/milton/http/webdav/MsPropFindRequestFieldParser;->add(Lio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method
