.class public interface abstract Lio/milton/property/PropertySource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/property/PropertySource$PropertyMetaData;,
        Lio/milton/property/PropertySource$PropertyAccessibility;
    }
.end annotation


# virtual methods
.method public abstract clearProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)V
.end method

.method public abstract getAllPropertyNames(Lio/milton/resource/Resource;)Ljava/util/List;
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
.end method

.method public abstract getProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Ljava/lang/Object;
.end method

.method public abstract getPropertyMetaData(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Lio/milton/property/PropertySource$PropertyMetaData;
.end method

.method public abstract setProperty(Ljavax/xml/namespace/QName;Ljava/lang/Object;Lio/milton/resource/Resource;)V
.end method
