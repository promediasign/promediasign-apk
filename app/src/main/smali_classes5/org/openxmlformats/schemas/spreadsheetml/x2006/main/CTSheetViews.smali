.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctsheetviewsb918type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getSheetViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
.end method

.method public abstract getSheetViewArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
.end method

.method public abstract getSheetViewList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewSheetView(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract removeSheetView(I)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setSheetViewArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;)V
.end method

.method public abstract setSheetViewArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;)V
.end method

.method public abstract sizeOfSheetViewArray()I
.end method

.method public abstract unsetExtLst()V
.end method
