.class public abstract Lorg/apache/poi/poifs/property/PropertyTableBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/BATManaged;


# static fields
.field private static final _logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

.field protected final _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/property/PropertyTableBase;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    new-instance p1, Lorg/apache/poi/poifs/property/RootProperty;

    invoke-direct {p1}, Lorg/apache/poi/poifs/property/RootProperty;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/storage/HeaderBlock;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iput-object p2, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    return-void
.end method

.method private populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getChildIndex()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/poifs/property/Property;->isValidIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/Property;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/property/PropertyTableBase;->populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getPreviousChildIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/property/PropertyTableBase;->isValidIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getNextChildIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/PropertyTableBase;->isValidIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public addProperty(Lorg/apache/poi/poifs/property/Property;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRoot()Lorg/apache/poi/poifs/property/RootProperty;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/RootProperty;

    return-object v0
.end method

.method public getStartBlock()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v0

    return v0
.end method

.method public isValidIndex(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1}, Lorg/apache/poi/poifs/property/Property;->isValidIndex(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    if-ltz p1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lt p1, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v0

    .line 22
    :cond_2
    :goto_0
    sget-object v1, Lorg/apache/poi/poifs/property/PropertyTableBase;->_logger:Lorg/apache/poi/util/POILogger;

    .line 23
    .line 24
    const-string v3, "Property index "

    .line 25
    .line 26
    const-string v4, "outside the valid range 0.."

    .line 27
    .line 28
    invoke-static {p1, v3, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v3, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object p1, v0, v2

    .line 48
    .line 49
    const/4 p1, 0x5

    .line 50
    invoke-virtual {v1, p1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return v2
.end method

.method public removeProperty(Lorg/apache/poi/poifs/property/Property;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setStartBlock(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setPropertyStart(I)V

    return-void
.end method
