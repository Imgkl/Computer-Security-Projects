.class public final enum Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;
.super Ljava/lang/Enum;
.source "GridClosurePolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

.field public static final enum IGFS_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

.field public static final enum P2P_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

.field public static final enum PUBLIC_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

.field public static final enum SYSTEM_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    const-string v1, "PUBLIC_POOL"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    const-string v1, "P2P_POOL"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->P2P_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    .line 34
    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    const-string v1, "SYSTEM_POOL"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    const-string v1, "IGFS_POOL"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->IGFS_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    sget-object v1, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->P2P_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->IGFS_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->$VALUES:[Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    .line 40
    invoke-static {}, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->values()[Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->VALS:[Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 49
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->VALS:[Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->VALS:[Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->$VALUES:[Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    return-object v0
.end method
