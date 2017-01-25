.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->listPaths(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;
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
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/igfs/IgfsPath;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 868
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

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
    .line 868
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->call()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 870
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 871
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "List directory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 873
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static {v7, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v6

    .line 875
    .local v6, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->resolveChildrenModes(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Set;

    move-result-object v2

    .line 877
    .local v2, "childrenModes":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/igfs/IgfsMode;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 879
    .local v4, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v7, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 880
    :cond_1
    sget-boolean v7, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 882
    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {v7, v8}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->listPaths(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;

    move-result-object v1

    .line 884
    .local v1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsPath;

    .line 885
    .local v0, "child":Lorg/apache/ignite/igfs/IgfsPath;
    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 888
    .end local v0    # "child":Lorg/apache/ignite/igfs/IgfsPath;
    .end local v1    # "children":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    .line 890
    .local v3, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    if-eqz v3, :cond_5

    .line 891
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->directoryListing(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 898
    :cond_4
    new-instance v7, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12$1;

    invoke-direct {v7, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;)V

    const/4 v8, 0x0

    new-array v8, v8, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v4, v7, v8}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v7

    return-object v7

    .line 892
    :cond_5
    sget-object v7, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    if-ne v6, v7, :cond_4

    .line 893
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->checkConflictWithPrimary(Lorg/apache/ignite/igfs/IgfsPath;)V
    invoke-static {v7, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 895
    new-instance v7, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to list files (path not found): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
