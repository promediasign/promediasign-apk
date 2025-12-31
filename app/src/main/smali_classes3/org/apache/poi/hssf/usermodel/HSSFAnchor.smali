.class public abstract Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ChildAnchor;


# instance fields
.field protected _isHorizontallyFlipped:Z

.field protected _isVerticallyFlipped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isHorizontallyFlipped:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isVerticallyFlipped:Z

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->createEscherAnchor()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isHorizontallyFlipped:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isVerticallyFlipped:Z

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->createEscherAnchor()V

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/ChildAnchor;->setDx1(I)V

    invoke-interface {p0, p2}, Lorg/apache/poi/ss/usermodel/ChildAnchor;->setDy1(I)V

    invoke-interface {p0, p3}, Lorg/apache/poi/ss/usermodel/ChildAnchor;->setDx2(I)V

    invoke-interface {p0, p4}, Lorg/apache/poi/ss/usermodel/ChildAnchor;->setDy2(I)V

    return-void
.end method

.method public static createAnchorFromEscher(Lorg/apache/poi/ddf/EscherContainerRecord;)Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
    .locals 2

    const/16 v0, -0xff1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-direct {v1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(Lorg/apache/poi/ddf/EscherChildAnchorRecord;)V

    return-object v1

    :cond_0
    const/16 v0, -0xff0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {v1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract createEscherAnchor()V
.end method

.method public abstract getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;
.end method

.method public abstract isHorizontallyFlipped()Z
.end method

.method public abstract isVerticallyFlipped()Z
.end method
