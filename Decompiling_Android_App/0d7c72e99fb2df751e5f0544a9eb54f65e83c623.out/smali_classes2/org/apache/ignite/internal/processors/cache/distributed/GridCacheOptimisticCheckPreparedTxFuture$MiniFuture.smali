.class Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridCacheOptimisticCheckPreparedTxFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private nodeId:Ljava/util/UUID;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;Ljava/util/UUID;)V
    .locals 1
    .param p2, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 334
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 326
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 335
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->nodeId:Ljava/util/UUID;

    .line 336
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;
    .param p2, "x1"    # Ljava/util/UUID;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$1;

    .prologue
    .line 321
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;

    .prologue
    .line 321
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;

    .prologue
    .line 321
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onNodeLeft()V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;

    .prologue
    .line 321
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->nodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;)V

    return-void
.end method

.method private futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 349
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method private nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 342
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 356
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->access$600()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->access$600()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get future result [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 359
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 360
    return-void
.end method

.method private onNodeLeft()V
    .locals 3

    .prologue
    .line 365
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->access$600()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->access$600()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction node left grid (will ignore) [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 368
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method private onResult(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;)V
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->success()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    .line 376
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 380
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;

    const-string v2, "done"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "err"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->error()Ljava/lang/Throwable;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
