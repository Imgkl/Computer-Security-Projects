.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics()Lorg/apache/ignite/igfs/IgfsMetrics;
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
        "Lorg/apache/ignite/igfs/IgfsMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V
    .locals 0

    .prologue
    .line 1334
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

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
    .line 1334
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->call()Lorg/apache/ignite/igfs/IgfsMetrics;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/igfs/IgfsMetrics;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1336
    new-instance v30, Lorg/apache/ignite/igfs/IgfsPathSummary;

    invoke-direct/range {v30 .. v30}, Lorg/apache/ignite/igfs/IgfsPathSummary;-><init>()V

    .line 1338
    .local v30, "sum":Lorg/apache/ignite/igfs/IgfsPathSummary;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    sget-object v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, v30

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->summary0(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPathSummary;)V
    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1100(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPathSummary;)V

    .line 1340
    const-wide/16 v8, 0x0

    .line 1342
    .local v8, "secondarySpaceSize":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1344
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->usedSpaceSize()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 1353
    :cond_0
    :goto_0
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->spaceSize()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->maxSpaceSize()J

    move-result-wide v6

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/igfs/IgfsPathSummary;->directoriesCount()I

    move-result v10

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/igfs/IgfsPathSummary;->filesCount()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->filesOpenedForRead()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->filesOpenedForWrite()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->readBlocks()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v16, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->readBlocksSecondary()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->writeBlocks()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->writeBlocksSecondary()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v22, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->readBytes()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->readBytesTime()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->writeBytes()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->writeBytesTime()J

    move-result-wide v28

    invoke-direct/range {v3 .. v29}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;-><init>(JJJIIIIJJJJJJJJ)V

    return-object v3

    .line 1346
    :catch_0
    move-exception v2

    .line 1347
    .local v2, "e":Lorg/apache/ignite/IgniteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    const-string v4, "Failed to get secondary file system consumed space size."

    invoke-static {v3, v2, v4}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1349
    const-wide/16 v8, -0x1

    goto/16 :goto_0
.end method
