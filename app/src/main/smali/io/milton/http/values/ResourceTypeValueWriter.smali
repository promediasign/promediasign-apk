.class public Lio/milton/http/values/ResourceTypeValueWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/values/ValueWriter;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final prefixes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/values/ResourceTypeValueWriter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/values/ResourceTypeValueWriter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/milton/http/values/ResourceTypeValueWriter;->prefixes:Ljava/util/Map;

    return-void
.end method

.method private lookupUnspecifiedPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/milton/http/values/ResourceTypeValueWriter;->prefixes:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    :goto_0
    iget-object v1, p0, Lio/milton/http/values/ResourceTypeValueWriter;->prefixes:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "P"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v0, v3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lio/milton/http/values/ResourceTypeValueWriter;->prefixes:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0

    const-string p1, "resourcetype"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public writeValue(Lio/milton/http/XmlWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/XmlWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    check-cast p5, Ljava/util/List;

    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p1, p3, p4}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object p1

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/xml/namespace/QName;

    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p7, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    const/4 p6, 0x0

    if-nez p5, :cond_0

    invoke-direct {p0, p4}, Lio/milton/http/values/ResourceTypeValueWriter;->lookupUnspecifiedPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p4, p5, p3}, Lio/milton/http/XmlWriter$Element;->begin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object p3

    :goto_1
    invoke-virtual {p3, p6}, Lio/milton/http/XmlWriter$Element;->noContent(Z)Lio/milton/http/XmlWriter$Element;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p5, p3}, Lio/milton/http/XmlWriter$Element;->begin(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object p3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p3, p4}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
