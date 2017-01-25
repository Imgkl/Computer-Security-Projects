.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;
.super Ljava/lang/Object;
.source "GridCacheQueueAdapter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cur:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private curIdx:J

.field private endIdx:J

.field private idx:J

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private rmvIdxs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 561
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;)V
    .locals 4
    .param p2, "hdr"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 585
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>.QueueIterator;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    .line 587
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->endIdx:J

    .line 588
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->removedIndexes()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->rmvIdxs:Ljava/util/Set;

    .line 590
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->rmvIdxs:Ljava/util/Set;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    invoke-direct {v0, v2, v3}, Ljava/lang/AssertionError;-><init>(J)V

    throw v0

    .line 592
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->endIdx:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 593
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->next:Ljava/lang/Object;

    .line 594
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>.QueueIterator;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 598
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>.QueueIterator;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>.QueueIterator;"
    const-wide/16 v6, 0x1

    .line 604
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->next:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 605
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 608
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->next:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->cur:Ljava/lang/Object;

    .line 609
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->curIdx:J

    .line 611
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    .line 613
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->rmvIdxs:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 614
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->rmvIdxs:Ljava/util/Set;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->endIdx:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 615
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1

    .line 618
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->endIdx:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->idx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->next:Ljava/lang/Object;

    .line 620
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->cur:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 618
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 629
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>.QueueIterator;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->cur:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 630
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 633
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->curIdx:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->removeItem(J)V

    .line 635
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;->cur:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method
