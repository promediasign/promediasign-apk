.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctcomment2d10type"

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
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract addNewPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
.end method

.method public abstract getAuthorId()J
.end method

.method public abstract getDt()Ljava/util/Calendar;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getIdx()J
.end method

.method public abstract getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract isSetDt()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract setAuthorId(J)V
.end method

.method public abstract setDt(Ljava/util/Calendar;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;)V
.end method

.method public abstract setIdx(J)V
.end method

.method public abstract setPos(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract unsetDt()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract xgetAuthorId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDt()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetIdx()Lorg/openxmlformats/schemas/presentationml/x2006/main/STIndex;
.end method

.method public abstract xgetText()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAuthorId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDt(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetIdx(Lorg/openxmlformats/schemas/presentationml/x2006/main/STIndex;)V
.end method

.method public abstract xsetText(Lorg/apache/xmlbeans/XmlString;)V
.end method
