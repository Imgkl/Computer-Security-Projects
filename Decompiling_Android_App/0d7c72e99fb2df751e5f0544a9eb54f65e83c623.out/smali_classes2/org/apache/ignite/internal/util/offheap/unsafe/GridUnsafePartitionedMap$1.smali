.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$1;
.super Ljava/lang/Object;
.source "GridUnsafePartitionedMap.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;-><init>(IIFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$1;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lruPoll(I)V
    .locals 8
    .param p1, "size"    # I

    .prologue
    .line 109
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$1;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v6

    if-nez v6, :cond_1

    .line 132
    :cond_0
    return-void

    .line 112
    :cond_1
    move v0, p1

    .line 114
    .local v0, "left":I
    :goto_0
    if-lez v0, :cond_0

    .line 116
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$1;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->prePoll()J

    move-result-wide v4

    .line 118
    .local v4, "qAddr":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 121
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$1;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->order(J)S

    move-result v1

    .line 123
    .local v1, "order":S
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$1;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v6

    invoke-virtual {v6, v1, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->partition(SJ)I

    move-result v2

    .line 125
    .local v2, "part":I
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$1;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->partMap:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->access$100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6, v1, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->freeSpace(SJ)I

    move-result v3

    .line 127
    .local v3, "released":I
    if-eqz v3, :cond_0

    .line 130
    sub-int/2addr v0, v3

    .line 131
    goto :goto_0
.end method
