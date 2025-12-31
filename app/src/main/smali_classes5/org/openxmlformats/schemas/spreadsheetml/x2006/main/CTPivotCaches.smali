.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctpivotcaches4f32type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewPivotCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
.end method

.method public abstract getPivotCacheArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
.end method

.method public abstract getPivotCacheArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
.end method

.method public abstract getPivotCacheList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewPivotCache(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
.end method

.method public abstract removePivotCache(I)V
.end method

.method public abstract setPivotCacheArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;)V
.end method

.method public abstract setPivotCacheArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;)V
.end method

.method public abstract sizeOfPivotCacheArray()I
.end method
