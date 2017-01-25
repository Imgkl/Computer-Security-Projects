.class Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridAffinityAssignmentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AffinityReadyFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private reqTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 411
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p2, "reqTopVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 421
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 422
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;->reqTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 423
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$1;

    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;-><init>(Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 411
    check-cast p1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;->onDone(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 427
    sget-boolean v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 429
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    .line 431
    .local v0, "done":Z
    if-eqz v0, :cond_1

    .line 432
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->readyFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->access$100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;->reqTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {v1, v2, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 434
    :cond_1
    return v0
.end method
