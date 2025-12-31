.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctworkbookprotection56bctype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getLockRevision()Z
.end method

.method public abstract getLockStructure()Z
.end method

.method public abstract getLockWindows()Z
.end method

.method public abstract getRevisionsPassword()[B
.end method

.method public abstract getWorkbookPassword()[B
.end method

.method public abstract isSetLockRevision()Z
.end method

.method public abstract isSetLockStructure()Z
.end method

.method public abstract isSetLockWindows()Z
.end method

.method public abstract isSetRevisionsPassword()Z
.end method

.method public abstract isSetWorkbookPassword()Z
.end method

.method public abstract setLockRevision(Z)V
.end method

.method public abstract setLockStructure(Z)V
.end method

.method public abstract setLockWindows(Z)V
.end method

.method public abstract setRevisionsPassword([B)V
.end method

.method public abstract setWorkbookPassword([B)V
.end method

.method public abstract unsetLockRevision()V
.end method

.method public abstract unsetLockStructure()V
.end method

.method public abstract unsetLockWindows()V
.end method

.method public abstract unsetRevisionsPassword()V
.end method

.method public abstract unsetWorkbookPassword()V
.end method

.method public abstract xgetLockRevision()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLockStructure()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLockWindows()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRevisionsPassword()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;
.end method

.method public abstract xgetWorkbookPassword()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;
.end method

.method public abstract xsetLockRevision(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLockStructure(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLockWindows(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRevisionsPassword(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;)V
.end method

.method public abstract xsetWorkbookPassword(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;)V
.end method
