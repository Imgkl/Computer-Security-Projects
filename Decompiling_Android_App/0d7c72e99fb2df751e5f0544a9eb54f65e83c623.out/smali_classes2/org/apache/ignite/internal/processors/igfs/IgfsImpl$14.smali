.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
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
        "Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$bufSize:I

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$seqReadsBeforePrefetch:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 989
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;II)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$bufSize:I

    iput p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$seqReadsBeforePrefetch:I

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
    .line 989
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->call()Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v13, 0x77

    .line 991
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open file for reading [path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bufSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$bufSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 994
    :cond_0
    iget v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$bufSize:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getStreamBufferSize()I

    move-result v9

    .line 996
    .local v9, "bufSize0":I
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v11

    .line 998
    .local v11, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v11, v1, :cond_4

    .line 999
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v11, v1, :cond_2

    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v11, v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 994
    .end local v9    # "bufSize0":I
    .end local v11    # "mode":Lorg/apache/ignite/igfs/IgfsMode;
    :cond_1
    iget v9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$bufSize:I

    goto :goto_0

    .line 1001
    .restart local v9    # "bufSize0":I
    .restart local v11    # "mode":Lorg/apache/ignite/igfs/IgfsMode;
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2, v3, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->openDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;

    move-result-object v10

    .line 1003
    .local v10, "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;->info()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPrefetchBlocks()I

    move-result v5

    iget v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$seqReadsBeforePrefetch:I

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;->reader()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/internal/processors/igfs/IgfsContext;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;IILorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;)V

    .line 1006
    .local v0, "os":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1007
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-direct {v2, v3, v5, v13}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    :cond_3
    move-object v12, v0

    .line 1030
    .end local v0    # "os":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;
    .end local v10    # "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;
    .local v12, "os":Ljava/lang/Object;
    :goto_1
    return-object v12

    .line 1012
    .end local v12    # "os":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v4

    .line 1014
    .local v4, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v4, :cond_5

    .line 1015
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->checkConflictWithPrimary(Lorg/apache/ignite/igfs/IgfsPath;)V
    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 1017
    new-instance v1, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1020
    :cond_5
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1021
    new-instance v1, Lorg/apache/ignite/igfs/IgfsPathIsDirectoryException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open file (not a file): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/igfs/IgfsPathIsDirectoryException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1024
    :cond_6
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPrefetchBlocks()I

    move-result v5

    iget v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$seqReadsBeforePrefetch:I

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/internal/processors/igfs/IgfsContext;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;IILorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;)V

    .line 1027
    .restart local v0    # "os":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1028
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-direct {v2, v3, v5, v13}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    :cond_7
    move-object v12, v0

    .line 1030
    .restart local v12    # "os":Ljava/lang/Object;
    goto/16 :goto_1
.end method
