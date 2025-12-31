.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctpbdre388type"

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
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewBar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract addNewBetween()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract addNewBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract addNewLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract addNewRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract addNewTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract getBar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract getBetween()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract isSetBar()Z
.end method

.method public abstract isSetBetween()Z
.end method

.method public abstract isSetBottom()Z
.end method

.method public abstract isSetLeft()Z
.end method

.method public abstract isSetRight()Z
.end method

.method public abstract isSetTop()Z
.end method

.method public abstract setBar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)V
.end method

.method public abstract setBetween(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)V
.end method

.method public abstract setBottom(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)V
.end method

.method public abstract setLeft(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)V
.end method

.method public abstract setRight(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)V
.end method

.method public abstract setTop(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)V
.end method

.method public abstract unsetBar()V
.end method

.method public abstract unsetBetween()V
.end method

.method public abstract unsetBottom()V
.end method

.method public abstract unsetLeft()V
.end method

.method public abstract unsetRight()V
.end method

.method public abstract unsetTop()V
.end method
