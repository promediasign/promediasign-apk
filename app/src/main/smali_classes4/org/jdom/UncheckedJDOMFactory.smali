.class public Lorg/jdom/UncheckedJDOMFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jdom/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V
    .locals 1

    instance-of v0, p1, Lorg/jdom/Element;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jdom/Element;

    iget-object p1, p1, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    :goto_0
    invoke-virtual {p1, p2}, Lorg/jdom/ContentList;->uncheckedAddContent(Lorg/jdom/Content;)V

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/jdom/Document;

    iget-object p1, p1, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public addNamespaceDeclaration(Lorg/jdom/Element;Lorg/jdom/Namespace;)V
    .locals 2

    iget-object v0, p1, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p1, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    :cond_0
    iget-object p1, p1, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 1

    .line 1
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0}, Lorg/jdom/Attribute;-><init>()V

    iput-object p1, v0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    iput-object p2, v0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    sget-object p1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    iput-object p1, v0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom/Attribute;
    .locals 1

    .line 2
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0}, Lorg/jdom/Attribute;-><init>()V

    iput-object p1, v0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    iput p3, v0, Lorg/jdom/Attribute;->type:I

    iput-object p2, v0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    sget-object p1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    iput-object p1, v0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 1

    .line 3
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0}, Lorg/jdom/Attribute;-><init>()V

    iput-object p1, v0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    iput p3, v0, Lorg/jdom/Attribute;->type:I

    iput-object p2, v0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    if-nez p4, :cond_0

    sget-object p4, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    :cond_0
    iput-object p4, v0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 1

    .line 4
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0}, Lorg/jdom/Attribute;-><init>()V

    iput-object p1, v0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    iput-object p2, v0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    if-nez p3, :cond_0

    sget-object p3, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    :cond_0
    iput-object p3, v0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public cdata(Ljava/lang/String;)Lorg/jdom/CDATA;
    .locals 1

    new-instance v0, Lorg/jdom/CDATA;

    invoke-direct {v0}, Lorg/jdom/CDATA;-><init>()V

    iput-object p1, v0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object v0
.end method

.method public comment(Ljava/lang/String;)Lorg/jdom/Comment;
    .locals 1

    new-instance v0, Lorg/jdom/Comment;

    invoke-direct {v0}, Lorg/jdom/Comment;-><init>()V

    iput-object p1, v0, Lorg/jdom/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public docType(Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/jdom/UncheckedJDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;

    move-result-object p1

    return-object p1
.end method

.method public docType(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jdom/UncheckedJDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;

    move-result-object p1

    return-object p1
.end method

.method public docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 1

    .line 3
    new-instance v0, Lorg/jdom/DocType;

    invoke-direct {v0}, Lorg/jdom/DocType;-><init>()V

    iput-object p1, v0, Lorg/jdom/DocType;->elementName:Ljava/lang/String;

    iput-object p2, v0, Lorg/jdom/DocType;->publicID:Ljava/lang/String;

    iput-object p3, v0, Lorg/jdom/DocType;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public document(Lorg/jdom/Element;)Lorg/jdom/Document;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/jdom/UncheckedJDOMFactory;->document(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public document(Lorg/jdom/Element;Lorg/jdom/DocType;)Lorg/jdom/Document;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom/UncheckedJDOMFactory;->document(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public document(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1

    .line 3
    new-instance v0, Lorg/jdom/Document;

    invoke-direct {v0}, Lorg/jdom/Document;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, p2}, Lorg/jdom/UncheckedJDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, p1}, Lorg/jdom/UncheckedJDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    :cond_1
    if-eqz p3, :cond_2

    iput-object p3, v0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public element(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1

    .line 1
    new-instance v0, Lorg/jdom/Element;

    invoke-direct {v0}, Lorg/jdom/Element;-><init>()V

    iput-object p1, v0, Lorg/jdom/Element;->name:Ljava/lang/String;

    sget-object p1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    iput-object p1, v0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1

    .line 2
    const-string v0, ""

    invoke-static {v0, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/UncheckedJDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object p1

    return-object p1
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
    .locals 0

    .line 3
    invoke-static {p2, p3}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/UncheckedJDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object p1

    return-object p1
.end method

.method public element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 1

    .line 4
    new-instance v0, Lorg/jdom/Element;

    invoke-direct {v0}, Lorg/jdom/Element;-><init>()V

    iput-object p1, v0, Lorg/jdom/Element;->name:Ljava/lang/String;

    if-nez p2, :cond_0

    sget-object p2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    :cond_0
    iput-object p2, v0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public entityRef(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 1

    .line 1
    new-instance v0, Lorg/jdom/EntityRef;

    invoke-direct {v0}, Lorg/jdom/EntityRef;-><init>()V

    iput-object p1, v0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    return-object v0
.end method

.method public entityRef(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 1

    .line 2
    new-instance v0, Lorg/jdom/EntityRef;

    invoke-direct {v0}, Lorg/jdom/EntityRef;-><init>()V

    iput-object p1, v0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    iput-object p2, v0, Lorg/jdom/EntityRef;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 1

    .line 3
    new-instance v0, Lorg/jdom/EntityRef;

    invoke-direct {v0}, Lorg/jdom/EntityRef;-><init>()V

    iput-object p1, v0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    iput-object p2, v0, Lorg/jdom/EntityRef;->publicID:Ljava/lang/String;

    iput-object p3, v0, Lorg/jdom/EntityRef;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;
    .locals 1

    .line 1
    new-instance v0, Lorg/jdom/ProcessingInstruction;

    invoke-direct {v0}, Lorg/jdom/ProcessingInstruction;-><init>()V

    iput-object p1, v0, Lorg/jdom/ProcessingInstruction;->target:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lorg/jdom/ProcessingInstruction;->setData(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/jdom/ProcessingInstruction;
    .locals 1

    .line 2
    new-instance v0, Lorg/jdom/ProcessingInstruction;

    invoke-direct {v0}, Lorg/jdom/ProcessingInstruction;-><init>()V

    iput-object p1, v0, Lorg/jdom/ProcessingInstruction;->target:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lorg/jdom/ProcessingInstruction;->setData(Ljava/util/Map;)Lorg/jdom/ProcessingInstruction;

    return-object v0
.end method

.method public setAttribute(Lorg/jdom/Element;Lorg/jdom/Attribute;)V
    .locals 0

    iget-object p1, p1, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {p1, p2}, Lorg/jdom/AttributeList;->uncheckedAddAttribute(Lorg/jdom/Attribute;)V

    return-void
.end method

.method public text(Ljava/lang/String;)Lorg/jdom/Text;
    .locals 1

    new-instance v0, Lorg/jdom/Text;

    invoke-direct {v0}, Lorg/jdom/Text;-><init>()V

    iput-object p1, v0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object v0
.end method
