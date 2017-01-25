.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
        "<TR;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult",
        "<TR;>.QueueIterator;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NEXT_SIZE:I = 0x40

.field private static final serialVersionUID:J


# instance fields
.field private next:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TR;>;"
        }
    .end annotation
.end field

.field private pos:I

.field private final recipient:Ljava/lang/Object;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2679
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;Ljava/lang/Object;)V
    .locals 0
    .param p2, "recipient"    # Ljava/lang/Object;

    .prologue
    .line 2699
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2700
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->recipient:Ljava/lang/Object;

    .line 2701
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;

    .prologue
    .line 2680
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3400(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;

    .prologue
    .line 2680
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->pos:I

    return v0
.end method

.method private fillNext()Z
    .locals 8

    .prologue
    .line 2731
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->next:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2736
    :cond_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2742
    .local v2, "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<TR;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->access$3500(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 2743
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x40

    if-ge v1, v5, :cond_1

    .line 2746
    :try_start_1
    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->pos:I

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->pruned:I
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->access$3600(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;)I

    move-result v7

    sub-int v3, v5, v7

    .line 2748
    .local v3, "off":I
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->queue:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->access$3700(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->size()I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 2749
    invoke-interface {v2}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2765
    .end local v3    # "off":I
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    # invokes: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->pruneQueue()V
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->access$3800(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;)V

    .line 2766
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2768
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->next:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 2738
    .end local v1    # "i":I
    .end local v2    # "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<TR;>;"
    :catch_0
    move-exception v0

    .line 2739
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v5, Lorg/apache/ignite/IgniteException;

    invoke-direct {v5, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 2752
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "i":I
    .restart local v2    # "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<TR;>;"
    .restart local v3    # "off":I
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2754
    .local v4, "res":Ljava/lang/Object;, "TR;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->queue:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->access$3700(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->add(Ljava/lang/Object;)V

    .line 2759
    :goto_2
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    if-nez v4, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2766
    .end local v3    # "off":I
    .end local v4    # "res":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2757
    .restart local v3    # "off":I
    :cond_3
    :try_start_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->queue:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->access$3700(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->get(I)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "res":Ljava/lang/Object;, "TR;"
    goto :goto_2

    .line 2761
    :cond_4
    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->pos:I

    .line 2762
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->next:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2743
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2768
    .end local v3    # "off":I
    .end local v4    # "res":Ljava/lang/Object;, "TR;"
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2713
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->recipient:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->closeIfNotShared(Ljava/lang/Object;)V

    .line 2714
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2679
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->compareTo(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult",
            "<TR;>.QueueIterator;)I"
        }
    .end annotation

    .prologue
    .line 2778
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    .local p1, "o":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->pos:I

    iget v1, p1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->pos:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 2718
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->next:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->fillNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 2706
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->next:Ljava/util/Queue;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2708
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->next:Ljava/util/Queue;

    .line 2709
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 2724
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->next:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 2773
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
