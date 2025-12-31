.class public final Lj$/time/format/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj$/time/format/E;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj$/time/format/E;

    .line 0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 0
    sput-object v0, Lj$/time/format/E;->a:Lj$/time/format/E;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method


# virtual methods
.method final a(C)I
    .locals 1

    add-int/lit8 p1, p1, -0x30

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/format/E;

    if-eqz v1, :cond_1

    check-cast p1, Lj$/time/format/E;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/16 v0, 0xb6

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DecimalStyle[0+-.]"

    return-object v0
.end method
