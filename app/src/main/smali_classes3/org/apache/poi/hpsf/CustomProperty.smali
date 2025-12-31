.class public Lorg/apache/poi/hpsf/CustomProperty;
.super Lorg/apache/poi/hpsf/MutableProperty;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(Lorg/apache/poi/hpsf/Property;)V

    iput-object p2, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hpsf/CustomProperty;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/CustomProperty;->equalsContents(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equalsContents(Ljava/lang/Object;)Z
    .locals 5

    check-cast p1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hpsf/CustomProperty;->name:Ljava/lang/String;

    return-void
.end method
