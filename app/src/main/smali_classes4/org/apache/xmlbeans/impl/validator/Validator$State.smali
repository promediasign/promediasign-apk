.class final Lorg/apache/xmlbeans/impl/validator/Validator$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/validator/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "State"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field _attrModel:Lorg/apache/xmlbeans/SchemaAttributeModel;

.field _attrs:Ljava/util/HashSet;

.field _canHaveAttrs:Z

.field _canHaveElements:Z

.field _canHaveMixedContent:Z

.field _field:Lorg/apache/xmlbeans/SchemaField;

.field _hasSimpleContent:Z

.field _isEmpty:Z

.field _isNil:Z

.field _next:Lorg/apache/xmlbeans/impl/validator/Validator$State;

.field _sawText:Z

.field _type:Lorg/apache/xmlbeans/SchemaType;

.field _visitor:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;

.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/validator/Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/validator/Validator;->class$org$apache$xmlbeans$impl$validator$Validator:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.validator.Validator"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/validator/Validator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/validator/Validator;->class$org$apache$xmlbeans$impl$validator$Validator:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/validator/Validator$State;->$assertionsDisabled:Z

    return-void
.end method

.method private constructor <init>(Lorg/apache/xmlbeans/impl/validator/Validator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/validator/Validator$State;->this$0:Lorg/apache/xmlbeans/impl/validator/Validator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/validator/Validator;Lorg/apache/xmlbeans/impl/validator/Validator$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/validator/Validator$State;-><init>(Lorg/apache/xmlbeans/impl/validator/Validator;)V

    return-void
.end method


# virtual methods
.method public currentParticle()Lorg/apache/xmlbeans/SchemaParticle;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/validator/Validator$State;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/Validator$State;->_visitor:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/Validator$State;->_visitor:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    return-object v0
.end method

.method public end()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/validator/Validator$State;->_canHaveElements:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/Validator$State;->_visitor:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->visit(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public test(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/validator/Validator$State;->_canHaveElements:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/Validator$State;->_visitor:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->testValid(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public visit(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/validator/Validator$State;->_canHaveElements:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/Validator$State;->_visitor:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->visit(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
