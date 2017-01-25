.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;
.super Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;
.source "GridOffHeapSnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .param p2, "x0"    # Ljava/util/concurrent/ConcurrentNavigableMap;

    .prologue
    .line 4356
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4358
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap.1;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Ljava/lang/Comparable;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Z

    move-result v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;
    invoke-static {v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$2900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Ljava/lang/Comparable;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$3000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Z

    move-result v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->access$3100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    return-object v0
.end method
