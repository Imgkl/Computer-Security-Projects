.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->create0(Lorg/apache/ignite/igfs/IgfsPath;IZLorg/apache/ignite/lang/IgniteUuid;ILjava/util/Map;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/apache/ignite/igfs/IgfsOutputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$affKey:Lorg/apache/ignite/lang/IgniteUuid;

.field final synthetic val$bufSize:I

.field final synthetic val$overwrite:Z

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$props:Ljava/util/Map;

.field final synthetic val$replication:I

.field final synthetic val$simpleCreate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1076
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;ZILorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0

    .prologue
    .line 1076
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$bufSize:I

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$overwrite:Z

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$props:Ljava/util/Map;

    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$simpleCreate:Z

    iput p7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$replication:I

    iput-object p8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1076
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->call()Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1079
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Open file for writing [path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bufSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$bufSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", overwrite="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$overwrite:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", props="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$props:Ljava/util/Map;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1082
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static {v3, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v16

    .line 1086
    .local v16, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    sget-object v3, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_4

    .line 1087
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    sget-object v3, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_1

    sget-object v3, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1089
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    aput-object v10, v7, v8

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->await([Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$simpleCreate:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$props:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$overwrite:Z

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$bufSize:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$replication:I

    int-to-short v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->groupBlockSize()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$affKey:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual/range {v2 .. v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->createDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;ZLjava/util/Map;ZISJLorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;

    move-result-object v18

    .line 1094
    .local v18, "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->out()Ljava/io/OutputStream;

    move-result-object v8

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->newBatch(Lorg/apache/ignite/igfs/IgfsPath;Ljava/io/OutputStream;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    invoke-static {v3, v7, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Ljava/io/OutputStream;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    move-result-object v9

    .line 1096
    .local v9, "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->info()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->parentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$bufSize:I

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getStreamBufferSize()I

    move-result v7

    :goto_0
    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/lang/IgniteUuid;ILorg/apache/ignite/igfs/IgfsMode;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)V

    .line 1099
    .local v2, "os":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v7, 0x78

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1100
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    new-instance v7, Lorg/apache/ignite/events/IgfsEvent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v10

    const/16 v11, 0x78

    invoke-direct {v7, v8, v10, v11}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1163
    .end local v9    # "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .end local v18    # "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    :cond_2
    :goto_1
    return-object v2

    .line 1096
    .end local v2    # "os":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;
    .restart local v9    # "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .restart local v18    # "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$bufSize:I

    goto :goto_0

    .line 1106
    .end local v9    # "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .end local v18    # "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v21

    .line 1109
    .local v21, "parent":Lorg/apache/ignite/igfs/IgfsPath;
    if-eqz v21, :cond_5

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$props:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->mkdirs(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V

    .line 1112
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileIds(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/List;

    move-result-object v19

    .line 1115
    .local v19, "ids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x2

    if-lt v3, v7, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteUuid;

    move-object v4, v3

    .line 1117
    .local v4, "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    :goto_2
    if-nez v4, :cond_7

    .line 1118
    new-instance v3, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to resolve parent directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1115
    .end local v4    # "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1120
    .restart local v4    # "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v5

    .line 1123
    .local v5, "fileName":Ljava/lang/String;
    new-instance v13, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getBlockSize()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$affKey:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evictExclude(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$props:Ljava/util/Map;

    invoke-direct {v13, v3, v7, v8, v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ILorg/apache/ignite/lang/IgniteUuid;ZLjava/util/Map;)V

    .line 1127
    .local v13, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->putIfAbsent(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    .line 1129
    .local v6, "oldId":Lorg/apache/ignite/lang/IgniteUuid;
    if-nez v6, :cond_a

    .line 1152
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v7, 0x74

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    new-instance v7, Lorg/apache/ignite/events/IgfsEvent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v10

    const/16 v11, 0x74

    invoke-direct {v7, v8, v10, v11}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1155
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v3

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lock(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v13

    .line 1157
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$bufSize:I

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getStreamBufferSize()I

    move-result v15

    :goto_4
    const/16 v17, 0x0

    move-object v10, v2

    move-object v14, v4

    invoke-direct/range {v10 .. v17}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/lang/IgniteUuid;ILorg/apache/ignite/igfs/IgfsMode;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)V

    .line 1160
    .restart local v2    # "os":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v7, 0x78

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    new-instance v7, Lorg/apache/ignite/events/IgfsEvent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v10

    const/16 v11, 0x78

    invoke-direct {v7, v8, v10, v11}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto/16 :goto_1

    .line 1132
    .end local v2    # "os":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$overwrite:Z

    if-nez v3, :cond_b

    .line 1133
    new-instance v3, Lorg/apache/ignite/igfs/IgfsPathAlreadyExistsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create file (file already exists): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/ignite/igfs/IgfsPathAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1136
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v20

    .line 1138
    .local v20, "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->$assertionsDisabled:Z

    if-nez v3, :cond_c

    if-nez v20, :cond_c

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1140
    :cond_c
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1141
    new-instance v3, Lorg/apache/ignite/igfs/IgfsPathAlreadyExistsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create file (path points to a directory): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/ignite/igfs/IgfsPathAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1146
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;ZLorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;)V

    const/4 v7, 0x0

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->deleteFile(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Z)V
    invoke-static {v10, v11, v3, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Z)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v7, 0x76

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    new-instance v7, Lorg/apache/ignite/events/IgfsEvent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v10

    const/16 v11, 0x76

    invoke-direct {v7, v8, v10, v11}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto/16 :goto_3

    .line 1157
    .end local v20    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;->val$bufSize:I

    goto/16 :goto_4
.end method
