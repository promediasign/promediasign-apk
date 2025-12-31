.class final Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;->getTableStyleElementList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TableStyleElementList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->add(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;)V

    return-void
.end method

.method public add(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;->insertNewTableStyleElement(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->get(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;->getTableStyleElementArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->remove(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;->getTableStyleElementArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;

    invoke-virtual {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;->removeTableStyleElement(I)V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->set(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;->getTableStyleElementArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;

    invoke-virtual {v1, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;->setTableStyleElementArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl$1TableStyleElementList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;->sizeOfTableStyleElementArray()I

    move-result v0

    return v0
.end method
