.class public final enum Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;
.super Ljava/lang/Enum;
.source "IgniteInternalTx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FinalizationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

.field public static final enum NONE:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

.field public static final enum RECOVERY_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

.field public static final enum RECOVERY_WAIT:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

.field public static final enum USER_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->NONE:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    .line 48
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    const-string v1, "USER_FINISH"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->USER_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    .line 51
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    const-string v1, "RECOVERY_WAIT"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->RECOVERY_WAIT:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    .line 54
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    const-string v1, "RECOVERY_FINISH"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->RECOVERY_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->NONE:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->USER_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->RECOVERY_WAIT:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->RECOVERY_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    return-object v0
.end method
