.class Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;
.super Ljava/lang/Object;
.source "GridEventStorageManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->query(Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

.field final synthetic val$qryMux:Ljava/lang/Object;

.field final synthetic val$uids:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 817
    const-class v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;->val$qryMux:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;->val$uids:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 3
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 819
    sget-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 821
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;->val$qryMux:Ljava/lang/Object;

    monitor-enter v1

    .line 822
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;->val$uids:Ljava/util/Set;

    check-cast p1, Lorg/apache/ignite/events/DiscoveryEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 824
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;->val$uids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;->val$qryMux:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 826
    :cond_1
    monitor-exit v1

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
