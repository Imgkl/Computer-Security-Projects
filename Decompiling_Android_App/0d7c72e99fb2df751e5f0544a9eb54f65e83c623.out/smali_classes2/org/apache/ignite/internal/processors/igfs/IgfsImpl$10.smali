.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delete(Lorg/apache/ignite/igfs/IgfsPath;Z)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$recursive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 692
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Z)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$recursive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x7e

    const/16 v8, 0x76

    .line 694
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 695
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting file [path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", recursive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$recursive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 697
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v2

    .line 699
    .local v2, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->resolveChildrenModes(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Set;

    move-result-object v0

    .line 701
    .local v0, "childrenModes":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/igfs/IgfsMode;>;"
    const/4 v3, 0x0

    .line 703
    .local v3, "res":Z
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->getFileDescriptor(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    move-result-object v1

    .line 705
    .local v1, "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    sget-object v4, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 706
    if-eqz v1, :cond_3

    .line 707
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v5}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v5

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$recursive:Z

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delete0(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Lorg/apache/ignite/igfs/IgfsPath;Z)Z
    invoke-static {v4, v1, v5, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v3

    .line 712
    :cond_1
    :goto_0
    sget-object v4, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 713
    :cond_2
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 708
    :cond_3
    sget-object v4, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    if-ne v2, v4, :cond_1

    .line 709
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->checkConflictWithPrimary(Lorg/apache/ignite/igfs/IgfsPath;)V
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    goto :goto_0

    .line 715
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->await([Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 717
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$recursive:Z

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->deleteDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 721
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    .line 722
    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->isFile:Z
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 723
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 724
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 730
    :cond_6
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 726
    :cond_7
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 727
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-direct {v5, v6, v7, v9}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 692
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
