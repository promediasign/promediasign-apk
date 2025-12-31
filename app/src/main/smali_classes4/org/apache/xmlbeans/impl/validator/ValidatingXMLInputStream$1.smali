.class Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/Location;


# instance fields
.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream;

.field private final synthetic val$xeLoc:Lorg/apache/xmlbeans/xml/stream/Location;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream;Lorg/apache/xmlbeans/xml/stream/Location;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream$1;->this$0:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream$1;->val$xeLoc:Lorg/apache/xmlbeans/xml/stream/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream$1;->val$xeLoc:Lorg/apache/xmlbeans/xml/stream/Location;

    invoke-interface {v0}, Lorg/apache/xmlbeans/xml/stream/Location;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream$1;->val$xeLoc:Lorg/apache/xmlbeans/xml/stream/Location;

    invoke-interface {v0}, Lorg/apache/xmlbeans/xml/stream/Location;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream$1;->val$xeLoc:Lorg/apache/xmlbeans/xml/stream/Location;

    invoke-interface {v0}, Lorg/apache/xmlbeans/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream$1;->val$xeLoc:Lorg/apache/xmlbeans/xml/stream/Location;

    invoke-interface {v0}, Lorg/apache/xmlbeans/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
