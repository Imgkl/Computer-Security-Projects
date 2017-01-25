.class Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$5;
.super Ljava/lang/Object;
.source "GridCacheMvccManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->nodeIdFilter(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

.field final synthetic val$nodeId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$5;->val$nodeId:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 916
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$5;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 918
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherNodeId()Ljava/util/UUID;

    move-result-object v0

    .line 920
    .local v0, "otherId":Ljava/util/UUID;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$5;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$5;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
