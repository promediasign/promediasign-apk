.class public Lio/milton/http/values/ValueWriters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final writers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/values/ValueWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/values/ValueWriters;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/values/ValueWriters;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/milton/http/values/ValueWriters;->writers:Ljava/util/List;

    new-instance v1, Lio/milton/http/values/ModifiedDateValueWriter;

    invoke-direct {v1}, Lio/milton/http/values/ModifiedDateValueWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/milton/http/values/DateValueWriter;

    invoke-direct {v1}, Lio/milton/http/values/DateValueWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/milton/http/values/ResourceTypeValueWriter;

    invoke-direct {v1}, Lio/milton/http/values/ResourceTypeValueWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/milton/http/values/BooleanValueWriter;

    invoke-direct {v1}, Lio/milton/http/values/BooleanValueWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/milton/http/values/CDataValueWriter;

    invoke-direct {v1}, Lio/milton/http/values/CDataValueWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/milton/http/values/UUIDValueWriter;

    invoke-direct {v1}, Lio/milton/http/values/UUIDValueWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/milton/http/values/HrefListValueWriter;

    invoke-direct {v1}, Lio/milton/http/values/HrefListValueWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/milton/http/values/WrappedHrefWriter;

    invoke-direct {v1}, Lio/milton/http/values/WrappedHrefWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/milton/http/values/SupportedReportSetWriter;

    invoke-direct {v1}, Lio/milton/http/values/SupportedReportSetWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/milton/http/values/AddressDataTypeListValueWriter;

    invoke-direct {v1}, Lio/milton/http/values/AddressDataTypeListValueWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/milton/http/values/PriviledgeListValueWriter;

    invoke-direct {v1}, Lio/milton/http/values/PriviledgeListValueWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/milton/http/values/ToStringValueWriter;

    invoke-direct {v1}, Lio/milton/http/values/ToStringValueWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public parse(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lio/milton/http/values/ValueWriters;->writers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/values/ValueWriter;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lio/milton/http/values/ValueWriter;->supports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p2, Lio/milton/http/values/ValueWriters;->log:Lorg/slf4j/Logger;

    const-string v0, "parse: Found supporting value writer {} "

    invoke-interface {p2, v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p2, p1, p3}, Lio/milton/http/values/ValueWriter;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lio/milton/http/values/ValueWriters;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse: No value writer supports: qname: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " type:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public writeValue(Lio/milton/http/XmlWriter;Ljavax/xml/namespace/QName;Ljava/lang/String;Lio/milton/http/values/ValueAndType;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/XmlWriter;",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            "Lio/milton/http/values/ValueAndType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lio/milton/http/values/ValueWriters;->writers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/milton/http/values/ValueWriter;

    sget-object v2, Lio/milton/http/values/ValueWriters;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p4}, Lio/milton/http/values/ValueAndType;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p4}, Lio/milton/http/values/ValueAndType;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p4}, Lio/milton/http/values/ValueAndType;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistent type information: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lio/milton/http/values/ValueAndType;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lio/milton/http/values/ValueAndType;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lio/milton/http/values/ValueAndType;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v3, v2, v4, v5}, Lio/milton/http/values/ValueWriter;->supports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Lio/milton/http/values/ValueAndType;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v4, p1

    move-object v6, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lio/milton/http/values/ValueWriter;->writeValue(Lio/milton/http/XmlWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
