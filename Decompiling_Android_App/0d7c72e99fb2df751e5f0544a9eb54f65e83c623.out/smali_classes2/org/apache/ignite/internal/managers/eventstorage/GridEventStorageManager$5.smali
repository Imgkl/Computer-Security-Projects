.class Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;
.super Ljava/lang/Object;
.source "GridEventStorageManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


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

.field final synthetic val$err:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$evts:Ljava/util/List;

.field final synthetic val$qryMux:Ljava/lang/Object;

.field final synthetic val$uids:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 830
    const-class v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Ljava/lang/Object;Ljava/util/Set;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->val$qryMux:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->val$uids:Ljava/util/Set;

    iput-object p4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->val$evts:Ljava/util/List;

    iput-object p5, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->val$err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 833
    sget-boolean v2, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 834
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 836
    :cond_1
    instance-of v2, p2, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;

    if-nez v2, :cond_2

    .line 837
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$300(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unknown message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 872
    :goto_0
    return-void

    :cond_2
    move-object v1, p2

    .line 842
    check-cast v1, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;

    .line 845
    .local v1, "res":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->eventsBytes()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 846
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$400(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->eventsBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->events(Ljava/util/Collection;)V

    .line 848
    :cond_3
    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->exceptionBytes()[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 849
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$400(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->exceptionBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->exception(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->val$qryMux:Ljava/lang/Object;

    monitor-enter v3

    .line 858
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->val$uids:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 859
    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->events()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 860
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->val$evts:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->events()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 866
    :cond_5
    :goto_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->exception()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 867
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->val$err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->exception()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 869
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->val$uids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->val$err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 870
    :cond_7
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->val$qryMux:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 871
    :cond_8
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$500(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unmarshal events query response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 863
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_9
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$600(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received duplicate response (ignoring) [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
