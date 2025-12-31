.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cttablestyleinfo499atype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getShowColumnStripes()Z
.end method

.method public abstract getShowFirstColumn()Z
.end method

.method public abstract getShowLastColumn()Z
.end method

.method public abstract getShowRowStripes()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetShowColumnStripes()Z
.end method

.method public abstract isSetShowFirstColumn()Z
.end method

.method public abstract isSetShowLastColumn()Z
.end method

.method public abstract isSetShowRowStripes()Z
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setShowColumnStripes(Z)V
.end method

.method public abstract setShowFirstColumn(Z)V
.end method

.method public abstract setShowLastColumn(Z)V
.end method

.method public abstract setShowRowStripes(Z)V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetShowColumnStripes()V
.end method

.method public abstract unsetShowFirstColumn()V
.end method

.method public abstract unsetShowLastColumn()V
.end method

.method public abstract unsetShowRowStripes()V
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetShowColumnStripes()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowFirstColumn()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowLastColumn()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowRowStripes()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetShowColumnStripes(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowFirstColumn(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowLastColumn(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowRowStripes(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
