.class public Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;
.super Ljava/lang/Object;
.source "IgniteTransactionsImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/IgniteTransactionsEx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/IgniteTransactionsEx;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 41
    return-void
.end method

.method private txStart0(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JILorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 17
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p3, "timeout"    # J
    .param p5, "txSize"    # I
    .param p6, "sysCacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v15

    .line 140
    .local v15, "cfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/apache/ignite/transactions/TransactionIsolation;->SERIALIZABLE:Lorg/apache/ignite/transactions/TransactionIsolation;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SERIALIZABLE isolation level is disabled (to enable change \'txSerializableEnabled\' configuration property)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->userTx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v16

    .line 146
    .local v16, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v16, :cond_1

    .line 147
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start new transaction (current thread already has a transaction): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p6

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move/from16 v12, p5

    invoke-virtual/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->newTx(ZZLorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Z)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-result-object v16

    .line 164
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v16, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 166
    :cond_2
    return-object v16
.end method


# virtual methods
.method public metrics()Lorg/apache/ignite/transactions/TransactionMetrics;
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txMetrics()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public resetMetrics()V
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->resetTxMetrics()V

    .line 184
    return-void
.end method

.method public tx()Lorg/apache/ignite/transactions/Transaction;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->userTx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    .line 173
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->proxy()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public txStart()Lorg/apache/ignite/transactions/Transaction;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v0

    .line 47
    .local v0, "cfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxConcurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxIsolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxTimeout()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->txStart0(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JILorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->proxy()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;

    move-result-object v1

    return-object v1
.end method

.method public txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/transactions/Transaction;
    .locals 8
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl<TK;TV;>;"
    const-string v1, "concurrency"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-string v1, "isolation"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v0

    .line 63
    .local v0, "cfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxTimeout()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->txStart0(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JILorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->proxy()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;

    move-result-object v1

    return-object v1
.end method

.method public txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JI)Lorg/apache/ignite/transactions/Transaction;
    .locals 9
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p3, "timeout"    # J
    .param p5, "txSize"    # I

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const-string v0, "concurrency"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const-string v0, "isolation"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "timeout cannot be negative"

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 78
    if-ltz p5, :cond_1

    :goto_1
    const-string v0, "transaction size cannot be negative"

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 80
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->txStart0(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JILorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->proxy()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v1, v2

    .line 78
    goto :goto_1
.end method

.method public txStartEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 8
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p3, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl<TK;TV;>;"
    const-string v1, "concurrency"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    const-string v1, "isolation"

    invoke-static {p3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v0

    .line 120
    .local v0, "cfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxTimeout()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v7, p1

    :goto_0
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->txStart0(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JILorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public txStartEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JI)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 8
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p3, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p4, "timeout"    # J
    .param p6, "txSize"    # I

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    const-string v0, "concurrency"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const-string v0, "isolation"

    invoke-static {p3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    const-wide/16 v4, 0x0

    cmp-long v0, p4, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "timeout cannot be negative"

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 100
    if-ltz p6, :cond_1

    :goto_1
    const-string v0, "transaction size cannot be negative"

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v7, p1

    :goto_2
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;->txStart0(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JILorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0

    :cond_1
    move v1, v2

    .line 100
    goto :goto_1

    .line 102
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method
