.class public Lio/milton/http/webdav/PropertiesRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/webdav/PropertiesRequest$Property;
    }
.end annotation


# instance fields
.field private final allProp:Z

.field private final properties:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/http/webdav/PropertiesRequest;->allProp:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/milton/http/webdav/PropertiesRequest;->properties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/milton/http/webdav/PropertiesRequest$Property;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/milton/http/webdav/PropertiesRequest;->allProp:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/milton/http/webdav/PropertiesRequest;->properties:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/milton/http/webdav/PropertiesRequest$Property;

    iget-object v1, p0, Lio/milton/http/webdav/PropertiesRequest;->properties:Ljava/util/Map;

    invoke-virtual {v0}, Lio/milton/http/webdav/PropertiesRequest$Property;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toProperties(Ljava/util/Set;)Lio/milton/http/webdav/PropertiesRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;)",
            "Lio/milton/http/webdav/PropertiesRequest;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/namespace/QName;

    new-instance v2, Lio/milton/http/webdav/PropertiesRequest$Property;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lio/milton/http/webdav/PropertiesRequest$Property;-><init>(Ljavax/xml/namespace/QName;Ljava/util/Set;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lio/milton/http/webdav/PropertiesRequest;

    invoke-direct {p0, v0}, Lio/milton/http/webdav/PropertiesRequest;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method


# virtual methods
.method public add(Ljavax/xml/namespace/QName;)V
    .locals 3

    iget-object v0, p0, Lio/milton/http/webdav/PropertiesRequest;->properties:Ljava/util/Map;

    new-instance v1, Lio/milton/http/webdav/PropertiesRequest$Property;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/milton/http/webdav/PropertiesRequest$Property;-><init>(Ljavax/xml/namespace/QName;Ljava/util/Set;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/PropertiesRequest;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/milton/http/webdav/PropertiesRequest$Property;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/PropertiesRequest;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isAllProp()Z
    .locals 1

    iget-boolean v0, p0, Lio/milton/http/webdav/PropertiesRequest;->allProp:Z

    return v0
.end method
