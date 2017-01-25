.class Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;
.super Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeySet;
.source "SnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeySet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0

    .prologue
    .line 2832
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap.1;"
    .local p2, "x0":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2834
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap.1;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1500(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1700(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Ljava/lang/Comparable;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z
    invoke-static {v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1800(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Z

    move-result v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$1900(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Ljava/lang/Comparable;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z
    invoke-static {v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$2000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Z

    move-result v5

    iget-object v6, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z
    invoke-static {v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->access$2100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Z

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V

    return-object v0
.end method
