.class final Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/ParseNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenCollector"
.end annotation


# instance fields
.field private _offset:I

.field private final _ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_offset:I

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    iget v1, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_offset:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_offset:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "token must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createPlaceholder()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_offset:I

    return v0
.end method

.method public getResult()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method

.method public setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    aput-object p2, v0, p1

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "Invalid placeholder index ("

    .line 13
    .line 14
    const-string v1, ")"

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p2
.end method

.method public sumTokenSizes(II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->_ptgs:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
