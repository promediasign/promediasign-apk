.class final Lorg/mozilla/classfile/ConstantPool;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cfw:Lorg/mozilla/classfile/ClassFileWriter;

.field private itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

.field private itsConstantData:Lorg/mozilla/javascript/UintMap;

.field private itsConstantHash:Lorg/mozilla/javascript/ObjToIntMap;

.field private itsFieldRefHash:Lorg/mozilla/javascript/ObjToIntMap;

.field private itsMethodRefHash:Lorg/mozilla/javascript/ObjToIntMap;

.field private itsPool:[B

.field private itsPoolTypes:Lorg/mozilla/javascript/UintMap;

.field private itsStringConstHash:Lorg/mozilla/javascript/UintMap;

.field private itsTop:I

.field private itsTopIndex:I

.field private itsUtf8Hash:Lorg/mozilla/javascript/ObjToIntMap;


# direct methods
.method public constructor <init>(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsStringConstHash:Lorg/mozilla/javascript/UintMap;

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsUtf8Hash:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsFieldRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsMethodRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantHash:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Lorg/mozilla/javascript/UintMap;

    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    iput-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 p1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    const/16 p1, 0x100

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    return-void
.end method

.method private addNameAndType(Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/16 v3, 0xc

    aput-byte v3, v0, v1

    invoke-static {p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    invoke-static {p2, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    iget p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-virtual {p1, p2, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short p1, p1

    return p1
.end method

.method private ensure(I)V
    .locals 4

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int v1, v0, p1

    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    array-length v3, v2

    if-le v1, v3, :cond_1

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int v3, v0, p1

    if-le v3, v1, :cond_0

    add-int v1, v0, p1

    :cond_0
    new-array p1, v1, [B

    const/4 v1, 0x0

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    :cond_1
    return-void
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)S
    .locals 7

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v1, :cond_2

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getSlashedForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v4, p1, v3}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    move v6, v3

    move-object v3, v0

    move v0, v6

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v2, v1, v4

    invoke-static {v0, v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, v3, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p1, v0

    return p1
.end method

.method public addConstant(D)I
    .locals 3

    .line 1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {p1, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt64(J[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p2, p1, 0x2

    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p2, p1, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    return p1
.end method

.method public addConstant(I)I
    .locals 4

    .line 2
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/4 v3, 0x3

    aput-byte v3, v0, v1

    invoke-static {p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-virtual {p1, v0, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short p1, p1

    return p1
.end method

.method public addConstant(J)I
    .locals 4

    .line 3
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/4 v3, 0x5

    aput-byte v3, v0, v1

    invoke-static {p1, p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt64(J[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p2, p1, 0x2

    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p2, p1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    return p1
.end method

.method public addConstant(Ljava/lang/String;)I
    .locals 5

    .line 4
    const v0, 0xffff

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    and-int/2addr p1, v0

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsStringConstHash:Lorg/mozilla/javascript/UintMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v2, v1, v3

    invoke-static {p1, v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsStringConstHash:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/UintMap;->put(II)V

    :cond_0
    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    return v0
.end method

.method public addFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    new-instance v0, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsFieldRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    const/4 p3, 0x5

    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v3, p3, v1

    invoke-static {p1, p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    invoke-static {p2, p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p1, v1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsFieldRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p1, v1

    return p1
.end method

.method public addInterfaceMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 6

    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v1

    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/16 v5, 0xb

    aput-byte v5, v2, v3

    invoke-static {v1, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    invoke-static {v0, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    new-instance v0, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    iget p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-virtual {p1, p2, v5}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short p1, p1

    return p1
.end method

.method public addMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    new-instance v0, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsMethodRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    const/4 p3, 0x5

    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v3, p3, v1

    invoke-static {p1, p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    invoke-static {p2, p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p1, v1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsMethodRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p1, v1

    return p1
.end method

.method public addUtf8(Ljava/lang/String;)S
    .locals 13

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsUtf8Hash:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const v3, 0xffff

    if-le v1, v3, :cond_0

    :goto_0
    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_0
    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x3

    invoke-direct {p0, v4}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    aput-byte v2, v5, v4

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lorg/mozilla/classfile/ConstantPool;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->getCharBuffer(I)[C

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v1, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v7, 0x0

    :goto_1
    if-eq v7, v1, :cond_3

    aget-char v8, v5, v7

    if-eqz v8, :cond_1

    const/16 v9, 0x7f

    if-gt v8, v9, :cond_1

    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v10, v4, 0x1

    int-to-byte v8, v8

    aput-byte v8, v9, v4

    move v4, v10

    goto :goto_2

    :cond_1
    const/16 v9, 0x7ff

    if-le v8, v9, :cond_2

    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v11, v8, 0xc

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    aput-byte v11, v9, v4

    add-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v8, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v9, v10

    add-int/lit8 v4, v4, 0x3

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v9, v11

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v11, v8, 0x6

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v9, v4

    add-int/lit8 v4, v4, 0x2

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v5, v1, 0x3

    sub-int v5, v4, v5

    if-le v5, v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    add-int/lit8 v1, v1, 0x2

    int-to-byte v3, v5

    aput-byte v3, v0, v1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsUtf8Hash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :goto_3
    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Too big string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_4
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    int-to-short p1, v0

    return p1
.end method

.method public getConstantData(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/UintMap;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getConstantType(I)B
    .locals 2

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public getUtfEncodingLimit(Ljava/lang/String;II)I
    .locals 3

    sub-int v0, p3, p2

    mul-int/lit8 v0, v0, 0x3

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    return p3

    :cond_0
    :goto_0
    if-eq p2, p3, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x7ff

    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x3

    :goto_1
    if-gez v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return p3
.end method

.method public getWriteSize()I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public setConstantData(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/UintMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public write([BI)I
    .locals 3

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short v0, v0

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/2addr p2, p1

    return p2
.end method
