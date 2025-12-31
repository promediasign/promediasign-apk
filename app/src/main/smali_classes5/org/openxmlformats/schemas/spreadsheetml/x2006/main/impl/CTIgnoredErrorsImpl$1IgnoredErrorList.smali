.class final Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;->getIgnoredErrorList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IgnoredErrorList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->add(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)V

    return-void
.end method

.method public add(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;->insertNewIgnoredError(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->get(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;->getIgnoredErrorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->remove(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;->getIgnoredErrorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;

    invoke-virtual {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;->removeIgnoredError(I)V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->set(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;->getIgnoredErrorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;

    invoke-virtual {v1, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;->setIgnoredErrorArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl$1IgnoredErrorList;->this$0:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;->sizeOfIgnoredErrorArray()I

    move-result v0

    return v0
.end method
