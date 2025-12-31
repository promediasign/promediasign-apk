.class Lorg/jdom/xpath/JaxenXPath$NSContext;
.super Lorg/jaxen/SimpleNamespaceContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/xpath/JaxenXPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NSContext"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/jdom/xpath/JaxenXPath;


# direct methods
.method public constructor <init>(Lorg/jdom/xpath/JaxenXPath;)V
    .locals 0

    invoke-direct {p0}, Lorg/jaxen/SimpleNamespaceContext;-><init>()V

    iput-object p1, p0, Lorg/jdom/xpath/JaxenXPath$NSContext;->this$0:Lorg/jdom/xpath/JaxenXPath;

    return-void
.end method


# virtual methods
.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-super {p0, p1}, Lorg/jaxen/SimpleNamespaceContext;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v2, p0, Lorg/jdom/xpath/JaxenXPath$NSContext;->this$0:Lorg/jdom/xpath/JaxenXPath;

    invoke-static {v2}, Lorg/jdom/xpath/JaxenXPath;->access$000(Lorg/jdom/xpath/JaxenXPath;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    instance-of v3, v2, Lorg/jdom/Element;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lorg/jdom/Element;

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lorg/jdom/Attribute;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/jdom/Attribute;

    invoke-virtual {v2}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lorg/jdom/Content;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/jdom/Content;

    invoke-virtual {v2}, Lorg/jdom/Content;->getParentElement()Lorg/jdom/Element;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v3, v2, Lorg/jdom/Document;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/jdom/Document;

    invoke-virtual {v2}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lorg/jdom/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    return-object v0
.end method
