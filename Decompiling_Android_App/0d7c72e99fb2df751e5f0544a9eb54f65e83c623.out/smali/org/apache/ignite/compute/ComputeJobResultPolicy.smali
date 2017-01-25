.class public final enum Lorg/apache/ignite/compute/ComputeJobResultPolicy;
.super Ljava/lang/Enum;
.source "ComputeJobResultPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/compute/ComputeJobResultPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/compute/ComputeJobResultPolicy;

.field public static final enum FAILOVER:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

.field public static final enum REDUCE:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

.field private static final VALS:[Lorg/apache/ignite/compute/ComputeJobResultPolicy;

.field public static final enum WAIT:Lorg/apache/ignite/compute/ComputeJobResultPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    const-string v1, "WAIT"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/compute/ComputeJobResultPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->WAIT:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    .line 37
    new-instance v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    const-string v1, "REDUCE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/compute/ComputeJobResultPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->REDUCE:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    .line 42
    new-instance v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    const-string v1, "FAILOVER"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/compute/ComputeJobResultPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->FAILOVER:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    sget-object v1, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->WAIT:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->REDUCE:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->FAILOVER:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->$VALUES:[Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    .line 45
    invoke-static {}, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->values()[Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->VALS:[Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(B)Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 55
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->VALS:[Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->VALS:[Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->$VALUES:[Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    invoke-virtual {v0}, [Lorg/apache/ignite/compute/ComputeJobResultPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    return-object v0
.end method
