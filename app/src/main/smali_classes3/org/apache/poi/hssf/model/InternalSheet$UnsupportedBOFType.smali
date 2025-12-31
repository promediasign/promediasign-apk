.class public Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;
.super Lorg/apache/poi/util/RecordFormatException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/model/InternalSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnsupportedBOFType"
.end annotation


# instance fields
.field private final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const-string v0, "BOF not of a supported type, found "

    .line 2
    .line 3
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;->type:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;->type:I

    return v0
.end method
