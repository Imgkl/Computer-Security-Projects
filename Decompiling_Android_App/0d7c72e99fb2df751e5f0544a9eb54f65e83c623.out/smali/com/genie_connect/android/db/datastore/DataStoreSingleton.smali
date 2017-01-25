.class public Lcom/genie_connect/android/db/datastore/DataStoreSingleton;
.super Ljava/lang/Object;
.source "DataStoreSingleton.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 3
    .param p0, "ignored"    # Landroid/content/Context;

    .prologue
    .line 45
    const-class v1, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    const-class v2, Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v0, v2}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/datastore/Datastore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
