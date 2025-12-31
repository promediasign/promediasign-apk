.class public final Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnparseableExtraField"
.end annotation


# static fields
.field public static final READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final SKIP:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;


# instance fields
.field private final key:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->SKIP:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->key:I

    return-void
.end method


# virtual methods
.method public onUnparseableExtraField([BIIZI)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->key:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 p5, 0x1

    .line 6
    if-eq v0, p5, :cond_2

    .line 7
    .line 8
    const/4 p5, 0x2

    .line 9
    if-ne v0, p5, :cond_1

    .line 10
    .line 11
    new-instance p5, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 12
    .line 13
    invoke-direct {p5}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;-><init>()V

    .line 14
    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    invoke-virtual {p5, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->parseFromLocalFileData([BII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p5, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->parseFromCentralDirectoryData([BII)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object p5

    .line 26
    :cond_1
    new-instance p1, Ljava/util/zip/ZipException;

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, "Unknown UnparseableExtraField key: "

    .line 31
    .line 32
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget p3, p0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->key:I

    .line 36
    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    const/4 p1, 0x0

    .line 49
    return-object p1

    .line 50
    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    .line 51
    .line 52
    const-string p4, "Bad extra field starting at "

    .line 53
    .line 54
    const-string v0, ".  Block length of "

    .line 55
    .line 56
    const-string v1, " bytes exceeds remaining data of "

    .line 57
    .line 58
    invoke-static {p4, p2, v0, p5, v1}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    add-int/lit8 p3, p3, -0x4

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p3, " bytes."

    .line 68
    .line 69
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method
