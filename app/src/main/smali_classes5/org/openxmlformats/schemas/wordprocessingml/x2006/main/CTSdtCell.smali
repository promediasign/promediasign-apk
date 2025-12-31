.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctsdtcell626dtype"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentCell;
.end method

.method public abstract addNewSdtEndPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtEndPr;
.end method

.method public abstract addNewSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;
.end method

.method public abstract getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentCell;
.end method

.method public abstract getSdtEndPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtEndPr;
.end method

.method public abstract getSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;
.end method

.method public abstract isSetSdtContent()Z
.end method

.method public abstract isSetSdtEndPr()Z
.end method

.method public abstract isSetSdtPr()Z
.end method

.method public abstract setSdtContent(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentCell;)V
.end method

.method public abstract setSdtEndPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtEndPr;)V
.end method

.method public abstract setSdtPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;)V
.end method

.method public abstract unsetSdtContent()V
.end method

.method public abstract unsetSdtEndPr()V
.end method

.method public abstract unsetSdtPr()V
.end method
