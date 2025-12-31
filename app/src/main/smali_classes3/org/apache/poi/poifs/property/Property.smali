.class public abstract Lorg/apache/poi/poifs/property/Property;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/property/Child;
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;


# static fields
.field protected static final _NODE_BLACK:B = 0x1t

.field protected static final _NODE_RED:B = 0x0t

.field protected static final _NO_INDEX:I = -0x1


# instance fields
.field private _child_property:Lorg/apache/poi/util/IntegerField;

.field private _days_1:Lorg/apache/poi/util/IntegerField;

.field private _days_2:Lorg/apache/poi/util/IntegerField;

.field private _index:I

.field private _name:Ljava/lang/String;

.field private _name_size:Lorg/apache/poi/util/ShortField;

.field private _next_child:Lorg/apache/poi/poifs/property/Child;

.field private _next_property:Lorg/apache/poi/util/IntegerField;

.field private _node_color:Lorg/apache/poi/util/ByteField;

.field private _previous_child:Lorg/apache/poi/poifs/property/Child;

.field private _previous_property:Lorg/apache/poi/util/IntegerField;

.field private _property_type:Lorg/apache/poi/util/ByteField;

.field private _raw_data:[B

.field private _seconds_1:Lorg/apache/poi/util/IntegerField;

.field private _seconds_2:Lorg/apache/poi/util/IntegerField;

.field private _size:Lorg/apache/poi/util/IntegerField;

.field private _start_block:Lorg/apache/poi/util/IntegerField;

.field private _storage_clsid:Lorg/apache/poi/hpsf/ClassID;

.field private _user_flags:Lorg/apache/poi/util/IntegerField;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lorg/apache/poi/util/ShortField;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Lorg/apache/poi/util/ShortField;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_name_size:Lorg/apache/poi/util/ShortField;

    new-instance v0, Lorg/apache/poi/util/ByteField;

    const/16 v2, 0x42

    invoke-direct {v0, v2}, Lorg/apache/poi/util/ByteField;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_property_type:Lorg/apache/poi/util/ByteField;

    new-instance v0, Lorg/apache/poi/util/ByteField;

    const/16 v2, 0x43

    invoke-direct {v0, v2}, Lorg/apache/poi/util/ByteField;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_node_color:Lorg/apache/poi/util/ByteField;

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x44

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_previous_property:Lorg/apache/poi/util/IntegerField;

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x48

    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v0, v2, v4, v3}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_next_property:Lorg/apache/poi/util/IntegerField;

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x4c

    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v0, v2, v4, v3}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_child_property:Lorg/apache/poi/util/IntegerField;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_storage_clsid:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x60

    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_user_flags:Lorg/apache/poi/util/IntegerField;

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x64

    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_1:Lorg/apache/poi/util/IntegerField;

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x68

    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_days_1:Lorg/apache/poi/util/IntegerField;

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x6c

    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_2:Lorg/apache/poi/util/IntegerField;

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x70

    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_days_2:Lorg/apache/poi/util/IntegerField;

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x74

    invoke-direct {v0, v2}, Lorg/apache/poi/util/IntegerField;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_start_block:Lorg/apache/poi/util/IntegerField;

    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x78

    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_size:Lorg/apache/poi/util/IntegerField;

    iput v4, p0, Lorg/apache/poi/poifs/property/Property;->_index:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/Property;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/Property;->setNextChild(Lorg/apache/poi/poifs/property/Child;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/Property;->setPreviousChild(Lorg/apache/poi/poifs/property/Child;)V

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/4 v2, 0x0

    invoke-static {p2, p3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Lorg/apache/poi/util/ShortField;

    const/16 p3, 0x40

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/ShortField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_name_size:Lorg/apache/poi/util/ShortField;

    new-instance p2, Lorg/apache/poi/util/ByteField;

    const/16 p3, 0x42

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/ByteField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_property_type:Lorg/apache/poi/util/ByteField;

    new-instance p2, Lorg/apache/poi/util/ByteField;

    const/16 p3, 0x43

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/ByteField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_node_color:Lorg/apache/poi/util/ByteField;

    new-instance p2, Lorg/apache/poi/util/IntegerField;

    const/16 p3, 0x44

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_previous_property:Lorg/apache/poi/util/IntegerField;

    new-instance p2, Lorg/apache/poi/util/IntegerField;

    const/16 p3, 0x48

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_next_property:Lorg/apache/poi/util/IntegerField;

    new-instance p2, Lorg/apache/poi/util/IntegerField;

    const/16 p3, 0x4c

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_child_property:Lorg/apache/poi/util/IntegerField;

    new-instance p2, Lorg/apache/poi/hpsf/ClassID;

    iget-object p3, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v0, 0x50

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_storage_clsid:Lorg/apache/poi/hpsf/ClassID;

    new-instance p2, Lorg/apache/poi/util/IntegerField;

    const/16 p3, 0x60

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v2, v0}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_user_flags:Lorg/apache/poi/util/IntegerField;

    new-instance p2, Lorg/apache/poi/util/IntegerField;

    const/16 p3, 0x64

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_1:Lorg/apache/poi/util/IntegerField;

    new-instance p2, Lorg/apache/poi/util/IntegerField;

    const/16 p3, 0x68

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_days_1:Lorg/apache/poi/util/IntegerField;

    new-instance p2, Lorg/apache/poi/util/IntegerField;

    const/16 p3, 0x6c

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_2:Lorg/apache/poi/util/IntegerField;

    new-instance p2, Lorg/apache/poi/util/IntegerField;

    const/16 p3, 0x70

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_days_2:Lorg/apache/poi/util/IntegerField;

    new-instance p2, Lorg/apache/poi/util/IntegerField;

    const/16 p3, 0x74

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_start_block:Lorg/apache/poi/util/IntegerField;

    new-instance p2, Lorg/apache/poi/util/IntegerField;

    const/16 p3, 0x78

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p2, p3, v0}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/poi/poifs/property/Property;->_size:Lorg/apache/poi/util/IntegerField;

    iput p1, p0, Lorg/apache/poi/poifs/property/Property;->_index:I

    iget-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_name_size:Lorg/apache/poi/util/ShortField;

    invoke-virtual {p1}, Lorg/apache/poi/util/ShortField;->get()S

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_name:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-array p2, p1, [C

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    new-instance v1, Lorg/apache/poi/util/ShortField;

    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v1, v0, v3}, Lorg/apache/poi/util/ShortField;-><init>(I[B)V

    invoke-virtual {v1}, Lorg/apache/poi/util/ShortField;->get()S

    move-result v1

    int-to-char v1, v1

    aput-char v1, p2, p3

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2, v2, p1}, Ljava/lang/String;-><init>([CII)V

    iput-object p3, p0, Lorg/apache/poi/poifs/property/Property;->_name:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_next_child:Lorg/apache/poi/poifs/property/Child;

    iput-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_previous_child:Lorg/apache/poi/poifs/property/Child;

    return-void
.end method

.method public static isSmall(I)Z
    .locals 1

    const/16 v0, 0x1000

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidIndex(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getChildIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_child_property:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/property/Property;->_index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextChild()Lorg/apache/poi/poifs/property/Child;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_next_child:Lorg/apache/poi/poifs/property/Child;

    return-object v0
.end method

.method public getNextChildIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_next_property:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    return v0
.end method

.method public getPreviousChild()Lorg/apache/poi/poifs/property/Child;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_previous_child:Lorg/apache/poi/poifs/property/Child;

    return-object v0
.end method

.method public getPreviousChildIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_previous_property:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    return v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Property: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_size:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    return v0
.end method

.method public getStartBlock()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_start_block:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    return v0
.end method

.method public getStorageClsid()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_storage_clsid:Lorg/apache/poi/hpsf/ClassID;

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Name          = \""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "\""

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Property Type = "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_property_type:Lorg/apache/poi/util/ByteField;

    .line 32
    .line 33
    invoke-virtual {v2}, Lorg/apache/poi/util/ByteField;->get()B

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "Node Color    = "

    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_node_color:Lorg/apache/poi/util/ByteField;

    .line 52
    .line 53
    invoke-virtual {v3}, Lorg/apache/poi/util/ByteField;->get()B

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_days_1:Lorg/apache/poi/util/IntegerField;

    .line 65
    .line 66
    invoke-virtual {v3}, Lorg/apache/poi/util/IntegerField;->get()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    int-to-long v3, v3

    .line 71
    const/16 v5, 0x20

    .line 72
    .line 73
    shl-long/2addr v3, v5

    .line 74
    iget-object v6, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_1:Lorg/apache/poi/util/IntegerField;

    .line 75
    .line 76
    invoke-virtual {v6}, Lorg/apache/poi/util/IntegerField;->get()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    int-to-long v6, v6

    .line 81
    const-wide/32 v8, 0xffff

    .line 82
    .line 83
    .line 84
    and-long/2addr v6, v8

    .line 85
    add-long/2addr v3, v6

    .line 86
    const-string v6, "Time 1        = "

    .line 87
    .line 88
    invoke-static {v6, v3, v4}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget-object v4, p0, Lorg/apache/poi/poifs/property/Property;->_days_2:Lorg/apache/poi/util/IntegerField;

    .line 93
    .line 94
    invoke-virtual {v4}, Lorg/apache/poi/util/IntegerField;->get()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    int-to-long v6, v4

    .line 99
    shl-long v4, v6, v5

    .line 100
    .line 101
    iget-object v6, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_2:Lorg/apache/poi/util/IntegerField;

    .line 102
    .line 103
    invoke-virtual {v6}, Lorg/apache/poi/util/IntegerField;->get()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    int-to-long v6, v6

    .line 108
    and-long/2addr v6, v8

    .line 109
    add-long/2addr v4, v6

    .line 110
    const-string v6, "Time 2        = "

    .line 111
    .line 112
    invoke-static {v6, v4, v5}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v6, "Size          = "

    .line 119
    .line 120
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const/4 v6, 0x6

    .line 135
    new-array v6, v6, [Ljava/lang/Object;

    .line 136
    .line 137
    const/4 v7, 0x0

    .line 138
    aput-object v0, v6, v7

    .line 139
    .line 140
    const/4 v0, 0x1

    .line 141
    aput-object v1, v6, v0

    .line 142
    .line 143
    const/4 v0, 0x2

    .line 144
    aput-object v2, v6, v0

    .line 145
    .line 146
    const/4 v0, 0x3

    .line 147
    aput-object v3, v6, v0

    .line 148
    .line 149
    const/4 v0, 0x4

    .line 150
    aput-object v4, v6, v0

    .line 151
    .line 152
    const/4 v0, 0x5

    .line 153
    aput-object v5, v6, v0

    .line 154
    .line 155
    return-object v6
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract preWrite()V
.end method

.method public preferArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setChildProperty(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_child_property:Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/property/Property;->_index:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_name:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v4, Lorg/apache/poi/util/ShortField;

    aget-char v5, p1, v1

    int-to-short v5, v5

    iget-object v6, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v4, v3, v5, v6}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 p1, 0x20

    if-ge v1, p1, :cond_1

    new-instance p1, Lorg/apache/poi/util/ShortField;

    iget-object v4, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {p1, v3, v2, v4}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_name_size:Lorg/apache/poi/util/ShortField;

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/util/ShortField;->set(S[B)V

    return-void
.end method

.method public setNextChild(Lorg/apache/poi/poifs/property/Child;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_next_child:Lorg/apache/poi/poifs/property/Child;

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_next_property:Lorg/apache/poi/util/IntegerField;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getIndex()I

    move-result p1

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    return-void
.end method

.method public setNodeColor(B)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_node_color:Lorg/apache/poi/util/ByteField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/ByteField;->set(B[B)V

    return-void
.end method

.method public setPreviousChild(Lorg/apache/poi/poifs/property/Child;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_previous_child:Lorg/apache/poi/poifs/property/Child;

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_previous_property:Lorg/apache/poi/util/IntegerField;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getIndex()I

    move-result p1

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    return-void
.end method

.method public setPropertyType(B)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_property_type:Lorg/apache/poi/util/ByteField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/ByteField;->set(B[B)V

    return-void
.end method

.method public setSize(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_size:Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    return-void
.end method

.method public setStartBlock(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_start_block:Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    return-void
.end method

.method public setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 3

    iput-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_storage_clsid:Lorg/apache/poi/hpsf/ClassID;

    const/16 v0, 0x50

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v1, 0x60

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/hpsf/ClassID;->write([BI)V

    :goto_0
    return-void
.end method

.method public shouldUseSmallBlocks()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_size:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/poifs/property/Property;->isSmall(I)Z

    move-result v0

    return v0
.end method

.method public writeData(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
