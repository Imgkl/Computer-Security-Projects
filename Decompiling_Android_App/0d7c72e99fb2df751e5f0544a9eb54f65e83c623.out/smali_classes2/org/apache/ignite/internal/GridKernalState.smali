.class public final enum Lorg/apache/ignite/internal/GridKernalState;
.super Ljava/lang/Enum;
.source "GridKernalState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/GridKernalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/GridKernalState;

.field public static final enum STARTED:Lorg/apache/ignite/internal/GridKernalState;

.field public static final enum STARTING:Lorg/apache/ignite/internal/GridKernalState;

.field public static final enum STOPPED:Lorg/apache/ignite/internal/GridKernalState;

.field public static final enum STOPPING:Lorg/apache/ignite/internal/GridKernalState;

.field private static final VALS:[Lorg/apache/ignite/internal/GridKernalState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/apache/ignite/internal/GridKernalState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridKernalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridKernalState;->STARTED:Lorg/apache/ignite/internal/GridKernalState;

    .line 30
    new-instance v0, Lorg/apache/ignite/internal/GridKernalState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/GridKernalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridKernalState;->STARTING:Lorg/apache/ignite/internal/GridKernalState;

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/GridKernalState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/GridKernalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridKernalState;->STOPPING:Lorg/apache/ignite/internal/GridKernalState;

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/GridKernalState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/GridKernalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridKernalState;->STOPPED:Lorg/apache/ignite/internal/GridKernalState;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/internal/GridKernalState;

    sget-object v1, Lorg/apache/ignite/internal/GridKernalState;->STARTED:Lorg/apache/ignite/internal/GridKernalState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/GridKernalState;->STARTING:Lorg/apache/ignite/internal/GridKernalState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/GridKernalState;->STOPPING:Lorg/apache/ignite/internal/GridKernalState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/GridKernalState;->STOPPED:Lorg/apache/ignite/internal/GridKernalState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/internal/GridKernalState;->$VALUES:[Lorg/apache/ignite/internal/GridKernalState;

    .line 42
    invoke-static {}, Lorg/apache/ignite/internal/GridKernalState;->values()[Lorg/apache/ignite/internal/GridKernalState;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/GridKernalState;->VALS:[Lorg/apache/ignite/internal/GridKernalState;

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

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/GridKernalState;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 49
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/GridKernalState;->VALS:[Lorg/apache/ignite/internal/GridKernalState;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/GridKernalState;->VALS:[Lorg/apache/ignite/internal/GridKernalState;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/GridKernalState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/GridKernalState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridKernalState;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/GridKernalState;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/internal/GridKernalState;->$VALUES:[Lorg/apache/ignite/internal/GridKernalState;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/GridKernalState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/GridKernalState;

    return-object v0
.end method
