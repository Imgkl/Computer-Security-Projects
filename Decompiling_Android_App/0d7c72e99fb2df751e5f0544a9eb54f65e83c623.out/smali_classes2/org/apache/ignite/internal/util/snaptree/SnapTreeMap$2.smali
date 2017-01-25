.class Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$2;
.super Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeySet;
.source "SnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->navigableKeySet()Ljava/util/NavigableSet;
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
.field final synthetic this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0

    .prologue
    .line 2196
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$2;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap.2;"
    .local p2, "x0":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$2;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2198
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$2;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap.2;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$2;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V

    return-object v0
.end method
