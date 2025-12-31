.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctautofiltera8d0type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewFilterColumn()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;
.end method

.method public abstract addNewSortState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFilterColumnArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;
.end method

.method public abstract getFilterColumnArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;
.end method

.method public abstract getFilterColumnList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getSortState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;
.end method

.method public abstract insertNewFilterColumn(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetRef()Z
.end method

.method public abstract isSetSortState()Z
.end method

.method public abstract removeFilterColumn(I)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFilterColumnArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;)V
.end method

.method public abstract setFilterColumnArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setSortState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;)V
.end method

.method public abstract sizeOfFilterColumnArray()I
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetRef()V
.end method

.method public abstract unsetSortState()V
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method
