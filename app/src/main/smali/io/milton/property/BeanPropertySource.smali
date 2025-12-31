.class public Lio/milton/property/BeanPropertySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/property/PropertySource;


# static fields
.field private static final NOARGS:[Ljava/lang/Object;

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/property/BeanPropertySource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/property/BeanPropertySource;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lio/milton/property/BeanPropertySource;->NOARGS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/milton/property/BeanPropertySource;->setProperty(Ljavax/xml/namespace/QName;Ljava/lang/Object;Lio/milton/resource/Resource;)V

    return-void
.end method

.method public getAllPropertyNames(Lio/milton/resource/Resource;)Ljava/util/List;
    .locals 7
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

    invoke-virtual {p0, p1}, Lio/milton/property/BeanPropertySource;->getAnnotation(Lio/milton/resource/Resource;)Lio/milton/annotations/BeanPropertyResource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/beanutils/PropertyUtils;->getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v5, Ljavax/xml/namespace/QName;

    invoke-interface {v0}, Lio/milton/annotations/BeanPropertyResource;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getAnnotation(Lio/milton/resource/Resource;)Lio/milton/annotations/BeanPropertyResource;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lio/milton/annotations/BeanPropertyResource;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lio/milton/annotations/BeanPropertyResource;

    return-object p1
.end method

.method public getProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/milton/property/BeanPropertySource;->getPropertyDescriptor(Lio/milton/resource/Resource;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lio/milton/property/BeanPropertySource;->NOARGS:[Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lio/milton/http/exceptions/NotAuthorizedException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lio/milton/http/exceptions/NotAuthorizedException;

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no prop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPropertyDescriptor(Lio/milton/resource/Resource;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lorg/apache/commons/beanutils/PropertyUtils;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getPropertyMetaData(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Lio/milton/property/PropertySource$PropertyMetaData;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lio/milton/property/BeanPropertySource;->log:Lorg/slf4j/Logger;

    const-string v3, "getPropertyMetaData"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/milton/property/BeanPropertySource;->getAnnotation(Lio/milton/resource/Resource;)Lio/milton/annotations/BeanPropertyResource;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-string p2, " no annotation: "

    invoke-interface {v2, p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lio/milton/property/PropertySource$PropertyMetaData;->UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lio/milton/annotations/BeanPropertyResource;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Lio/milton/annotations/BeanPropertyResource;->value()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    const-string v0, "different namespace"

    invoke-interface {v2, v0, p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lio/milton/property/PropertySource$PropertyMetaData;->UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lio/milton/property/BeanPropertySource;->getPropertyDescriptor(Lio/milton/resource/Resource;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    const-class p2, Lio/milton/annotations/BeanProperty;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lio/milton/annotations/BeanProperty;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lio/milton/annotations/BeanProperty;->value()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "getPropertyMetaData: property is annotated and value is false, so do not allow access"

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    sget-object p1, Lio/milton/property/PropertySource$PropertyMetaData;->UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;

    return-object p1

    :cond_3
    const-string p1, "getPropertyMetaData: property is annotated and value is true, so allow access"

    :goto_0
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Lio/milton/annotations/BeanPropertyResource;->enableByDefault()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "getPropertyMetaData: no property annotation, property annotation is enable by default so allow access"

    goto :goto_0

    :goto_1
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "writable: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lio/milton/annotations/BeanPropertyResource;->writable()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v3}, Lio/milton/annotations/BeanPropertyResource;->writable()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p1, Lio/milton/property/PropertySource$PropertyMetaData;

    sget-object p2, Lio/milton/property/PropertySource$PropertyAccessibility;->WRITABLE:Lio/milton/property/PropertySource$PropertyAccessibility;

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lio/milton/property/PropertySource$PropertyMetaData;-><init>(Lio/milton/property/PropertySource$PropertyAccessibility;Ljava/lang/Class;)V

    return-object p1

    :cond_7
    new-instance p1, Lio/milton/property/PropertySource$PropertyMetaData;

    sget-object p2, Lio/milton/property/PropertySource$PropertyAccessibility;->READ_ONLY:Lio/milton/property/PropertySource$PropertyAccessibility;

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lio/milton/property/PropertySource$PropertyMetaData;-><init>(Lio/milton/property/PropertySource$PropertyAccessibility;Ljava/lang/Class;)V

    return-object p1

    :cond_8
    const-string p1, "getPropertyMetaData:no property annotation, class annotation says disable by default, decline access"

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    sget-object p1, Lio/milton/property/PropertySource$PropertyMetaData;->UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;

    return-object p1

    :cond_9
    :goto_2
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getPropertyMetaData: no read method:"

    aput-object v4, v3, v0

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-static {v2, v3}, Lio/milton/common/LogUtils;->debug(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    sget-object p1, Lio/milton/property/PropertySource$PropertyMetaData;->UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;

    return-object p1
.end method

.method public setProperty(Ljavax/xml/namespace/QName;Ljava/lang/Object;Lio/milton/resource/Resource;)V
    .locals 3

    sget-object v0, Lio/milton/property/BeanPropertySource;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setProperty: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lio/milton/property/BeanPropertySource;->getPropertyDescriptor(Lio/milton/resource/Resource;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lio/milton/http/exceptions/NotAuthorizedException;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    const-string v0, "Exception setting property: "

    if-nez p2, :cond_0

    sget-object p2, Lio/milton/property/BeanPropertySource;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lio/milton/property/BeanPropertySource;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to value: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " class:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lio/milton/http/exceptions/NotAuthorizedException;

    throw p1
.end method
