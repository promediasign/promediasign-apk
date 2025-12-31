.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyPr$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyPr;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctrubyprb2actype"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyPr;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewDirty()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewHps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewHpsBaseText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewHpsRaise()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewLid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;
.end method

.method public abstract addNewRubyAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyAlign;
.end method

.method public abstract getDirty()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getHps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getHpsBaseText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getHpsRaise()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getLid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;
.end method

.method public abstract getRubyAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyAlign;
.end method

.method public abstract isSetDirty()Z
.end method

.method public abstract setDirty(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setHps(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setHpsBaseText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setHpsRaise(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setLid(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;)V
.end method

.method public abstract setRubyAlign(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyAlign;)V
.end method

.method public abstract unsetDirty()V
.end method
