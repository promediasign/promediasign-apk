.class final Lorg/apache/poi/ss/formula/functions/Sumx2py2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Sumx2py2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accumulate(DD)D
    .locals 0

    mul-double p1, p1, p1

    mul-double p3, p3, p3

    add-double/2addr p3, p1

    return-wide p3
.end method
