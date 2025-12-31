.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctexternalsheetnames7eddtype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewSheetName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
.end method

.method public abstract getSheetNameArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
.end method

.method public abstract getSheetNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
.end method

.method public abstract getSheetNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewSheetName(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
.end method

.method public abstract removeSheetName(I)V
.end method

.method public abstract setSheetNameArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;)V
.end method

.method public abstract setSheetNameArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;)V
.end method

.method public abstract sizeOfSheetNameArray()I
.end method
