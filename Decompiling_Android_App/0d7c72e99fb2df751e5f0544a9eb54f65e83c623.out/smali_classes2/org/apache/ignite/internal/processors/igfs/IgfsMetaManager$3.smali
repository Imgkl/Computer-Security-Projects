.class Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;
.super Ljava/lang/Object;
.source "IgfsMetaManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->createDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;ZLjava/util/Map;ZISJLorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask",
        "<",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private out:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

.field final synthetic val$affKey:Lorg/apache/ignite/lang/IgniteUuid;

.field final synthetic val$blockSize:J

.field final synthetic val$bufSize:I

.field final synthetic val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

.field final synthetic val$overwrite:Z

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$pendingEvts:Ljava/util/Deque;

.field final synthetic val$props:Ljava/util/Map;

.field final synthetic val$replication:S

.field final synthetic val$simpleCreate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1614
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;ZLorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;ZISJLjava/util/Map;Ljava/util/Deque;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0

    .prologue
    .line 1614
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$simpleCreate:Z

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$overwrite:Z

    iput p6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$bufSize:I

    iput-short p7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$replication:S

    iput-wide p8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$blockSize:J

    iput-object p10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$props:Ljava/util/Map;

    iput-object p11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$pendingEvts:Ljava/util/Deque;

    iput-object p12, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1614
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->onFailure(Ljava/lang/Exception;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(Ljava/lang/Exception;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    .locals 4
    .param p1, "err"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1722
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->out:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1724
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File create in DUAL mode failed [path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simpleCreate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$simpleCreate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", props="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$props:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", overwrite="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$overwrite:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$bufSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", replication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$replication:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", blockSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$blockSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1728
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create the file due to secondary file system exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic onSuccess(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1614
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->onSuccess(Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1620
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1623
    :cond_0
    const/16 v23, 0x0

    .line 1625
    .local v23, "parentPath":Lorg/apache/ignite/igfs/IgfsPath;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/igfs/IgfsPath;

    .line 1626
    .local v16, "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    if-eqz v23, :cond_2

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/igfs/IgfsPath;->isSubDirectoryOf(Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1627
    :cond_2
    move-object/from16 v23, v16

    goto :goto_0

    .line 1630
    .end local v16    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v23, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1632
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1635
    .local v22, "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$simpleCreate:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$overwrite:Z

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->create(Lorg/apache/ignite/igfs/IgfsPath;Z)Ljava/io/OutputStream;

    move-result-object v2

    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->out:Ljava/io/OutputStream;

    .line 1638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v6

    .line 1640
    .local v6, "parent0":Lorg/apache/ignite/igfs/IgfsPath;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    if-nez v6, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path.parent() is null (are we creating ROOT?): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1635
    .end local v6    # "parent0":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$bufSize:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$overwrite:Z

    move-object/from16 v0, p0

    iget-short v7, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$replication:S

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$blockSize:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$props:Ljava/util/Map;

    invoke-interface/range {v3 .. v10}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->create(Lorg/apache/ignite/igfs/IgfsPath;IZIJLjava/util/Map;)Ljava/io/OutputStream;

    move-result-object v2

    goto :goto_1

    .line 1643
    .restart local v6    # "parent0":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_6
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/apache/ignite/igfs/IgfsPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1644
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, v23

    move-object/from16 v5, v22

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronize(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;ZLjava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-static/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;ZLjava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v22

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1648
    move-object/from16 v18, v6

    .line 1650
    .local v18, "evtPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_7
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/igfs/IgfsPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$pendingEvts:Ljava/util/Deque;

    new-instance v3, Lorg/apache/ignite/events/IgfsEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    const/16 v5, 0x7c

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v4, v5}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 1653
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v18

    .line 1655
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->$assertionsDisabled:Z

    if-nez v2, :cond_7

    if-nez v18, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1661
    .end local v18    # "evtPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {v2, v3}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v24

    .line 1663
    .local v24, "status":Lorg/apache/ignite/igfs/IgfsFile;
    if-nez v24, :cond_9

    .line 1664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open output stream to the file created in the secondary file system because it no longer exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$700(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v2

    throw v2

    .line 1666
    :cond_9
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/igfs/IgfsFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open output stream to the file created in the secondary file system because the path points to a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$700(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v2

    throw v2

    .line 1670
    :cond_a
    new-instance v8, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/igfs/IgfsFile;->blockSize()I

    move-result v9

    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/igfs/IgfsFile;->length()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->evictExclude(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v14

    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/igfs/IgfsFile;->properties()Ljava/util/Map;

    move-result-object v15

    invoke-direct/range {v8 .. v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(IJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZLjava/util/Map;)V

    .line 1674
    .local v8, "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v4}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->putIfAbsentNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v2, v3, v4, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v20

    .line 1676
    .local v20, "oldId":Lorg/apache/ignite/lang/IgniteUuid;
    if-eqz v20, :cond_c

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v21

    .line 1679
    .local v21, "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$900(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v0, v20

    invoke-interface {v2, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 1680
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$900(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, v3, v8, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 1682
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$900(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v9}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v5, v7, v2, v9, v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;ZLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    .line 1684
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$900(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v5}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-direct {v7, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v4, v5, v7, v9, v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;ZLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delete(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 1690
    .local v17, "delFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x7f

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1691
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 1709
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x76

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1710
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$pendingEvts:Ljava/util/Deque;

    new-instance v3, Lorg/apache/ignite/events/IgfsEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    const/16 v7, 0x76

    invoke-direct {v3, v4, v5, v7}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1714
    .end local v17    # "delFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    .end local v21    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x74

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$pendingEvts:Ljava/util/Deque;

    new-instance v3, Lorg/apache/ignite/events/IgfsEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    const/16 v7, 0x74

    invoke-direct {v3, v4, v5, v7}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1717
    :cond_d
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->out:Ljava/io/OutputStream;

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Ljava/io/OutputStream;)V

    return-object v2
.end method
