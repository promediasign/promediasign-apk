.class final Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/io/UnicodeInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnicodeBOM"
.end annotation


# instance fields
.field private final bytes:[B

.field private final encoding:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;->encoding:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;->bytes:[B

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[BLorg/apache/velocity/io/UnicodeInputStream$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;-><init>(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;->bytes:[B

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;->encoding:Ljava/lang/String;

    return-object v0
.end method
