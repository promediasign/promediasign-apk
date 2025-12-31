.class public Lorg/mozilla/classfile/ClassFileWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;,
        Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;
    }
.end annotation


# static fields
.field private static final GenerateStackMap:Z

.field private static final MajorVersion:I

.field private static final MinorVersion:I


# instance fields
.field private generatedClassName:Ljava/lang/String;

.field private itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

.field private itsBootstrapMethodsLength:I

.field private itsCodeBuffer:[B

.field private itsCodeBufferTop:I

.field private itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

.field private itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

.field private itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

.field private itsExceptionTableTop:I

.field private itsFields:Lorg/mozilla/javascript/ObjArray;

.field private itsFixupTable:[J

.field private itsFixupTableTop:I

.field private itsFlags:S

.field private itsInterfaces:Lorg/mozilla/javascript/ObjArray;

.field private itsJumpFroms:Lorg/mozilla/javascript/UintMap;

.field private itsLabelTable:[I

.field private itsLabelTableTop:I

.field private itsLineNumberTable:[I

.field private itsLineNumberTableTop:I

.field private itsMaxLocals:S

.field private itsMaxStack:S

.field private itsMethods:Lorg/mozilla/javascript/ObjArray;

.field private itsSourceFileNameIndex:S

.field private itsStackTop:S

.field private itsSuperBlockStarts:[I

.field private itsSuperBlockStartsTop:I

.field private itsSuperClassIndex:S

.field private itsThisClassIndex:S

.field private itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

.field private tmpCharBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x30

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Lorg/mozilla/classfile/ClassFileWriter;

    const-string v4, "ClassFileWriter.class"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "org/mozilla/classfile/ClassFileWriter.class"

    invoke-static {v3}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v3

    const/4 v5, 0x0

    goto :goto_3

    :catch_0
    const/4 v5, 0x0

    goto :goto_4

    :cond_0
    :goto_0
    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    rsub-int/lit8 v6, v5, 0x8

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_1

    add-int/2addr v5, v6

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_2
    const/4 v5, 0x4

    aget-byte v5, v4, v5

    shl-int/2addr v5, v3

    const/4 v6, 0x5

    aget-byte v6, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const/4 v6, 0x6

    :try_start_1
    aget-byte v6, v4, v6

    shl-int/lit8 v3, v6, 0x8

    const/4 v6, 0x7

    aget-byte v1, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    sput v5, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    sput v1, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    const/16 v3, 0x32

    if-lt v1, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    sput-boolean v2, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v0, :cond_5

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    :catchall_1
    move-exception v3

    :goto_3
    sput v5, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    sput v1, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    sput-boolean v2, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_4
    throw v3

    :catch_2
    :goto_4
    sput v5, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    sput v1, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    sput-boolean v2, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :catch_3
    :cond_5
    :goto_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->generatedClassName:Ljava/lang/String;

    new-instance v0, Lorg/mozilla/classfile/ConstantPool;

    invoke-direct {v0, p0}, Lorg/mozilla/classfile/ConstantPool;-><init>(Lorg/mozilla/classfile/ClassFileWriter;)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperClassIndex:S

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    :cond_0
    const/16 p1, 0x21

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:S

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    return p0
.end method

.method public static synthetic access$100(Lorg/mozilla/classfile/ClassFileWriter;)[I
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->createInitialLocals()[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lorg/mozilla/classfile/ClassFileWriter;)S
    .locals 0

    iget-short p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    return p0
.end method

.method public static synthetic access$1200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(IZ)I
    .locals 0

    invoke-static {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->opcodeLength(IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Lorg/mozilla/classfile/ClassFileWriter;)S
    .locals 0

    iget-short p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    return p0
.end method

.method public static synthetic access$1500(Lorg/mozilla/classfile/ClassFileWriter;)S
    .locals 0

    iget-short p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    return p0
.end method

.method public static synthetic access$200(Lorg/mozilla/classfile/ClassFileWriter;)[I
    .locals 0

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    return-object p0
.end method

.method public static synthetic access$300(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    return p0
.end method

.method public static synthetic access$400(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    return p0
.end method

.method public static synthetic access$410(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 2

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    return v0
.end method

.method public static synthetic access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/mozilla/classfile/ClassFileWriter;)[B
    .locals 0

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    return-object p0
.end method

.method public static synthetic access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    return-object p0
.end method

.method public static synthetic access$900(I)C
    .locals 0

    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->arrayTypeToName(I)C

    move-result p0

    return p0
.end method

.method private addLabelFixup(II)V
    .locals 4

    if-gez p1, :cond_4

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v0, v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/16 v1, 0x28

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    goto :goto_0

    :cond_1
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    :cond_2
    :goto_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long p1, p2

    or-long/2addr p1, v2

    aput-wide p1, v1, v0

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label, no biscuit"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addReservedCodeSpace(I)I
    .locals 4

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/2addr p1, v0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    array-length v2, v1

    if-le p1, v2, :cond_1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_0

    move v2, p1

    :cond_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    :cond_1
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    return v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No method to add to"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addSuperBlockStart(I)V
    .locals 4

    sget-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    goto :goto_0

    :cond_0
    array-length v1, v0

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    if-ne v1, v2, :cond_1

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    aput p1, v0, v1

    :cond_2
    return-void
.end method

.method private addToCodeBuffer(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void
.end method

.method private addToCodeInt16(I)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p1, v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    return-void
.end method

.method private static arrayTypeToName(I)C
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad operand"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x4a

    return p0

    :pswitch_1
    const/16 p0, 0x49

    return p0

    :pswitch_2
    const/16 p0, 0x53

    return p0

    :pswitch_3
    const/16 p0, 0x42

    return p0

    :pswitch_4
    const/16 p0, 0x44

    return p0

    :pswitch_5
    const/16 p0, 0x46

    return p0

    :pswitch_6
    const/16 p0, 0x43

    return p0

    :pswitch_7
    const/16 p0, 0x5a

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static badStack(I)V
    .locals 1

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    const-string v0, "Stack underflow: "

    .line 4
    .line 5
    :goto_0
    invoke-static {p0, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string v0, "Too big stack: "

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method private static classDescriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, v0}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static classNameToSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x2

    new-array v3, v2, [C

    const/16 v4, 0x4c

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/16 v4, 0x3b

    aput-char v4, v3, v1

    const/4 v4, 0x1

    invoke-virtual {p0, v5, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    if-eq v4, v1, :cond_1

    aget-char p0, v3, v4

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    const/16 p0, 0x2f

    aput-char p0, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v5, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method private createInitialLocals()[I
    .locals 10

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileMethod;->getFlags()S

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileMethod;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "<init>"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    aput v1, v0, v3

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    invoke-static {v1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v4}, Lorg/mozilla/classfile/ClassFileMethod;->getType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x29

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-nez v5, :cond_7

    if-ltz v6, :cond_7

    add-int/2addr v5, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-ge v5, v6, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x46

    if-eq v8, v9, :cond_4

    const/16 v9, 0x4c

    if-eq v8, v9, :cond_3

    const/16 v9, 0x53

    if-eq v8, v9, :cond_4

    const/16 v9, 0x49

    if-eq v8, v9, :cond_4

    const/16 v9, 0x4a

    if-eq v8, v9, :cond_4

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_4

    const/16 v9, 0x5b

    if-eq v8, v9, :cond_2

    packed-switch v8, :pswitch_data_0

    goto :goto_3

    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/16 v8, 0x3b

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v8

    goto :goto_3

    :cond_4
    :pswitch_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-static {v8, v9}, Lorg/mozilla/classfile/TypeInfo;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v8

    add-int/lit8 v9, v1, 0x1

    aput v8, v0, v1

    invoke-static {v8}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_5
    move v1, v9

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad method type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x53

    if-eq v0, v1, :cond_1

    const/16 v1, 0x56

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->classDescriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :pswitch_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private finalizeSuperBlockStarts()V
    .locals 6

    sget-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    aget-object v2, v2, v1

    iget v2, v2, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->sort([III)V

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_1
    iget v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    aget v5, v4, v2

    if-eq v0, v5, :cond_2

    if-eq v3, v2, :cond_1

    aput v5, v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    add-int/lit8 v2, v3, -0x1

    aget v0, v0, v2

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    if-ne v0, v2, :cond_4

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    :cond_4
    return-void
.end method

.method private fixLabelGotos()V
    .locals 8

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    aget-wide v4, v3, v2

    const/16 v3, 0x20

    shr-long v6, v4, v3

    long-to-int v3, v6

    long-to-int v5, v4

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget v3, v4, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-direct {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v3, v6}, Lorg/mozilla/javascript/UintMap;->put(II)V

    sub-int/2addr v3, v6

    int-to-short v4, v3

    if-ne v4, v3, :cond_0

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string v1, "Program too complex: too big jump offset"

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unlocated label"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    return-void
.end method

.method public static getSlashedForm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWriteSize()I
    .locals 4

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v1, "SourceFile"

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ConstantPool;->getWriteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/classfile/ClassFileField;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileField;->getWriteSize()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    :goto_1
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileMethod;->getWriteSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x2

    iget-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v2, :cond_3

    add-int/lit8 v0, v1, 0xa

    :cond_3
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method private static opcodeCount(I)I
    .locals 2

    .line 1
    const/16 v0, 0xfe

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch p0, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "Bad opcode: "

    .line 18
    .line 19
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :pswitch_0
    const/4 p0, -0x1

    .line 28
    return p0

    .line 29
    :pswitch_1
    const/4 p0, 0x2

    .line 30
    return p0

    .line 31
    :pswitch_2
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    :pswitch_3
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :pswitch_data_1
    .packed-switch 0xbb
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static opcodeLength(IZ)I
    .locals 3

    .line 1
    const/16 v0, 0xfe

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v1, 0x5

    .line 11
    const/4 v2, 0x3

    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    packed-switch p0, :pswitch_data_1

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Bad opcode: "

    .line 21
    .line 22
    invoke-static {p0, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :pswitch_0
    const/4 p0, 0x4

    .line 31
    return p0

    .line 32
    :pswitch_1
    return v1

    .line 33
    :pswitch_2
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x3

    .line 37
    :goto_0
    return v1

    .line 38
    :pswitch_3
    if-eqz p1, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    :cond_1
    return v0

    .line 42
    :pswitch_4
    return v2

    .line 43
    :pswitch_5
    return v0

    .line 44
    :cond_2
    :pswitch_6
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    :pswitch_data_1
    .packed-switch 0xac
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public static putInt16(I[BI)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x2

    return p2
.end method

.method public static putInt32(I[BI)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x4

    return p2
.end method

.method public static putInt64(J[BI)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    invoke-static {v1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p3

    long-to-int p1, p0

    invoke-static {p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p0

    return p0
.end method

.method private static sizeOfParameters(Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x3

    if-gt v3, v1, :cond_c

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_c

    const/4 v4, 0x1

    if-gt v4, v2, :cond_c

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_c

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x5b

    const/16 v9, 0x5a

    const/16 v10, 0x4a

    const/16 v11, 0x49

    const/16 v12, 0x53

    const/16 v13, 0x4c

    const/16 v14, 0x46

    if-eq v1, v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v14, :cond_7

    if-eq v15, v13, :cond_4

    if-eq v15, v12, :cond_7

    if-eq v15, v11, :cond_7

    if-eq v15, v10, :cond_3

    if-eq v15, v9, :cond_7

    if-eq v15, v8, :cond_0

    packed-switch v15, :pswitch_data_0

    goto :goto_5

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v8, :cond_1

    goto :goto_1

    :cond_1
    if-eq v15, v14, :cond_2

    if-eq v15, v13, :cond_4

    if-eq v15, v12, :cond_2

    if-eq v15, v9, :cond_2

    if-eq v15, v11, :cond_2

    if-eq v15, v10, :cond_2

    packed-switch v15, :pswitch_data_1

    goto :goto_5

    :cond_2
    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :pswitch_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v15, v1, 0x1

    const/16 v3, 0x3b

    invoke-virtual {v0, v3, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x2

    if-gt v1, v3, :cond_6

    if-lt v3, v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v3, 0x1

    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    :goto_3
    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    :pswitch_2
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_a

    if-eq v1, v13, :cond_a

    if-eq v1, v12, :cond_a

    const/16 v2, 0x56

    if-eq v1, v2, :cond_b

    if-eq v1, v11, :cond_a

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_a

    if-eq v1, v8, :cond_a

    packed-switch v1, :pswitch_data_2

    const/4 v3, 0x0

    goto :goto_6

    :cond_9
    :pswitch_3
    add-int/lit8 v6, v6, 0x1

    :cond_a
    :pswitch_4
    add-int/2addr v6, v4

    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    shl-int/lit8 v0, v7, 0x10

    const v1, 0xffff

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    return v0

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad parameter signature: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static stackChange(I)I
    .locals 2

    .line 1
    const/16 v0, 0xfe

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Bad opcode: "

    .line 15
    .line 16
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :pswitch_0
    const/4 p0, -0x4

    .line 25
    return p0

    .line 26
    :pswitch_1
    const/4 p0, -0x3

    .line 27
    return p0

    .line 28
    :pswitch_2
    const/4 p0, -0x2

    .line 29
    return p0

    .line 30
    :pswitch_3
    const/4 p0, -0x1

    .line 31
    return p0

    .line 32
    :pswitch_4
    const/4 p0, 0x2

    .line 33
    return p0

    .line 34
    :pswitch_5
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_0
    :pswitch_6
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private xop(III)V
    .locals 1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public acquireLabel()I
    .locals 4

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v0, v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    goto :goto_0

    :cond_1
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    :cond_2
    :goto_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    return v0
.end method

.method public add(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->opcodeCount(I)I

    move-result v0

    if-nez v0, :cond_4

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    int-to-short v1, v0

    iput-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, v2, :cond_2

    iput-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_2
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3

    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected operands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(II)V
    .locals 5

    .line 2
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    const/16 v1, 0xb4

    const/high16 v2, 0x10000

    if-eq p1, v1, :cond_10

    const/16 v1, 0xb5

    if-eq p1, v1, :cond_10

    const/16 v1, 0xbc

    const-string v3, "out of range index"

    const/16 v4, 0x100

    if-eq p1, v1, :cond_e

    const/16 v1, 0xc6

    if-eq p1, v1, :cond_9

    const/16 v1, 0xc7

    if-eq p1, v1, :cond_9

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected opcode for 1 operand"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    goto :goto_4

    :pswitch_1
    if-ltz p2, :cond_4

    if-le v2, p2, :cond_4

    if-lt p2, v4, :cond_3

    const/16 v1, 0xc4

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    :goto_1
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_6

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_6

    :cond_4
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string p2, "out of range variable"

    invoke-direct {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    if-ltz p2, :cond_6

    if-ge p2, v2, :cond_6

    const/16 v1, 0x13

    if-ge p2, v4, :cond_5

    if-eq p1, v1, :cond_5

    const/16 v2, 0x14

    if-ne p1, v2, :cond_3

    :cond_5
    const/16 v2, 0x12

    if-ne p1, v2, :cond_2

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_1

    :cond_6
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    invoke-direct {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    int-to-short v1, p2

    if-ne v1, p2, :cond_7

    :goto_3
    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range short"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    int-to-byte v1, p2

    if-ne v1, p2, :cond_8

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_6

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range byte"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    :pswitch_5
    const/high16 v1, -0x80000000

    and-int v2, p2, v1

    if-eq v2, v1, :cond_b

    if-ltz p2, :cond_a

    const v3, 0xffff

    if-gt p2, v3, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label for branch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_5
    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    if-eq v2, v1, :cond_c

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    add-int/2addr p2, v3

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, p2, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    goto :goto_6

    :cond_c
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_d

    sub-int p2, p1, v3

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p2, p1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    goto :goto_6

    :cond_d
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addLabelFixup(II)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto :goto_6

    :cond_e
    if-ltz p2, :cond_f

    if-ge p2, v4, :cond_f

    goto/16 :goto_2

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    if-ltz p2, :cond_12

    if-ge p2, v2, :cond_12

    goto :goto_3

    :goto_6
    int-to-short p1, v0

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, p2, :cond_11

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_11
    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x99
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public add(ILjava/lang/String;)V
    .locals 2

    .line 3
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    const/16 v1, 0xbb

    if-eq p1, v1, :cond_3

    const/16 v1, 0xbd

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc0

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for class reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p2

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    int-to-short p1, v0

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, p2, :cond_4

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_4
    return-void
.end method

.method public add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    :goto_1
    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for field reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sub-int/2addr v0, v1

    goto :goto_2

    :pswitch_1
    add-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_2

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_3

    :cond_2
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_3
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    int-to-short p1, v0

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, p2, :cond_4

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addALoad(I)V
    .locals 2

    const/16 v0, 0x2a

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addAStore(I)V
    .locals 2

    const/16 v0, 0x4b

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addDLoad(I)V
    .locals 2

    const/16 v0, 0x26

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addDStore(I)V
    .locals 2

    const/16 v0, 0x47

    const/16 v1, 0x39

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addExceptionHandler(IIILjava/lang/String;)V
    .locals 2

    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-ne v1, v0, :cond_5

    and-int v1, p2, v0

    if-ne v1, v0, :cond_4

    and-int v1, p3, v0

    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p4}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p4

    :goto_0
    new-instance v1, Lorg/mozilla/classfile/ExceptionTableEntry;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/mozilla/classfile/ExceptionTableEntry;-><init>(IIIS)V

    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-nez p1, :cond_1

    const/4 p2, 0x4

    new-array p2, p2, [Lorg/mozilla/classfile/ExceptionTableEntry;

    iput-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    array-length p3, p2

    if-ne p1, p3, :cond_2

    mul-int/lit8 p3, p1, 0x2

    new-array p3, p3, [Lorg/mozilla/classfile/ExceptionTableEntry;

    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    :cond_2
    :goto_1
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad handlerLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad endLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad startLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addFLoad(I)V
    .locals 2

    const/16 v0, 0x22

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    new-instance v1, Lorg/mozilla/classfile/ClassFileField;

    invoke-direct {v1, p1, p2, p3}, Lorg/mozilla/classfile/ClassFileField;-><init>(SSS)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addILoad(I)V
    .locals 2

    const/16 v0, 0x1a

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addIStore(I)V
    .locals 2

    const/16 v0, 0x3b

    const/16 v1, 0x36

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addInterface(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p4}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x10

    int-to-short v0, v0

    iget-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    add-int/2addr v2, v0

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v0

    add-int/2addr v2, v0

    if-ltz v2, :cond_0

    const/16 v0, 0x7fff

    if-ge v0, v2, :cond_1

    :cond_0
    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for method reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addInterfaceMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    :goto_0
    int-to-short p1, v2

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v2, p2, :cond_3

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public addLLoad(I)V
    .locals 2

    const/16 v0, 0x1e

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addLineNumberEntry(S)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    const/16 v1, 0x10

    if-nez v0, :cond_0

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    array-length v3, v2

    if-ne v0, v3, :cond_1

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    shl-int/lit8 v1, v3, 0x10

    add-int/2addr v1, p1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No method to stop"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLoadConstant(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addConstant(D)I

    move-result p1

    const/16 p2, 0x14

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public addLoadConstant(I)V
    .locals 4

    .line 2
    const/4 v0, 0x3

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    const/4 v3, 0x5

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    move-result p1

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x7

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_1
    return-void
.end method

.method public addLoadConstant(J)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addConstant(J)I

    move-result p1

    const/16 p2, 0x14

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public addLoadConstant(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public addLoadThis()V
    .locals 1

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void
.end method

.method public addPush(D)V
    .locals 6

    .line 1
    const/16 v0, 0x77

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    cmpl-double v5, p1, v3

    if-nez v5, :cond_0

    const/16 v5, 0xe

    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    div-double/2addr v1, p1

    cmpg-double p1, v1, v3

    if-gez p1, :cond_3

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_2

    :cond_0
    cmpl-double v5, p1, v1

    if-eqz v5, :cond_2

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v5, p1, v1

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(D)V

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    cmpg-double v1, p1, v3

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public addPush(I)V
    .locals 2

    .line 2
    int-to-byte v0, p1

    if-ne v0, p1, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_2

    :cond_0
    if-ltz p1, :cond_1

    const/4 v1, 0x5

    if-gt p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x3

    int-to-byte p1, p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_2

    :cond_2
    int-to-short v0, p1

    if-ne v0, p1, :cond_3

    const/16 p1, 0x11

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    :goto_2
    return-void
.end method

.method public addPush(J)V
    .locals 4

    .line 3
    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 p1, 0x85

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(J)V

    :goto_0
    return-void
.end method

.method public addPush(Ljava/lang/String;)V
    .locals 9

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v3, 0xbb

    const-string v4, "java/lang/StringBuilder"

    invoke-virtual {p0, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 v3, 0x59

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string v5, "<init>"

    const-string v6, "(I)V"

    const/16 v7, 0xb7

    invoke-virtual {p0, v7, v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    const-string v2, "append"

    const-string v5, "(Ljava/lang/String;)Ljava/lang/StringBuilder;"

    const/16 v6, 0xb6

    invoke-virtual {p0, v6, v4, v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x57

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    if-ne v1, v0, :cond_1

    const-string p1, "toString"

    const-string v0, "()Ljava/lang/String;"

    invoke-virtual {p0, v6, v4, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v2, p1, v1, v0}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(Ljava/lang/String;II)I

    move-result v2

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_0
.end method

.method public addPush(Z)V
    .locals 0

    .line 5
    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void
.end method

.method public addTableSwitch(II)I
    .locals 7

    if-gt p1, p2, :cond_4

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    const/16 v1, 0xaa

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    sub-int v1, p2, p1

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    not-int v2, v2

    and-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v3

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    add-int/lit8 v4, v1, 0x1

    const/16 v5, -0x56

    aput-byte v5, v3, v1

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    aput-byte v6, v3, v4

    add-int/lit8 v2, v2, -0x1

    move v4, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x4

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p1, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p1

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p2, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    int-to-short p1, v0

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, p2, :cond_3

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_3
    return v1

    :cond_4
    new-instance v0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addVariableDescriptor(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p2

    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    if-nez p2, :cond_0

    new-instance p2, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {p2}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    :cond_0
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public adjustStackTop(I)V
    .locals 2

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    const/16 p1, 0x7fff

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    int-to-short p1, v0

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, v1, :cond_2

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    :cond_2
    return-void
.end method

.method public final getCharBuffer(I)[C
    .locals 2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    array-length v1, v0

    if-le p1, v1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    :cond_1
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    return-object p1
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->generatedClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCodeOffset()I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    return v0
.end method

.method public getLabelPC(I)I
    .locals 1

    if-gez p1, :cond_1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label, no biscuit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStackTop()S
    .locals 1

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    return v0
.end method

.method public markHandler(I)V
    .locals 1

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    return-void
.end method

.method public markLabel(I)V
    .locals 3

    .line 1
    if-gez p1, :cond_2

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    aput v1, v0, p1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can only mark label once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label, no biscuit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markLabel(IS)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iput-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    return-void
.end method

.method public final markTableSwitchCase(II)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    return-void
.end method

.method public final markTableSwitchCase(III)V
    .locals 1

    if-ltz p3, :cond_0

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-gt p3, v0, :cond_0

    int-to-short p3, p3

    iput-short p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iget p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p3, v0, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    iget p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad stack index: "

    .line 2
    invoke-static {p3, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final markTableSwitchDefault(I)V
    .locals 2

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    const/4 v0, -0x1

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    return-void
.end method

.method public setStackTop(S)V
    .locals 0

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    return-void
.end method

.method public setTableSwitchJump(III)V
    .locals 5

    .line 1
    if-ltz p3, :cond_5

    .line 2
    .line 3
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 4
    .line 5
    if-lt v0, p3, :cond_5

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-lt p2, v1, :cond_4

    .line 9
    .line 10
    not-int v1, p1

    .line 11
    and-int/lit8 v1, v1, 0x3

    .line 12
    .line 13
    add-int/lit8 v2, p1, 0x1

    .line 14
    .line 15
    add-int/2addr v2, v1

    .line 16
    if-gez p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v3, p2, 0x3

    .line 20
    .line 21
    mul-int/lit8 v3, v3, 0x4

    .line 22
    .line 23
    add-int/2addr v2, v3

    .line 24
    :goto_0
    if-ltz p1, :cond_3

    .line 25
    .line 26
    add-int/lit8 v3, v0, -0x10

    .line 27
    .line 28
    sub-int/2addr v3, v1

    .line 29
    add-int/lit8 v3, v3, -0x1

    .line 30
    .line 31
    if-lt v3, p1, :cond_3

    .line 32
    .line 33
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 34
    .line 35
    aget-byte v3, v1, p1

    .line 36
    .line 37
    and-int/lit16 v3, v3, 0xff

    .line 38
    .line 39
    const/16 v4, 0xaa

    .line 40
    .line 41
    if-ne v3, v4, :cond_2

    .line 42
    .line 43
    if-ltz v2, :cond_1

    .line 44
    .line 45
    add-int/lit8 v3, v2, 0x4

    .line 46
    .line 47
    if-lt v0, v3, :cond_1

    .line 48
    .line 49
    sub-int/2addr p3, p1

    .line 50
    invoke-static {p3, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    .line 55
    .line 56
    const-string p3, "Too big case index: "

    .line 57
    .line 58
    invoke-static {p2, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    new-instance p3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, " is not offset of tableswitch statement"

    .line 77
    .line 78
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p2

    .line 89
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    new-instance p3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, " is outside a possible range of tableswitch in already generated code"

    .line 100
    .line 101
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p2

    .line 112
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    const-string p3, "Bad case index: "

    .line 115
    .line 116
    invoke-static {p2, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    const-string p2, "Bad jump target: "

    .line 127
    .line 128
    invoke-static {p3, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1
.end method

.method public startMethod(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 7

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v5

    new-instance v0, Lorg/mozilla/classfile/ClassFileMethod;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/classfile/ClassFileMethod;-><init>(Ljava/lang/String;SLjava/lang/String;SS)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    new-instance p1, Lorg/mozilla/javascript/UintMap;

    invoke-direct {p1}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    return-void
.end method

.method public stopMethod(S)V
    .locals 14

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->fixLabelGotos()V

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    sget-boolean p1, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->finalizeSuperBlockStarts()V

    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;

    invoke-direct {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;-><init>(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->generate()V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x8

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->computeWriteSize()I

    move-result v4

    if-lez v4, :cond_3

    add-int/lit8 v4, v4, 0x6

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iget v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/lit8 v5, v5, 0x10

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    mul-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v5

    const/4 v5, 0x2

    add-int/2addr v6, v5

    add-int/2addr v6, v1

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    const/high16 v1, 0x10000

    if-gt v6, v1, :cond_f

    new-array v1, v6, [B

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v7, "Code"

    invoke-virtual {v3, v7}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    invoke-static {v3, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    add-int/lit8 v6, v6, -0x6

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    iget-short v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget-short v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/2addr v3, v6

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-lez v6, :cond_7

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    const/4 v6, 0x0

    :goto_4
    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-ge v6, v7, :cond_8

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    aget-object v7, v7, v6

    iget v8, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    invoke-virtual {p0, v8}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v8

    iget v9, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    invoke-virtual {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v9

    iget v10, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    invoke-virtual {p0, v10}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v10

    iget-short v7, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    const/4 v11, -0x1

    if-eq v8, v11, :cond_6

    if-eq v9, v11, :cond_5

    if-eq v10, v11, :cond_4

    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v9, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v10, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v7, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handler label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "end label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "start label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {v2, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    :cond_8
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    if-eqz v8, :cond_a

    add-int/lit8 v6, v6, 0x1

    :cond_a
    if-lez v4, :cond_b

    add-int/lit8 v6, v6, 0x1

    :cond_b
    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    if-eqz v6, :cond_c

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v8, "LineNumberTable"

    invoke-virtual {v6, v8}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v6

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v5

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    const/4 v6, 0x0

    :goto_6
    iget v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    if-ge v6, v8, :cond_c

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    aget v8, v8, v6

    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v8, "LocalVariableTable"

    invoke-virtual {v6, v8}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v6

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v6

    mul-int/lit8 v8, v6, 0xa

    add-int/2addr v8, v5

    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_d

    iget-object v9, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v9, v8}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v10, v9, v2

    aget v11, v9, v7

    aget v12, v9, v5

    const/4 v13, 0x3

    aget v9, v9, v13

    iget v13, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    sub-int/2addr v13, v12

    invoke-static {v12, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v13, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v10, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v11, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v9, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    if-lez v4, :cond_e

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v5, "StackMapTable"

    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v4

    invoke-static {v4, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->write([BI)I

    :cond_e
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileMethod;->setCodeAttribute([B)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    iput-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    iput-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    return-void

    :cond_f
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string v0, "generated bytecode for method exceeds 64K limit."

    invoke-direct {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No method to stop"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toByteArray()[B
    .locals 9

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v2, "BootstrapMethods"

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-short v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v4, "SourceFile"

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->getWriteSize()I

    move-result v4

    new-array v5, v4, [B

    const v6, -0x35014542    # -8346975.0f

    invoke-static {v6, v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v6

    sget v7, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    sget v7, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v7, v5, v6}, Lorg/mozilla/classfile/ConstantPool;->write([BI)I

    move-result v6

    iget-short v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:S

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget-short v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget-short v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperClassIndex:S

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-static {v8, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mozilla/classfile/ClassFileField;

    invoke-virtual {v8, v5, v6}, Lorg/mozilla/classfile/ClassFileField;->write([BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    const/4 v7, 0x0

    :goto_4
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v8, v5, v6}, Lorg/mozilla/classfile/ClassFileMethod;->write([BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v2, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v2

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    const/4 v7, 0x2

    if-eqz v6, :cond_6

    invoke-static {v0, v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    add-int/2addr v2, v7

    invoke-static {v2, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    invoke-static {v2, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v0

    if-gtz v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_6
    :goto_5
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v0, :cond_7

    invoke-static {v3, v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    invoke-static {v7, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v0

    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    invoke-static {v1, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v2

    :cond_7
    if-ne v2, v4, :cond_8

    return-object v5

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
