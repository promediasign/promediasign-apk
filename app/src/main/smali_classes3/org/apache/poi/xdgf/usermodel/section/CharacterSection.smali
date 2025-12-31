.class public Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;
.super Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.source "SourceFile"


# instance fields
.field _characterCells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;"
        }
    .end annotation
.end field

.field _fontColor:Ljava/awt/Color;

.field _fontSize:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontSize:Ljava/lang/Double;

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontColor:Ljava/awt/Color;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getRowArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    throw p2
.end method


# virtual methods
.method public getFontColor()Ljava/awt/Color;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontColor:Ljava/awt/Color;

    return-object v0
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontSize:Ljava/lang/Double;

    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
    .locals 0

    return-void
.end method
