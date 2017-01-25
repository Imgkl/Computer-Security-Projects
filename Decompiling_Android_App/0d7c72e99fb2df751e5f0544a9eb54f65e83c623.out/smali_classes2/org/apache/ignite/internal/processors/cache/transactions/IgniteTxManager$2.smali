.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$2;
.super Ljava/lang/Object;
.source "IgniteTxManager.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteReducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->finishTxs(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteReducer",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 514
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$2;->collect(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v0

    return v0
.end method

.method public collect(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method public reduce()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reduce()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$2;->reduce()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
