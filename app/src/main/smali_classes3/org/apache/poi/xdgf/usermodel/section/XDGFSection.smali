.class public abstract Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final _sectionTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/xdgf/util/ObjectFactory<",
            "Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;",
            "Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _cells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;"
        }
    .end annotation
.end field

.field protected _containingSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

.field protected _section:Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Internal error"

    const-class v4, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    const-class v5, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-class v6, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    new-instance v7, Lorg/apache/poi/xdgf/util/ObjectFactory;

    invoke-direct {v7}, Lorg/apache/poi/xdgf/util/ObjectFactory;-><init>()V

    sput-object v7, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_sectionTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;

    :try_start_0
    const-string v8, "LineGradient"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "FillGradient"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Character"

    const-class v9, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    new-array v10, v2, [Ljava/lang/Class;

    aput-object v6, v10, v1

    aput-object v5, v10, v0

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Paragraph"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Tabs"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Scratch"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Connection"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "ConnectionABCD"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Field"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Control"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Geometry"

    const-class v9, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    new-array v10, v2, [Ljava/lang/Class;

    aput-object v6, v10, v1

    aput-object v5, v10, v0

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Actions"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Layer"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "User"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Property"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Hyperlink"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Reviewer"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "Annotation"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v6, v9, v1

    aput-object v5, v9, v0

    invoke-virtual {v7, v8, v4, v9}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v8, "ActionTag"

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v6, v2, v1

    aput-object v5, v2, v0

    invoke-virtual {v7, v8, v4, v2}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_cells:Ljava/util/Map;

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_containingSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object p1

    array-length p2, p1

    if-gtz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    aget-object p1, p1, p2

    const/4 p1, 0x0

    throw p1
.end method

.method public static load(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
    .locals 4

    sget-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_sectionTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getN()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xdgf/util/ObjectFactory;->load(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    return-object p0
.end method


# virtual methods
.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
