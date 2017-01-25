.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$CollocatedItemKey;
.super Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
.source "GridCacheQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollocatedItemKey"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 653
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;-><init>()V

    .line 655
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;J)V
    .locals 1
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "queueName"    # Ljava/lang/String;
    .param p3, "idx"    # J

    .prologue
    .line 663
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;J)V

    .line 664
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;JLorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$1;)V
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$1;

    .prologue
    .line 646
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$CollocatedItemKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public affinityKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lorg/apache/ignite/cache/affinity/AffinityKeyMapped;
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$CollocatedItemKey;->queueName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
