.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctffcheckboxf3a5type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewChecked()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewSizeAuto()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getChecked()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getSizeAuto()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract isSetChecked()Z
.end method

.method public abstract isSetDefault()Z
.end method

.method public abstract isSetSize()Z
.end method

.method public abstract isSetSizeAuto()Z
.end method

.method public abstract setChecked(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDefault(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSize(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setSizeAuto(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract unsetChecked()V
.end method

.method public abstract unsetDefault()V
.end method

.method public abstract unsetSize()V
.end method

.method public abstract unsetSizeAuto()V
.end method
