.class Lnet/lingala/zip4j/io/inputstream/StoreInputStream;
.super Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;)V

    return-void
.end method
