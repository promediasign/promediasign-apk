.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctpatternfill7452type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.end method

.method public abstract addNewFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.end method

.method public abstract getBgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.end method

.method public abstract getFgColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.end method

.method public abstract getPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;
.end method

.method public abstract isSetBgColor()Z
.end method

.method public abstract isSetFgColor()Z
.end method

.method public abstract isSetPatternType()Z
.end method

.method public abstract setBgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
.end method

.method public abstract setFgColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
.end method

.method public abstract setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V
.end method

.method public abstract unsetBgColor()V
.end method

.method public abstract unsetFgColor()V
.end method

.method public abstract unsetPatternType()V
.end method

.method public abstract xgetPatternType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;
.end method

.method public abstract xsetPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;)V
.end method
