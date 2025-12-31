.class public Lio/milton/http/entity/MultiStatusEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/Response$Entity;


# instance fields
.field private final statii:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/HrefStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/http/HrefStatus;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/entity/MultiStatusEntity;->statii:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getStatii()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/milton/http/HrefStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/entity/MultiStatusEntity;->statii:Ljava/util/List;

    return-object v0
.end method

.method public write(Lio/milton/http/Response;Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    new-instance p2, Lio/milton/http/XmlWriter;

    .line 2
    .line 3
    invoke-interface {p1}, Lio/milton/http/Response;->getOutputStream()Ljava/io/OutputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Lio/milton/http/XmlWriter;-><init>(Ljava/io/OutputStream;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lio/milton/http/XmlWriter;->writeXMLHeader()V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "multistatus xmlns:D=\""

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ":\""

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Lio/milton/http/XmlWriter;->open(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lio/milton/http/XmlWriter;->newLine()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lio/milton/http/entity/MultiStatusEntity;->getStatii()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lio/milton/http/HrefStatus;

    .line 59
    .line 60
    const-string v1, "response"

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, v0, Lio/milton/http/HrefStatus;->href:Ljava/lang/String;

    .line 71
    .line 72
    const-string v3, ""

    .line 73
    .line 74
    const-string v4, "href"

    .line 75
    .line 76
    invoke-virtual {p2, v3, v4, v2}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v0, v0, Lio/milton/http/HrefStatus;->status:Lio/milton/http/Response$Status;

    .line 85
    .line 86
    iget v0, v0, Lio/milton/http/Response$Status;->code:I

    .line 87
    .line 88
    invoke-static {v3, v0, v2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v2, "status"

    .line 93
    .line 94
    invoke-virtual {p2, v3, v2, v0}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const-string p1, "multistatus"

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Lio/milton/http/XmlWriter;->flush()V

    .line 107
    .line 108
    .line 109
    return-void
.end method
