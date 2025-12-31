.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctcustomerdatalist8b7ftype"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewCustData()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;
.end method

.method public abstract addNewTags()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTagsData;
.end method

.method public abstract getCustDataArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;
.end method

.method public abstract getCustDataArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;
.end method

.method public abstract getCustDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTags()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTagsData;
.end method

.method public abstract insertNewCustData(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;
.end method

.method public abstract isSetTags()Z
.end method

.method public abstract removeCustData(I)V
.end method

.method public abstract setCustDataArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;)V
.end method

.method public abstract setCustDataArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;)V
.end method

.method public abstract setTags(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTagsData;)V
.end method

.method public abstract sizeOfCustDataArray()I
.end method

.method public abstract unsetTags()V
.end method
