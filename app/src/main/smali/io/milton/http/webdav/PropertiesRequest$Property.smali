.class public Lio/milton/http/webdav/PropertiesRequest$Property;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/webdav/PropertiesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# instance fields
.field private final name:Ljavax/xml/namespace/QName;

.field private final nested:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lio/milton/http/webdav/PropertiesRequest$Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/util/Set<",
            "Lio/milton/http/webdav/PropertiesRequest$Property;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/PropertiesRequest$Property;->name:Ljavax/xml/namespace/QName;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/PropertiesRequest$Property;->nested:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/milton/http/webdav/PropertiesRequest$Property;

    iget-object v0, p0, Lio/milton/http/webdav/PropertiesRequest$Property;->nested:Ljava/util/Map;

    iget-object v1, p2, Lio/milton/http/webdav/PropertiesRequest$Property;->name:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljavax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropertiesRequest$Property;->name:Ljavax/xml/namespace/QName;

    return-object v0
.end method
