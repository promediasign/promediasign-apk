.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctxf97f7type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;
.end method

.method public abstract getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
.end method

.method public abstract getApplyAlignment()Z
.end method

.method public abstract getApplyBorder()Z
.end method

.method public abstract getApplyFill()Z
.end method

.method public abstract getApplyFont()Z
.end method

.method public abstract getApplyNumberFormat()Z
.end method

.method public abstract getApplyProtection()Z
.end method

.method public abstract getBorderId()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFillId()J
.end method

.method public abstract getFontId()J
.end method

.method public abstract getNumFmtId()J
.end method

.method public abstract getPivotButton()Z
.end method

.method public abstract getProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;
.end method

.method public abstract getQuotePrefix()Z
.end method

.method public abstract getXfId()J
.end method

.method public abstract isSetAlignment()Z
.end method

.method public abstract isSetApplyAlignment()Z
.end method

.method public abstract isSetApplyBorder()Z
.end method

.method public abstract isSetApplyFill()Z
.end method

.method public abstract isSetApplyFont()Z
.end method

.method public abstract isSetApplyNumberFormat()Z
.end method

.method public abstract isSetApplyProtection()Z
.end method

.method public abstract isSetBorderId()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFillId()Z
.end method

.method public abstract isSetFontId()Z
.end method

.method public abstract isSetNumFmtId()Z
.end method

.method public abstract isSetPivotButton()Z
.end method

.method public abstract isSetProtection()Z
.end method

.method public abstract isSetQuotePrefix()Z
.end method

.method public abstract isSetXfId()Z
.end method

.method public abstract setAlignment(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;)V
.end method

.method public abstract setApplyAlignment(Z)V
.end method

.method public abstract setApplyBorder(Z)V
.end method

.method public abstract setApplyFill(Z)V
.end method

.method public abstract setApplyFont(Z)V
.end method

.method public abstract setApplyNumberFormat(Z)V
.end method

.method public abstract setApplyProtection(Z)V
.end method

.method public abstract setBorderId(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFillId(J)V
.end method

.method public abstract setFontId(J)V
.end method

.method public abstract setNumFmtId(J)V
.end method

.method public abstract setPivotButton(Z)V
.end method

.method public abstract setProtection(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;)V
.end method

.method public abstract setQuotePrefix(Z)V
.end method

.method public abstract setXfId(J)V
.end method

.method public abstract unsetAlignment()V
.end method

.method public abstract unsetApplyAlignment()V
.end method

.method public abstract unsetApplyBorder()V
.end method

.method public abstract unsetApplyFill()V
.end method

.method public abstract unsetApplyFont()V
.end method

.method public abstract unsetApplyNumberFormat()V
.end method

.method public abstract unsetApplyProtection()V
.end method

.method public abstract unsetBorderId()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFillId()V
.end method

.method public abstract unsetFontId()V
.end method

.method public abstract unsetNumFmtId()V
.end method

.method public abstract unsetPivotButton()V
.end method

.method public abstract unsetProtection()V
.end method

.method public abstract unsetQuotePrefix()V
.end method

.method public abstract unsetXfId()V
.end method

.method public abstract xgetApplyAlignment()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyBorder()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyFill()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyFont()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyNumberFormat()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyProtection()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBorderId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderId;
.end method

.method public abstract xgetFillId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFillId;
.end method

.method public abstract xgetFontId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontId;
.end method

.method public abstract xgetNumFmtId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;
.end method

.method public abstract xgetPivotButton()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetQuotePrefix()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetXfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellStyleXfId;
.end method

.method public abstract xsetApplyAlignment(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyBorder(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyFill(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyFont(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyNumberFormat(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyProtection(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBorderId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderId;)V
.end method

.method public abstract xsetFillId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFillId;)V
.end method

.method public abstract xsetFontId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontId;)V
.end method

.method public abstract xsetNumFmtId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;)V
.end method

.method public abstract xsetPivotButton(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetQuotePrefix(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetXfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellStyleXfId;)V
.end method
