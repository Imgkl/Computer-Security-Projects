.class public Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsThread;
.source "IgfsDeleteWorker.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FREQUENCY:J = 0x3e8L

.field private static final MAX_DELETE_BATCH:I = 0x64


# instance fields
.field private volatile cancelled:Z

.field private final cond:Ljava/util/concurrent/locks/Condition;

.field private final data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

.field private final evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

.field private force:Z

.field private final igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

.field private topic:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;)V
    .locals 3
    .param p1, "igfsCtx"    # Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .prologue
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "igfs-delete-worker%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsThread;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->lock:Ljava/util/concurrent/locks/Lock;

    .line 68
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->cond:Ljava/util/concurrent/locks/Condition;

    .line 87
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .line 89
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->meta()Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    .line 90
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .line 92
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .line 94
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "igfsName":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_IGFS:Lorg/apache/ignite/internal/GridTopic;

    :goto_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->topic:Ljava/lang/Object;

    .line 98
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 96
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_IGFS:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/GridTopic;->topic(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 101
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    const-class v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    .line 102
    return-void
.end method

.method private delete()V
    .locals 9

    .prologue
    const/16 v8, 0x5d

    .line 153
    const/4 v4, 0x0

    .line 156
    .local v4, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    sget-object v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 162
    :goto_0
    if-eqz v4, :cond_3

    .line 163
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    .line 166
    .local v2, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting IGFS trash entry [name="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", fileId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 170
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->cancelled:Z

    if-nez v5, :cond_3

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->delete(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending delete confirmation message [name="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", fileId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x5d

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 176
    :cond_2
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;

    invoke-direct {v5, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;-><init>(Lorg/apache/ignite/lang/IgniteUuid;)V

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->sendDeleteMessage(Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 182
    :catch_0
    move-exception v5

    goto/16 :goto_1

    .line 158
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .end local v2    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 159
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Cannot obtain trash directory info."

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 185
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .restart local v2    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v0

    .line 186
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete entry from the trash directory: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 188
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;

    invoke-direct {v5, v2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/IgniteCheckedException;)V

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->sendDeleteMessage(Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;)V

    goto/16 :goto_1

    .line 192
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .end local v2    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private delete(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7f

    .line 203
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 204
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 207
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v2, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    .line 209
    .local v0, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v0, :cond_6

    .line 210
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    sget-object v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {p0, v2, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->deleteDirectory(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 213
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2, v3, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->delete(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    const/4 v1, 0x1

    .line 237
    :cond_2
    :goto_0
    return v1

    .line 217
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 221
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delete(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 223
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2, v3, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->delete(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    .line 225
    .local v1, "ret":Z
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 227
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    new-instance v3, Lorg/apache/ignite/events/IgfsEvent;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto :goto_0

    .line 230
    :cond_5
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing file without path info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    .end local v1    # "ret":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private deleteDirectory(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 13
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 249
    sget-boolean v11, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    if-nez p1, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 250
    :cond_0
    sget-boolean v11, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    if-nez p2, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 253
    :cond_1
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v11, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v9

    .line 255
    .local v9, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v9, :cond_3

    .line 256
    sget-boolean v11, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->$assertionsDisabled:Z

    if-nez v11, :cond_2

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 258
    :cond_2
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v10

    .line 260
    .local v10, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 323
    .end local v10    # "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    :cond_3
    :goto_0
    return-void

    .line 265
    .restart local v10    # "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    :cond_4
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v11

    const/16 v12, 0x64

    if-gt v11, v12, :cond_7

    .line 266
    move-object v1, v10

    .line 280
    .local v1, "delListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    :cond_5
    :goto_1
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 283
    .local v5, "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;*>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 284
    .local v2, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    iget-boolean v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->cancelled:Z

    if-nez v11, :cond_3

    .line 285
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 286
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    invoke-direct {p0, p2, v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->deleteDirectory(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    goto :goto_2

    .line 268
    .end local v1    # "delListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .end local v5    # "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;*>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    const/16 v11, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v1, v11, v12}, Ljava/util/HashMap;-><init>(IF)V

    .line 270
    .restart local v1    # "delListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    const/4 v6, 0x0

    .line 272
    .local v6, "i":I
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 273
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    add-int/lit8 v6, v6, 0x1

    const/16 v11, 0x64

    if-ne v6, v11, :cond_8

    goto :goto_1

    .line 288
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .end local v6    # "i":I
    .restart local v2    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .restart local v5    # "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;*>;"
    :cond_9
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v4

    .line 290
    .local v4, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v4, :cond_6

    .line 291
    sget-boolean v11, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->$assertionsDisabled:Z

    if-nez v11, :cond_a

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v11

    if-nez v11, :cond_a

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 293
    :cond_a
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v11, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delete(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_2

    .line 301
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .end local v4    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_b
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 305
    :try_start_0
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v11, p2, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->delete(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    .line 317
    .local v0, "delIds":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    if-ne v1, v10, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v11

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v12

    if-ne v11, v12, :cond_1

    goto/16 :goto_0

    .line 307
    .end local v0    # "delIds":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    :catch_0
    move-exception v8

    .line 309
    .local v8, "ignore":Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException;
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->cancelled:Z

    goto/16 :goto_0
.end method

.method private sendDeleteMessage(Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;)V
    .locals 7
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;

    .prologue
    .line 331
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 333
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCacheNodes()Ljava/util/Collection;

    move-result-object v3

    .line 335
    .local v3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 337
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->topic:Ljava/lang/Object;

    sget-object v6, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v4, v2, v5, p1, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send IGFS delete message to node [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Delete worker started."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->cancelled:Z

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->cancelled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->force:Z

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->cond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v2, 0x3e8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 116
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->force:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->cancelled:Z

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->delete()V

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 125
    :cond_2
    return-void
.end method

.method cancel()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->cancelled:Z

    .line 146
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->interrupt()V

    .line 147
    return-void
.end method

.method signal()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 134
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->force:Z

    .line 136
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
