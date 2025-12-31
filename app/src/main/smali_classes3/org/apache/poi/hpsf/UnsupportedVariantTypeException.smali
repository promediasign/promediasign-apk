.class public abstract Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;
.super Lorg/apache/poi/hpsf/VariantTypeException;
.source "SourceFile"


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "HPSF does not yet support the variant type "

    .line 2
    .line 3
    const-string v1, " ("

    .line 4
    .line 5
    invoke-static {v0, p1, p2, v1}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, p2}, Lorg/apache/poi/hpsf/Variant;->getVariantName(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Lorg/apache/poi/util/HexDump;->toHex(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "). If you want support for this variant type in one of the next POI releases please submit a request for enhancement (RFE) to <http://issues.apache.org/bugzilla/>! Thank you!"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/hpsf/VariantTypeException;-><init>(JLjava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
