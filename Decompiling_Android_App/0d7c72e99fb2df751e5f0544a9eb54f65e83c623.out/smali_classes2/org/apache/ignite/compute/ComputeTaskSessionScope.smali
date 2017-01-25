.class public final enum Lorg/apache/ignite/compute/ComputeTaskSessionScope;
.super Ljava/lang/Enum;
.source "ComputeTaskSessionScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/compute/ComputeTaskSessionScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/compute/ComputeTaskSessionScope;

.field public static final enum GLOBAL_SCOPE:Lorg/apache/ignite/compute/ComputeTaskSessionScope;

.field public static final enum SESSION_SCOPE:Lorg/apache/ignite/compute/ComputeTaskSessionScope;

.field private static final VALS:[Lorg/apache/ignite/compute/ComputeTaskSessionScope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    const-string v1, "SESSION_SCOPE"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/compute/ComputeTaskSessionScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->SESSION_SCOPE:Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    .line 45
    new-instance v0, Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    const-string v1, "GLOBAL_SCOPE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/compute/ComputeTaskSessionScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->GLOBAL_SCOPE:Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    sget-object v1, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->SESSION_SCOPE:Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->GLOBAL_SCOPE:Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->$VALUES:[Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    .line 48
    invoke-static {}, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->values()[Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->VALS:[Lorg/apache/ignite/compute/ComputeTaskSessionScope;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(B)Lorg/apache/ignite/compute/ComputeTaskSessionScope;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 57
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->VALS:[Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->VALS:[Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/compute/ComputeTaskSessionScope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/compute/ComputeTaskSessionScope;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->$VALUES:[Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    invoke-virtual {v0}, [Lorg/apache/ignite/compute/ComputeTaskSessionScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    return-object v0
.end method
