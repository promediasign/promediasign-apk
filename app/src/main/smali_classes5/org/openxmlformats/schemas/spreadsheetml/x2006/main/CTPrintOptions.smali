.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctprintoptions943atype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getGridLines()Z
.end method

.method public abstract getGridLinesSet()Z
.end method

.method public abstract getHeadings()Z
.end method

.method public abstract getHorizontalCentered()Z
.end method

.method public abstract getVerticalCentered()Z
.end method

.method public abstract isSetGridLines()Z
.end method

.method public abstract isSetGridLinesSet()Z
.end method

.method public abstract isSetHeadings()Z
.end method

.method public abstract isSetHorizontalCentered()Z
.end method

.method public abstract isSetVerticalCentered()Z
.end method

.method public abstract setGridLines(Z)V
.end method

.method public abstract setGridLinesSet(Z)V
.end method

.method public abstract setHeadings(Z)V
.end method

.method public abstract setHorizontalCentered(Z)V
.end method

.method public abstract setVerticalCentered(Z)V
.end method

.method public abstract unsetGridLines()V
.end method

.method public abstract unsetGridLinesSet()V
.end method

.method public abstract unsetHeadings()V
.end method

.method public abstract unsetHorizontalCentered()V
.end method

.method public abstract unsetVerticalCentered()V
.end method

.method public abstract xgetGridLines()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetGridLinesSet()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHeadings()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHorizontalCentered()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVerticalCentered()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetGridLines(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetGridLinesSet(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHeadings(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHorizontalCentered(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVerticalCentered(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
