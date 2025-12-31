.class public Lio/milton/property/MultiNamespaceCustomPropertySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/property/PropertySource;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/milton/property/MultiNamespaceCustomPropertySource;->setProperty(Ljavax/xml/namespace/QName;Ljava/lang/Object;Lio/milton/resource/Resource;)V

    return-void
.end method

.method public getAllPropertyNames(Lio/milton/resource/Resource;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            ")",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public getPropertyMetaData(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Lio/milton/property/PropertySource$PropertyMetaData;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setProperty(Ljavax/xml/namespace/QName;Ljava/lang/Object;Lio/milton/resource/Resource;)V
    .locals 0

    invoke-static {p3}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method
