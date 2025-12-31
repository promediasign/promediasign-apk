.class final Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/classfile/ClassFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StackMapTable"
.end annotation


# instance fields
.field private locals:[I

.field private localsTop:I

.field private rawStackMap:[B

.field private rawStackMapTop:I

.field private stack:[I

.field private stackTop:I

.field private superBlocks:[Lorg/mozilla/classfile/SuperBlock;

.field final synthetic this$0:Lorg/mozilla/classfile/ClassFileWriter;

.field private wide:Z

.field private workList:[Lorg/mozilla/classfile/SuperBlock;

.field private workListTop:I


# direct methods
.method public constructor <init>(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    iput-boolean p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    return-void
.end method

.method private addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->isInQueue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/SuperBlock;->setInQueue(Z)V

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/SuperBlock;->setInitialized(Z)V

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/mozilla/classfile/SuperBlock;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    aput-object p1, v0, v1

    :cond_1
    return-void
.end method

.method private clearStack()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    return-void
.end method

.method private computeRawStackMap()V
    .locals 13

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getTrimmedLocals()[I

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v6, v5

    if-ge v4, v6, :cond_7

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/mozilla/classfile/SuperBlock;->getTrimmedLocals()[I

    move-result-object v6

    invoke-virtual {v5}, Lorg/mozilla/classfile/SuperBlock;->getStack()[I

    move-result-object v7

    invoke-virtual {v5}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v8

    sub-int/2addr v8, v2

    sub-int/2addr v8, v3

    array-length v2, v7

    if-nez v2, :cond_5

    array-length v2, v0

    array-length v9, v6

    if-le v2, v9, :cond_0

    array-length v2, v6

    goto :goto_1

    :cond_0
    array-length v2, v0

    :goto_1
    array-length v9, v0

    array-length v10, v6

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v2, :cond_2

    aget v11, v0, v10

    aget v12, v6, v10

    if-eq v11, v12, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    array-length v2, v6

    if-ne v10, v2, :cond_3

    if-nez v9, :cond_3

    invoke-direct {p0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeSameFrame(I)V

    goto :goto_4

    :cond_3
    array-length v2, v6

    const/4 v11, 0x3

    if-ne v10, v2, :cond_4

    if-gt v9, v11, :cond_4

    invoke-direct {p0, v9, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeChopFrame(II)V

    goto :goto_4

    :cond_4
    array-length v0, v0

    if-ne v10, v0, :cond_6

    if-gt v9, v11, :cond_6

    invoke-direct {p0, v6, v9, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeAppendFrame([III)V

    goto :goto_4

    :cond_5
    array-length v2, v7

    if-ne v2, v3, :cond_6

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeSameLocalsOneStackItemFrame([II)V

    goto :goto_4

    :cond_6
    invoke-direct {p0, v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeFullFrame([I[II)V

    :goto_4
    invoke-virtual {v5}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    move-object v0, v6

    goto :goto_0

    :cond_7
    return-void
.end method

.method private execute(I)I
    .locals 11

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v0

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    const/4 v2, 0x6

    const-string v3, "V"

    const/16 v4, 0x29

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad opcode: "

    .line 1
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iput-boolean v9, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    goto/16 :goto_17

    :pswitch_2
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    add-int/2addr p1, v9

    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    :goto_0
    invoke-static {p1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result p1

    :goto_1
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_17

    :pswitch_3
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->clearStack()V

    goto :goto_1

    :pswitch_4
    add-int/2addr p1, v9

    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[L"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p1

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v1

    add-int/2addr p1, v9

    aget-byte p1, v1, p1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(I)C

    move-result p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    int-to-short p1, p1

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lorg/mozilla/classfile/TypeInfo;->UNINITIALIZED_VARIABLE(I)I

    move-result p1

    goto :goto_1

    :pswitch_7
    add-int/2addr p1, v9

    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1000(Ljava/lang/String;)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_3
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mozilla/classfile/TypeInfo;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p1

    goto/16 :goto_1

    :pswitch_8
    add-int/2addr p1, v9

    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-virtual {p1}, Lorg/mozilla/classfile/FieldOrMethodRef;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/classfile/FieldOrMethodRef;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1000(Ljava/lang/String;)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x10

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_1
    const/16 v5, 0xb8

    if-eq v0, v5, :cond_4

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v5

    invoke-static {v5}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v6

    invoke-static {v10}, Lorg/mozilla/classfile/TypeInfo;->UNINITIALIZED_VARIABLE(I)I

    move-result v7

    if-eq v6, v7, :cond_2

    if-ne v6, v2, :cond_4

    :cond_2
    const-string v2, "<init>"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1100(Lorg/mozilla/classfile/ClassFileWriter;)S

    move-result p1

    invoke-static {p1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result p1

    invoke-direct {p0, v5, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->initializeTypeInfo(II)V

    goto :goto_5

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bad instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    add-int/2addr p1, v9

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_3

    :pswitch_9
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_a
    add-int/2addr p1, v9

    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-virtual {p1}, Lorg/mozilla/classfile/FieldOrMethodRef;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->clearStack()V

    goto/16 :goto_17

    :pswitch_c
    add-int/lit8 v1, p1, 0x1

    not-int v2, p1

    and-int/2addr v2, v6

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v2, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v2

    add-int/lit8 v3, v1, 0x8

    invoke-direct {p0, v3, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v1

    sub-int/2addr v3, p1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto/16 :goto_18

    :pswitch_d
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    :pswitch_e
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_17

    :pswitch_f
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v3

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    invoke-direct {p0, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    :goto_6
    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    goto/16 :goto_17

    :pswitch_10
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_6

    :pswitch_11
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    goto :goto_6

    :pswitch_12
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    goto/16 :goto_1

    :pswitch_13
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_1

    :pswitch_14
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_1

    :pswitch_15
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    goto/16 :goto_17

    :pswitch_16
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_17
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_18
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto/16 :goto_17

    :pswitch_19
    add-int/lit8 p1, v0, -0x4b

    :goto_7
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeAStore(I)V

    goto/16 :goto_17

    :pswitch_1a
    add-int/lit8 p1, v0, -0x47

    :goto_8
    invoke-direct {p0, p1, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_17

    :pswitch_1b
    add-int/lit8 p1, v0, -0x43

    :goto_9
    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_17

    :pswitch_1c
    add-int/lit8 p1, v0, -0x3f

    :goto_a
    invoke-direct {p0, p1, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_17

    :pswitch_1d
    add-int/lit8 p1, v0, -0x3b

    :goto_b
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_17

    :pswitch_1e
    add-int/2addr p1, v9

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_5

    goto :goto_c

    :cond_5
    const/4 v8, 0x1

    :goto_c
    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    goto :goto_7

    :pswitch_1f
    add-int/2addr p1, v9

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_6

    goto :goto_d

    :cond_6
    const/4 v8, 0x1

    :goto_d
    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    goto :goto_8

    :pswitch_20
    add-int/2addr p1, v9

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_7

    const/4 v9, 0x2

    :cond_7
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    goto :goto_9

    :pswitch_21
    add-int/2addr p1, v9

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_8

    goto :goto_e

    :cond_8
    const/4 v8, 0x1

    :goto_e
    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    goto :goto_a

    :pswitch_22
    add-int/2addr p1, v9

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_9

    goto :goto_f

    :cond_9
    const/4 v8, 0x1

    :goto_f
    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    goto :goto_b

    :pswitch_23
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result p1

    ushr-int/2addr p1, v5

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_a

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    goto/16 :goto_0

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bad array type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_24
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_25
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto :goto_13

    :pswitch_26
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_27
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto :goto_15

    :pswitch_28
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_29
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto :goto_14

    :pswitch_2a
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    :pswitch_2b
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto :goto_16

    :pswitch_2c
    add-int/lit8 p1, v0, -0x2a

    :goto_10
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeALoad(I)V

    goto :goto_17

    :pswitch_2d
    add-int/2addr p1, v9

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz v1, :cond_b

    goto :goto_11

    :cond_b
    const/4 v8, 0x1

    :goto_11
    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    goto :goto_10

    :pswitch_2e
    const/16 v3, 0x12

    add-int/2addr p1, v9

    if-ne v0, v3, :cond_c

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(I)I

    move-result p1

    goto :goto_12

    :cond_c
    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    :goto_12
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ConstantPool;->getConstantType(I)B

    move-result p1

    if-eq p1, v6, :cond_11

    if-eq p1, v7, :cond_10

    if-eq p1, v1, :cond_f

    if-eq p1, v2, :cond_e

    if-ne p1, v5, :cond_d

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object p1

    const-string v1, "java/lang/String"

    invoke-static {v1, p1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p1

    goto/16 :goto_1

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad const type "

    .line 3
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_13
    :pswitch_2f
    invoke-direct {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_17

    :cond_f
    :goto_14
    :pswitch_30
    invoke-direct {p0, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_17

    :cond_10
    :goto_15
    :pswitch_31
    invoke-direct {p0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_17

    :cond_11
    :goto_16
    :pswitch_32
    invoke-direct {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    :cond_12
    :goto_17
    :pswitch_33
    const/4 v3, 0x0

    :goto_18
    if-nez v3, :cond_13

    iget-boolean p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    invoke-static {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1300(IZ)I

    move-result v3

    :cond_13
    iget-boolean p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    if-eqz p1, :cond_14

    const/16 p1, 0xc4

    if-eq v0, p1, :cond_14

    iput-boolean v10, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    :cond_14
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_33
        :pswitch_e
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_30
        :pswitch_30
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2f
        :pswitch_2f
        :pswitch_32
        :pswitch_32
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_32
        :pswitch_30
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_23
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_18
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_2b
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_2a
        :pswitch_28
        :pswitch_2a
        :pswitch_28
        :pswitch_2a
        :pswitch_28
        :pswitch_2a
        :pswitch_28
        :pswitch_2a
        :pswitch_28
        :pswitch_2a
        :pswitch_28
        :pswitch_33
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_2b
        :pswitch_27
        :pswitch_25
        :pswitch_2b
        :pswitch_29
        :pswitch_25
        :pswitch_2b
        :pswitch_29
        :pswitch_27
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_18
        :pswitch_9
        :pswitch_17
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2b
        :pswitch_3
        :pswitch_2
        :pswitch_2b
        :pswitch_18
        :pswitch_18
        :pswitch_1
        :pswitch_0
        :pswitch_18
        :pswitch_18
        :pswitch_33
    .end packed-switch
.end method

.method private executeALoad(I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getLocal(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x7

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v2, "bad local variable type: "

    .line 26
    .line 27
    const-string v3, " at index: "

    .line 28
    .line 29
    invoke-static {v2, v0, v3, p1}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private executeAStore(I)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->setLocal(II)V

    return-void
.end method

.method private executeBlock(Lorg/mozilla/classfile/SuperBlock;)V
    .locals 13

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v2

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->execute(I)I

    move-result v3

    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->isBranch(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getBranchTarget(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    goto :goto_2

    :cond_0
    const/16 v4, 0xaa

    if-ne v2, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    not-int v5, v0

    and-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    const/4 v5, 0x4

    invoke-direct {p0, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v6

    add-int/2addr v6, v0

    invoke-direct {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    add-int/lit8 v6, v4, 0x4

    invoke-direct {p0, v6, v5}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v6

    add-int/lit8 v7, v4, 0x8

    invoke-direct {p0, v7, v5}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v7

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0xc

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    mul-int/lit8 v8, v6, 0x4

    add-int/2addr v8, v4

    invoke-direct {p0, v8, v5}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v8

    add-int/2addr v8, v0

    invoke-direct {p0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v5}, Lorg/mozilla/classfile/ClassFileWriter;->access$400(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v5}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v5

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v7, v5, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v6

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v8, v5, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v7

    if-lt v0, v6, :cond_4

    if-lt v0, v7, :cond_2

    goto :goto_4

    :cond_2
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v7, v5, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v6

    invoke-direct {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v6

    iget-short v5, v5, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v5}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v5

    const-string v7, "java/lang/Throwable"

    invoke-virtual {v5, v7}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v5

    :cond_3
    invoke-static {v5}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v5

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iget v9, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    filled-new-array {v5}, [I

    move-result-object v10

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v5}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v12

    const/4 v11, 0x1

    move-object v7, v6

    invoke-virtual/range {v7 .. v12}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    invoke-direct {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v0, v3

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->isSuperBlockEnd(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v1, v0

    if-ge p1, v1, :cond_7

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    :cond_7
    return-void
.end method

.method private executeStore(II)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    invoke-direct {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->setLocal(II)V

    return-void
.end method

.method private executeWorkList()V
    .locals 3

    :goto_0
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    aget-object v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/SuperBlock;->setInQueue(Z)V

    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getLocals()[I

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getStack()[I

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    array-length v2, v2

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    array-length v1, v1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeBlock(Lorg/mozilla/classfile/SuperBlock;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private flowInto(Lorg/mozilla/classfile/SuperBlock;)V
    .locals 6

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V

    :cond_0
    return-void
.end method

.method private getBranchTarget(I)Lorg/mozilla/classfile/SuperBlock;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v0

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v0

    :goto_0
    add-int/2addr p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v0

    int-to-short v0, v0

    goto :goto_0

    :goto_1
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object p1

    return-object p1
.end method

.method private getLocal(I)I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getOperand(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result p1

    return p1
.end method

.method private getOperand(II)I
    .locals 4

    .line 2
    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v2

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad operand size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-lt p1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge p1, v2, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v1, "bad offset: "

    .line 30
    .line 31
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method private getWorstCaseWriteSize()I
    .locals 3

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1400(Lorg/mozilla/classfile/ClassFileWriter;)S

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x7

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$1500(Lorg/mozilla/classfile/ClassFileWriter;)S

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    mul-int v2, v2, v0

    return v2
.end method

.method private initializeTypeInfo(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->initializeTypeInfo(II[II)V

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->initializeTypeInfo(II[II)V

    return-void
.end method

.method private initializeTypeInfo(II[II)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    aget v1, p3, v0

    if-ne v1, p1, :cond_0

    aput p2, p3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isBranch(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSuperBlockEnd(I)Z
    .locals 1

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xaa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private killSuperBlock(Lorg/mozilla/classfile/SuperBlock;)V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [I

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v2

    const-string v3, "java/lang/Throwable"

    invoke-static {v3, v2}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v6

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$400(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v5, v3, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v4

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v7, v3, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    invoke-virtual {v5, v7}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v5

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v3, v3, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    invoke-virtual {v7, v3}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v3

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v7

    if-le v7, v4, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v7

    if-lt v7, v5, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v3}, Lorg/mozilla/classfile/SuperBlock;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-virtual {v3}, Lorg/mozilla/classfile/SuperBlock;->getLocals()[I

    move-result-object v1

    :cond_2
    move-object v4, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$400(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v2, v2, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    invoke-virtual {v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v3

    if-ne v2, v3, :cond_5

    add-int/lit8 v2, v1, 0x1

    :goto_3
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$400(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v3

    add-int/lit8 v5, v2, -0x1

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v7}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v7

    aget-object v7, v7, v2

    aput-object v7, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$410(Lorg/mozilla/classfile/ClassFileWriter;)I

    add-int/lit8 v1, v1, -0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    array-length v5, v4

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v8

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v2

    const/16 v3, -0x41

    aput-byte v3, v2, v1

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result p1

    :goto_4
    if-ge p1, v1, :cond_7

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v2

    aput-byte v0, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method private pop()I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    aget v0, v0, v1

    return v0
.end method

.method private pop2()J
    .locals 4

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v0

    int-to-long v0, v0

    long-to-int v2, v0

    invoke-static {v2}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private push(I)V
    .locals 4

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    aput p1, v0, v1

    return-void
.end method

.method private push2(J)V
    .locals 5

    const-wide/32 v0, 0xffffff

    and-long v2, p1, v0

    long-to-int v3, v2

    invoke-direct {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    const/16 v2, 0x20

    ushr-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    and-long/2addr p1, v0

    long-to-int p2, p1

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    :cond_0
    return-void
.end method

.method private setLocal(II)V
    .locals 5

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    if-lt p1, v0, :cond_0

    add-int/lit8 v1, p1, 0x1

    new-array v2, v1, [I

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    aput p2, v0, p1

    return-void
.end method

.method private verify()V
    .locals 8

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$100(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    const/4 v7, 0x0

    aget-object v1, v0, v7

    array-length v3, v2

    new-array v4, v7, [I

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    aget-object v0, v0, v7

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/mozilla/classfile/SuperBlock;

    aput-object v0, v2, v7

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeWorkList()V

    :goto_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v2, v0

    if-ge v7, v2, :cond_1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->killSuperBlock(Lorg/mozilla/classfile/SuperBlock;)V

    :cond_0
    add-int/2addr v7, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeWorkList()V

    return-void
.end method

.method private writeAppendFrame([III)V
    .locals 4

    array-length v0, p1

    sub-int/2addr v0, p2

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit16 p2, p2, 0xfb

    int-to-byte p2, p2

    aput-byte p2, v1, v2

    invoke-static {p3, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iput p2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([II)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return-void
.end method

.method private writeChopFrame(II)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    rsub-int p1, p1, 0xfb

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return-void
.end method

.method private writeFullFrame([I[II)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    const/4 v3, -0x1

    aput-byte v3, v0, v1

    invoke-static {p3, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p3

    iput p3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    array-length v0, p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    invoke-static {v0, v1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p3

    iput p3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([I)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    array-length p3, p2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    invoke-static {p3, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([I)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return-void
.end method

.method private writeSameFrame(I)V
    .locals 4

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    const/4 v3, -0x5

    aput-byte v3, v0, v1

    invoke-static {p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    :goto_0
    return-void
.end method

.method private writeSameLocalsOneStackItemFrame([II)V
    .locals 4

    const/16 v0, 0x3f

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 p2, p2, 0x40

    int-to-byte p2, p2

    aput-byte p2, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    const/16 v3, -0x9

    aput-byte v3, v0, v1

    invoke-static {p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iput p2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    :goto_0
    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeType(I)I

    return-void
.end method

.method private writeType(I)I
    .locals 5

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    int-to-byte v4, v0

    aput-byte v4, v1, v2

    const/4 v2, 0x7

    const/16 v4, 0x8

    if-eq v0, v2, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    ushr-int/2addr p1, v4

    invoke-static {p1, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    :cond_1
    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return p1
.end method

.method private writeTypes([I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([II)I

    move-result p1

    return p1
.end method

.method private writeTypes([II)I
    .locals 1

    .line 2
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    aget v0, p1, p2

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeType(I)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return p1
.end method


# virtual methods
.method public computeWriteSize()I
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getWorstCaseWriteSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->computeRawStackMap()V

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public generate()V
    .locals 6

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$000(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v0

    new-array v0, v0, [Lorg/mozilla/classfile/SuperBlock;

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$100(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$000(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$200(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v2

    aget v2, v2, v1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$000(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$300(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v3

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$200(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    :goto_1
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    new-instance v5, Lorg/mozilla/classfile/SuperBlock;

    invoke-direct {v5, v1, v2, v3, v0}, Lorg/mozilla/classfile/SuperBlock;-><init>(III[I)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->verify()V

    return-void
.end method

.method public write([BI)I
    .locals 3

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/2addr p2, p1

    return p2
.end method
