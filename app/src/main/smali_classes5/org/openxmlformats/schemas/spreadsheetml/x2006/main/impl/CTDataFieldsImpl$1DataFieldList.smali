.class final Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;->getDataFieldList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataFieldList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->add(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;)V

    return-void
.end method

.method public add(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;->insertNewDataField(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->get(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;->getDataFieldArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->remove(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;->getDataFieldArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;

    invoke-virtual {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;->removeDataField(I)V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->set(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;->getDataFieldArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;

    invoke-virtual {v1, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;->setDataFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl$1DataFieldList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;->sizeOfDataFieldArray()I

    move-result v0

    return v0
.end method
