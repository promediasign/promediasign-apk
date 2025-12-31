.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctppr01c0type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewPPrChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrChange;
.end method

.method public abstract addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;
.end method

.method public abstract addNewSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
.end method

.method public abstract getPPrChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrChange;
.end method

.method public abstract getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;
.end method

.method public abstract getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
.end method

.method public abstract isSetPPrChange()Z
.end method

.method public abstract isSetRPr()Z
.end method

.method public abstract isSetSectPr()Z
.end method

.method public abstract setPPrChange(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrChange;)V
.end method

.method public abstract setRPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;)V
.end method

.method public abstract setSectPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V
.end method

.method public abstract unsetPPrChange()V
.end method

.method public abstract unsetRPr()V
.end method

.method public abstract unsetSectPr()V
.end method
