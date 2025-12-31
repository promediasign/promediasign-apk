.class Lorg/apache/commons/text/lookup/ConstantStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lorg/apache/commons/text/lookup/ConstantStringLookup;

.field private static constantCache:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/text/lookup/ConstantStringLookup;

    invoke-direct {v0}, Lorg/apache/commons/text/lookup/ConstantStringLookup;-><init>()V

    sput-object v0, Lorg/apache/commons/text/lookup/ConstantStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/ConstantStringLookup;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/text/lookup/ConstantStringLookup;->constantCache:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    return-void
.end method
