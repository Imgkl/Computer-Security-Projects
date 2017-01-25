.class Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;
.super Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;
.source "GridServiceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->onUpdated(Ljava/lang/Iterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;

.field final synthetic val$assignCol:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;Ljava/lang/Iterable;)V
    .locals 2

    .prologue
    .line 1176
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;->val$assignCol:Ljava/lang/Iterable;

    iget-object v0, p1, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;)V

    return-void
.end method


# virtual methods
.method public run0()V
    .locals 10

    .prologue
    .line 1178
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;->val$assignCol:Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/cache/event/CacheEntryEvent;

    .line 1179
    .local v2, "e":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<**>;"
    invoke-virtual {v2}, Ljavax/cache/event/CacheEntryEvent;->getKey()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    if-eqz v8, :cond_0

    .line 1182
    invoke-virtual {v2}, Ljavax/cache/event/CacheEntryEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;

    .line 1184
    .local v0, "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    if-eqz v0, :cond_1

    .line 1185
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;

    iget-object v8, v8, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;

    move-result-object v8

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1187
    const/4 v6, 0x0

    .line 1190
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_0
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;

    iget-object v8, v8, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->redeploy(Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;)V
    invoke-static {v8, v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$4200(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :goto_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;

    iget-object v8, v8, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;

    .line 1198
    .local v3, "fut":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v8

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/services/ServiceConfiguration;->equalsIgnoreNodeFilter(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1199
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;

    iget-object v8, v8, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1202
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 1192
    .end local v3    # "fut":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;
    :catch_0
    move-exception v7

    .line 1193
    .local v7, "th":Ljava/lang/Throwable;
    :goto_2
    move-object v6, v7

    goto :goto_1

    .line 1207
    .end local v6    # "t":Ljava/lang/Throwable;
    .end local v7    # "th":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v2}, Ljavax/cache/event/CacheEntryEvent;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;->name()Ljava/lang/String;

    move-result-object v5

    .line 1209
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;

    iget-object v8, v8, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1213
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;

    iget-object v8, v8, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    .line 1214
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;

    iget-object v8, v8, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1215
    .local v1, "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1217
    if-eqz v1, :cond_0

    .line 1218
    monitor-enter v1

    .line 1219
    :try_start_2
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;

    iget-object v8, v8, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v9

    # invokes: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cancel(Ljava/lang/Iterable;I)V
    invoke-static {v8, v1, v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1500(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Ljava/lang/Iterable;I)V

    .line 1220
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 1215
    .end local v1    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 1224
    .end local v0    # "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .end local v2    # "e":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<**>;"
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    return-void

    .line 1192
    .restart local v0    # "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .restart local v2    # "e":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<**>;"
    .restart local v6    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    goto :goto_2
.end method
