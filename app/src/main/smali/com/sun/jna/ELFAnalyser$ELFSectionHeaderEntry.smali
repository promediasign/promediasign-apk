.class Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/ELFAnalyser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ELFSectionHeaderEntry"
.end annotation


# instance fields
.field private final flags:I

.field private name:Ljava/lang/String;

.field private final nameOffset:I

.field private final offset:I

.field private final size:I

.field private final type:I


# direct methods
.method public constructor <init>(ZLjava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->nameOffset:I

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->type:I

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    long-to-int v1, v0

    iput v1, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->flags:I

    if-eqz p1, :cond_1

    const/16 v0, 0x18

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    :goto_1
    long-to-int v1, v0

    iput v1, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->offset:I

    if-eqz p1, :cond_2

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p1

    goto :goto_2

    :cond_2
    const/16 p1, 0x14

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    int-to-long p1, p1

    :goto_2
    long-to-int p2, p1

    iput p2, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->size:I

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->flags:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOffset()I
    .locals 1

    iget v0, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->nameOffset:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->offset:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->size:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->type:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ELFSectionHeaderEntry{nameIdx="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->nameOffset:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", name="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", type="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->type:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", flags="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->flags:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", offset="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->offset:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", size="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->size:I

    .line 59
    .line 60
    const/16 v2, 0x7d

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
