.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctsheets49fdtype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
.end method

.method public abstract getSheetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
.end method

.method public abstract getSheetArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
.end method

.method public abstract getSheetList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewSheet(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
.end method

.method public abstract removeSheet(I)V
.end method

.method public abstract setSheetArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;)V
.end method

.method public abstract setSheetArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;)V
.end method

.method public abstract sizeOfSheetArray()I
.end method
