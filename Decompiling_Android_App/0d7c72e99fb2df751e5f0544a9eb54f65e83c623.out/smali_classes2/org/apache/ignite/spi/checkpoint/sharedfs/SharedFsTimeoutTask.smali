.class Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "SharedFsTimeoutTask.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private files:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

.field private marshaller:Lorg/apache/ignite/marshaller/Marshaller;

.field private final mux:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/ignite/marshaller/Marshaller;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "gridName"    # Ljava/lang/String;
    .param p2, "marshaller"    # Lorg/apache/ignite/marshaller/Marshaller;
    .param p3, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 62
    const-string v0, "grid-sharedfs-timeout-worker"

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->files:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->mux:Ljava/lang/Object;

    .line 64
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->marshaller:Lorg/apache/ignite/marshaller/Marshaller;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->log:Lorg/apache/ignite/IgniteLogger;

    .line 69
    return-void
.end method


# virtual methods
.method add(Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "timeData"    # Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;

    .prologue
    .line 171
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 174
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->files:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->mux:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method add(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "newFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;>;"
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 189
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->files:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 192
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->mux:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 193
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public body()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 73
    const-wide/16 v12, 0x0

    .line 75
    .local v12, "nextTime":J
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 77
    .local v16, "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_b

    .line 78
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->clear()V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->mux:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 82
    const-wide/16 v22, 0x0

    cmp-long v19, v12, v22

    if-eqz v19, :cond_3

    .line 85
    const-wide/16 v22, -0x1

    cmp-long v19, v12, v22

    if-nez v19, :cond_1

    .line 86
    const-wide/16 v4, 0x1388

    .line 93
    .local v4, "delay":J
    :goto_0
    const-wide/16 v22, 0x0

    cmp-long v19, v4, v22

    if-lez v19, :cond_3

    .line 94
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->mux:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 96
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v22

    sub-long v4, v12, v22

    goto :goto_0

    .line 88
    .end local v4    # "delay":J
    :cond_1
    sget-boolean v19, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->$assertionsDisabled:Z

    if-nez v19, :cond_2

    const-wide/16 v22, 0x0

    cmp-long v19, v12, v22

    if-gtz v19, :cond_2

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 150
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 90
    :cond_2
    :try_start_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v22

    sub-long v4, v12, v22

    .restart local v4    # "delay":J
    goto :goto_0

    .line 100
    .end local v4    # "delay":J
    :cond_3
    new-instance v17, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->files:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 102
    .local v17, "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v14

    .line 104
    .local v14, "now":J
    const-wide/16 v12, -0x1

    .line 108
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 109
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 111
    .local v8, "file":Ljava/io/File;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .local v18, "timeData":Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->getLastAccessTime()J

    move-result-wide v22

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    cmp-long v19, v22, v24

    if-eqz v19, :cond_5

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->marshaller:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v8, v0, v1}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->read(Ljava/io/File;Lorg/apache/ignite/marshaller/Marshaller;Lorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->getExpireTime()J

    move-result-wide v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->setExpireTime(J)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :cond_5
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->getExpireTime()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v19, v22, v24

    if-lez v19, :cond_4

    .line 135
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->getExpireTime()J

    move-result-wide v22

    cmp-long v19, v22, v14

    if-gtz v19, :cond_8

    .line 136
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to delete check point file by timeout: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 117
    :catch_0
    move-exception v6

    .line 118
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to marshal/unmarshal in checkpoint file: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 122
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v6

    .line 123
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->files:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->getKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 129
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to read checkpoint file: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 139
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->files:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->getKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File was deleted by timeout: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 147
    :cond_8
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->getExpireTime()J

    move-result-wide v22

    cmp-long v19, v22, v12

    if-ltz v19, :cond_9

    const-wide/16 v22, -0x1

    cmp-long v19, v12, v22

    if-nez v19, :cond_4

    .line 148
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;->getExpireTime()J

    move-result-wide v12

    goto/16 :goto_1

    .line 150
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;>;"
    .end local v8    # "file":Ljava/io/File;
    .end local v18    # "timeData":Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;
    :cond_a
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .line 154
    .local v11, "lsnr":Lorg/apache/ignite/spi/checkpoint/CheckpointListener;
    if-eqz v11, :cond_0

    .line 155
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 156
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v11, v10}, Lorg/apache/ignite/spi/checkpoint/CheckpointListener;->onCheckpointRemoved(Ljava/lang/String;)V

    goto :goto_2

    .line 159
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "lsnr":Lorg/apache/ignite/spi/checkpoint/CheckpointListener;
    .end local v14    # "now":J
    .end local v17    # "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->mux:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 160
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->files:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->clear()V

    .line 161
    monitor-exit v20

    .line 162
    return-void

    .line 161
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v19
.end method

.method remove(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 202
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->files:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method remove(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "delFiles":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    sget-boolean v2, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 217
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->mux:Ljava/lang/Object;

    monitor-enter v3

    .line 218
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 219
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->files:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 220
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    return-void
.end method

.method setCheckpointListener(Lorg/apache/ignite/spi/checkpoint/CheckpointListener;)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .prologue
    .line 229
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-class v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
