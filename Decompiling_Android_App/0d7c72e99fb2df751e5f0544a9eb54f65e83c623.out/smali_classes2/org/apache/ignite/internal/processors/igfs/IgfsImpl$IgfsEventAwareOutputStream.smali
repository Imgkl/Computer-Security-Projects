.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;
.source "IgfsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IgfsEventAwareOutputStream"
.end annotation


# instance fields
.field private final closeGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/lang/IgniteUuid;ILorg/apache/ignite/igfs/IgfsMode;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)V
    .locals 9
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p4, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p5, "bufSize"    # I
    .param p6, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "batch"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    .prologue
    .line 1836
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .line 1837
    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v1

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v8

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/lang/IgniteUuid;ILorg/apache/ignite/igfs/IgfsMode;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;)V

    .line 1823
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;->closeGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1839
    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->incrementFilesOpenedForWrite()V

    .line 1840
    return-void
.end method


# virtual methods
.method protected onClose()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7a

    .line 1845
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;->closeGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->onClose()V

    .line 1848
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->decrementFilesOpenedForWrite()V

    .line 1850
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1851
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v6

    new-instance v0, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;->path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;->bytes()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;IJ)V

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1853
    :cond_0
    return-void
.end method
