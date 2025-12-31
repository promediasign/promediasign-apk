.class public Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;
.super Lorg/apache/xmlbeans/impl/common/IdentityConstraint$ConstraintState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/common/IdentityConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectorState"
.end annotation


# instance fields
.field _constraint:Lorg/apache/xmlbeans/SchemaIdentityConstraint;

.field _context:Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;

.field _values:Ljava/util/Set;

.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/common/IdentityConstraint;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/common/IdentityConstraint;Lorg/apache/xmlbeans/SchemaIdentityConstraint;Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->this$0:Lorg/apache/xmlbeans/impl/common/IdentityConstraint;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$ConstraintState;-><init>(Lorg/apache/xmlbeans/impl/common/IdentityConstraint;)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_values:Ljava/util/Set;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_constraint:Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    new-instance p1, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_context:Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_constraint:Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaIdentityConstraint;->getSelectorPath()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/common/XPath;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->init(Lorg/apache/xmlbeans/impl/common/XPath;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_context:Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->start()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->createFieldState(Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;Lorg/apache/xmlbeans/SchemaType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFields(Lorg/apache/xmlbeans/impl/common/XmlObjectList;Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_constraint:Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaIdentityConstraint;->getConstraintCategory()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_values:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_values:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_constraint:Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaIdentityConstraint;->getConstraintCategory()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->this$0:Lorg/apache/xmlbeans/impl/common/IdentityConstraint;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_constraint:Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v4, v3, v0

    const-string p1, "cvc-identity-constraint.4.1"

    invoke-static {v2, p2, p1, v3}, Lorg/apache/xmlbeans/impl/common/IdentityConstraint;->access$300(Lorg/apache/xmlbeans/impl/common/IdentityConstraint;Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->this$0:Lorg/apache/xmlbeans/impl/common/IdentityConstraint;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_constraint:Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v4, v3, v0

    const-string p1, "cvc-identity-constraint.4.2.2"

    invoke-static {v2, p2, p1, v3}, Lorg/apache/xmlbeans/impl/common/IdentityConstraint;->access$300(Lorg/apache/xmlbeans/impl/common/IdentityConstraint;Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public attr(Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public createFieldState(Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$FieldState;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->this$0:Lorg/apache/xmlbeans/impl/common/IdentityConstraint;

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$FieldState;-><init>(Lorg/apache/xmlbeans/impl/common/IdentityConstraint;Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method

.method public element(Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_context:Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->element(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->createFieldState(Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;Lorg/apache/xmlbeans/SchemaType;)V

    :cond_0
    return-void
.end method

.method public endElement(Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_context:Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->end()V

    return-void
.end method

.method public remove(Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V
    .locals 3

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$ConstraintState;->_next:Lorg/apache/xmlbeans/impl/common/IdentityConstraint$ConstraintState;

    :goto_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$KeyrefState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$KeyrefState;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_constraint:Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaIdentityConstraint;->getReferencedKey()Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_constraint:Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$SelectorState;->_values:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$KeyrefState;->addKeyValues(Ljava/util/Set;Z)V

    :cond_0
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/common/IdentityConstraint$ConstraintState;->_next:Lorg/apache/xmlbeans/impl/common/IdentityConstraint$ConstraintState;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public text(Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;Lorg/apache/xmlbeans/SchemaType;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
