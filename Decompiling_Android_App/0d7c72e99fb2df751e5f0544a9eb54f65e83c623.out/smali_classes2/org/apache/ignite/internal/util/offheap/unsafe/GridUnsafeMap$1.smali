.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;
.super Ljava/lang/Object;
.source "GridUnsafeMap.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;-><init>(IFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)V
    .locals 0

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lruPoll(I)V
    .locals 8
    .param p1, "size"    # I

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap.1;"
    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v5

    if-nez v5, :cond_1

    .line 173
    :cond_0
    return-void

    .line 155
    :cond_1
    move v0, p1

    .line 157
    .local v0, "left":I
    :goto_0
    if-lez v0, :cond_0

    .line 159
    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->prePoll()J

    move-result-wide v2

    .line 161
    .local v2, "qAddr":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 164
    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->order(J)S

    move-result v1

    .line 166
    .local v1, "order":S
    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    invoke-virtual {v5, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->freeSpace(SJ)I

    move-result v4

    .line 168
    .local v4, "released":I
    if-eqz v4, :cond_0

    .line 171
    sub-int/2addr v0, v4

    .line 172
    goto :goto_0
.end method
