.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->rename(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)V
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

.field final synthetic val$dest:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$src:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 589
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

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
    .line 589
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rename file [src="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dest="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v9

    .line 596
    .local v9, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->resolveChildrenModes(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Set;

    move-result-object v6

    .line 598
    .local v6, "childrenModes":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/igfs/IgfsMode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/igfs/IgfsPath;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    const/4 v0, 0x0

    .line 683
    :goto_0
    return-object v0

    .line 602
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v0

    if-nez v0, :cond_2

    .line 603
    new-instance v0, Lorg/apache/ignite/igfs/IgfsInvalidPathException;

    const-string v1, "Root directory cannot be renamed."

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsInvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/igfs/IgfsPath;->isSubDirectoryOf(Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    new-instance v0, Lorg/apache/ignite/igfs/IgfsInvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename directory (cannot move directory of upper level to self sub-dir) [src="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dest="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsInvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    if-ne v9, v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v3, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evictExclude(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    move-result-object v0

    iget-object v12, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v0

    sget-object v12, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    if-ne v0, v12, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v3, v5, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evictExclude(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v0

    if-eq v1, v0, :cond_6

    .line 611
    new-instance v0, Lorg/apache/ignite/igfs/IgfsInvalidPathException;

    const-string v1, "Cannot move file to a path with different eviction exclude setting (need to copy and remove)"

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsInvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 614
    :cond_6
    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 615
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v9, v0, :cond_7

    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v9, v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 617
    :cond_7
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    aput-object v5, v1, v3

    const/4 v3, 0x1

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    aput-object v5, v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->await([Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 619
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, v1, v3, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->renameDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)Z

    .line 621
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 624
    :cond_8
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v8

    .line 627
    .local v8, "destParent":Lorg/apache/ignite/igfs/IgfsPath;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->getFileDescriptor(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    move-result-object v11

    .line 630
    .local v11, "srcDesc":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    if-eqz v11, :cond_9

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    if-nez v0, :cond_b

    .line 631
    :cond_9
    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    if-ne v9, v0, :cond_a

    .line 632
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->checkConflictWithPrimary(Lorg/apache/ignite/igfs/IgfsPath;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 634
    :cond_a
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename (source path not found): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_b
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, "srcFileName":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->getFileDescriptor(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    move-result-object v7

    .line 644
    .local v7, "destDesc":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    if-nez v7, :cond_c

    const/4 v10, 0x1

    .line 646
    .local v10, "newDest":Z
    :goto_3
    if-eqz v10, :cond_f

    .line 647
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    if-nez v8, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 644
    .end local v10    # "newDest":Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_3

    .line 650
    .restart local v10    # "newDest":Z
    :cond_d
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->getFileDescriptor(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    invoke-static {v0, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    move-result-object v7

    .line 653
    if-nez v7, :cond_e

    .line 654
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename (destination directory does not exist): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_e
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, "destFileName":Ljava/lang/String;
    :goto_4
    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->isFile:Z
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 665
    new-instance v0, Lorg/apache/ignite/igfs/IgfsParentNotDirectoryException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename (destination is not a directory): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsParentNotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    .end local v4    # "destFileName":Ljava/lang/String;
    :cond_f
    move-object v4, v2

    .restart local v4    # "destFileName":Ljava/lang/String;
    goto :goto_4

    .line 668
    :cond_10
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->move(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 670
    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->isFile:Z
    invoke-static {v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 671
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 672
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    new-instance v3, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    if-eqz v10, :cond_12

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    :goto_5
    iget-object v12, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v12

    const/16 v13, 0x75

    invoke-direct {v3, v5, v0, v12, v13}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 683
    :cond_11
    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 672
    :cond_12
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v12, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v0, v12, v4}, Lorg/apache/ignite/igfs/IgfsPath;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Ljava/lang/String;)V

    goto :goto_5

    .line 679
    :cond_13
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 680
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v12, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v12

    const/16 v13, 0x7d

    invoke-direct {v1, v3, v5, v12, v13}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto :goto_6
.end method
