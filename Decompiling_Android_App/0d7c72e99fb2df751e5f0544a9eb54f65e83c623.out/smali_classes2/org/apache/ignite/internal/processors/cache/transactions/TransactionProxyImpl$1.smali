.class Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl$1;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "TransactionProxyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;->saveFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;",
        "Lorg/apache/ignite/transactions/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;)V
    .locals 0

    .prologue
    .line 305
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl$1;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl$1;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl$1;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/transactions/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/transactions/Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;)",
            "Lorg/apache/ignite/transactions/Transaction;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl$1;, "Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl.1;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->proxy()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;

    move-result-object v0

    return-object v0
.end method
