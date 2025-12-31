.class public interface abstract Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOOP:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder$1;

    invoke-direct {v0}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder$1;-><init>()V

    sput-object v0, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->NOOP:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    return-void
.end method


# virtual methods
.method public abstract buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V
.end method
