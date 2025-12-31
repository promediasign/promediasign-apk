.class public final Lcom/illposed/osc/argument/OSCImpulse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lcom/illposed/osc/argument/OSCImpulse;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/illposed/osc/argument/OSCImpulse;

    invoke-direct {v0}, Lcom/illposed/osc/argument/OSCImpulse;-><init>()V

    sput-object v0, Lcom/illposed/osc/argument/OSCImpulse;->INSTANCE:Lcom/illposed/osc/argument/OSCImpulse;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "I"

    return-object v0
.end method
