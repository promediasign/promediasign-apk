.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cttrpr2848type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewDel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract addNewIns()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract addNewTrPrChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrChange;
.end method

.method public abstract getDel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract getIns()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract getTrPrChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrChange;
.end method

.method public abstract isSetDel()Z
.end method

.method public abstract isSetIns()Z
.end method

.method public abstract isSetTrPrChange()Z
.end method

.method public abstract setDel(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V
.end method

.method public abstract setIns(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V
.end method

.method public abstract setTrPrChange(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrChange;)V
.end method

.method public abstract unsetDel()V
.end method

.method public abstract unsetIns()V
.end method

.method public abstract unsetTrPrChange()V
.end method
