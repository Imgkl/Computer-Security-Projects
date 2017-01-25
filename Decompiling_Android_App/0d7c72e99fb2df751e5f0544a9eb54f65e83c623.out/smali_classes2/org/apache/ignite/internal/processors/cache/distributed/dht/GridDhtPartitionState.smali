.class public final enum Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
.super Ljava/lang/Enum;
.source "GridDhtPartitionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

.field public static final enum EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

.field public static final enum MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

.field public static final enum OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

.field public static final enum RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const-string v1, "MOVING"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .line 30
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const-string v1, "OWNING"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const-string v1, "RENTING"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const-string v1, "EVICTED"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .line 39
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->values()[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->VALS:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 46
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->VALS:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->VALS:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    return-object v0
.end method


# virtual methods
.method public active()Z
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
