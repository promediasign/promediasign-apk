.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctnumfmtsb58btype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewNumFmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
.end method

.method public abstract getCount()J
.end method

.method public abstract getNumFmtArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
.end method

.method public abstract getNumFmtArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
.end method

.method public abstract getNumFmtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewNumFmt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract removeNumFmt(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setNumFmtArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;)V
.end method

.method public abstract setNumFmtArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;)V
.end method

.method public abstract sizeOfNumFmtArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
