.class Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;
.super Ljava/lang/Object;
.source "GridEventStorageManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/internal/GPR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->remoteEventsAsync(Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;J)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

.field final synthetic val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

.field final synthetic val$nodes:Ljava/util/Collection;

.field final synthetic val$p:Lorg/apache/ignite/lang/IgnitePredicate;

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;J)V
    .locals 1

    .prologue
    .line 771
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;->val$p:Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object p4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;->val$nodes:Ljava/util/Collection;

    iput-wide p5, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;->val$timeout:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 774
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;->val$p:Lorg/apache/ignite/lang/IgnitePredicate;

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;->val$nodes:Ljava/util/Collection;

    iget-wide v6, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;->val$timeout:J

    # invokes: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->query(Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;J)Ljava/util/List;
    invoke-static {v2, v3, v4, v6, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$200(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;J)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :goto_0
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
