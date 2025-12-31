.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctborderpre497type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.end method

.method public abstract getColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.end method

.method public abstract getStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;
.end method

.method public abstract isSetColor()Z
.end method

.method public abstract isSetStyle()Z
.end method

.method public abstract setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
.end method

.method public abstract setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V
.end method

.method public abstract unsetColor()V
.end method

.method public abstract unsetStyle()V
.end method

.method public abstract xgetStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;
.end method

.method public abstract xsetStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;)V
.end method
