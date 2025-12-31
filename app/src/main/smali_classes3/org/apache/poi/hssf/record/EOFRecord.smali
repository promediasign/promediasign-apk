.class public final Lorg/apache/poi/hssf/record/EOFRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ENCODED_SIZE:I = 0x4

.field public static final instance:Lorg/apache/poi/hssf/record/EOFRecord;

.field public static final sid:S = 0xas


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/EOFRecord;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/record/EOFRecord;->instance:Lorg/apache/poi/hssf/record/EOFRecord;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EOFRecord;->clone()Lorg/apache/poi/hssf/record/EOFRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/EOFRecord;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/poi/hssf/record/EOFRecord;->instance:Lorg/apache/poi/hssf/record/EOFRecord;

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[EOF]\n[/EOF]\n"

    return-object v0
.end method
