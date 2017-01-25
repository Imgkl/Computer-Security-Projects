.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;
.source "IgfsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IgfsEventAwareInputStream"
.end annotation


# instance fields
.field private final closeGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/internal/processors/igfs/IgfsContext;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;IILorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;)V
    .locals 8
    .param p2, "igfsCtx"    # Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .param p3, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p4, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p5, "prefetchBlocks"    # I
    .param p6, "seqReadsBeforePrefetch"    # I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "secReader"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;
    .param p8, "metrics"    # Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    .prologue
    .line 1876
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 1877
    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;IILorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;)V

    .line 1861
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;->closeGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1879
    invoke-virtual/range {p8 .. p8}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->incrementFilesOpenedForRead()V

    .line 1880
    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7b

    .line 1885
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;->closeGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1886
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->close()V

    .line 1888
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->decrementFilesOpenedForRead()V

    .line 1890
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v6

    new-instance v0, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;->path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;->bytes()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;IJ)V

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1893
    :cond_0
    return-void
.end method
