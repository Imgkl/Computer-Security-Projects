.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->mkdirs(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 786
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$props:Ljava/util/Map;

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
    .line 786
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Make directories: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 791
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$props:Ljava/util/Map;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->DFLT_DIR_META:Ljava/util/Map;
    invoke-static {}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2200()Ljava/util/Map;

    move-result-object v14

    .line 793
    .local v14, "props0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v19, v0

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v11

    .line 795
    .local v11, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    sget-object v18, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_3

    .line 796
    sget-boolean v18, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->$assertionsDisabled:Z

    if-nez v18, :cond_2

    sget-object v18, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_2

    sget-object v18, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_2

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 791
    .end local v11    # "mode":Lorg/apache/ignite/igfs/IgfsMode;
    .end local v14    # "props0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$props:Ljava/util/Map;

    goto :goto_0

    .line 798
    .restart local v11    # "mode":Lorg/apache/ignite/igfs/IgfsMode;
    .restart local v14    # "props0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->await([Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->mkdirsDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Z

    .line 802
    const/16 v18, 0x0

    .line 858
    :goto_1
    return-object v18

    .line 805
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileIds(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/List;

    move-result-object v10

    .line 806
    .local v10, "ids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/igfs/IgfsPath;->components()Ljava/util/List;

    move-result-object v3

    .line 808
    .local v3, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v18, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->$assertionsDisabled:Z

    if-nez v18, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    new-instance v18, Ljava/lang/AssertionError;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Components doesn\'t contain ROOT element [ids="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", components="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    .line 811
    :cond_4
    sget-object v13, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    .line 813
    .local v13, "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/igfs/IgfsPath;->root()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v4

    .line 815
    .local v4, "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    const/16 v16, 0x0

    .local v16, "step":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    .local v15, "size":I
    move-object v5, v4

    .end local v4    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    .local v5, "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_b

    .line 816
    add-int/lit8 v18, v16, 0x1

    move/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/lang/IgniteUuid;

    .line 818
    .local v7, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    if-nez v7, :cond_c

    .line 819
    new-instance v8, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v8, v0, v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLjava/util/Map;)V

    .line 821
    .local v8, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    move/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 823
    .local v9, "fileName":Ljava/lang/String;
    new-instance v4, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v4, v5, v9}, Lorg/apache/ignite/igfs/IgfsPath;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Ljava/lang/String;)V

    .line 827
    .end local v5    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    .restart local v4    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v9, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->putIfAbsent(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    .line 829
    .local v12, "oldId":Lorg/apache/ignite/lang/IgniteUuid;
    if-nez v12, :cond_6

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    .line 831
    :goto_3
    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v18

    const/16 v19, 0x7c

    invoke-virtual/range {v18 .. v19}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v18

    new-instance v19, Lorg/apache/ignite/events/IgfsEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v20, v0

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v20

    const/16 v21, 0x7c

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v4, v1, v2}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual/range {v18 .. v19}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .end local v8    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v12    # "oldId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_5
    :goto_4
    sget-boolean v18, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->$assertionsDisabled:Z

    if-nez v18, :cond_a

    if-nez v7, :cond_a

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .restart local v8    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v12    # "oldId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_6
    move-object v7, v12

    .line 829
    goto :goto_3

    .line 834
    .end local v12    # "oldId":Lorg/apache/ignite/lang/IgniteUuid;
    :catch_0
    move-exception v6

    .line 835
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to create directory [path="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", parentId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", fileName="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", step="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", e="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 840
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v17

    .line 842
    .local v17, "stored":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v17, :cond_8

    .line 843
    throw v6

    .line 845
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_9

    .line 846
    new-instance v18, Lorg/apache/ignite/igfs/IgfsParentNotDirectoryException;

    const-string v19, "Failed to create directory (parent element is not a directory)"

    invoke-direct/range {v18 .. v19}, Lorg/apache/ignite/igfs/IgfsParentNotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 849
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    goto/16 :goto_4

    .line 855
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v8    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v17    # "stored":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_a
    move-object v13, v7

    .line 815
    add-int/lit8 v16, v16, 0x1

    move-object v5, v4

    .end local v4    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    .restart local v5    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    goto/16 :goto_2

    .line 858
    .end local v7    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_1

    .restart local v7    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_c
    move-object v4, v5

    .end local v5    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    .restart local v4    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    goto/16 :goto_4
.end method
