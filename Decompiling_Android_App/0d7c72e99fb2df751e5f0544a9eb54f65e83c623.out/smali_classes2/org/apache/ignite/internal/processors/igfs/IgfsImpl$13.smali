.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->listFiles(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;
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
        "Lorg/apache/ignite/igfs/IgfsFile;",
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
    .line 912
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

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
    .line 912
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->call()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Collection;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List directory details: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 917
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static {v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v16

    .line 919
    .local v16, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->resolveChildrenModes(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Set;

    move-result-object v10

    .line 921
    .local v10, "childrenModes":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/igfs/IgfsMode;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 923
    .local v13, "files":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsFile;>;"
    sget-object v3, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 924
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 926
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {v3, v4}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->listFiles(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;

    move-result-object v9

    .line 928
    .local v9, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsFile;>;"
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/igfs/IgfsFile;

    .line 929
    .local v8, "child":Lorg/apache/ignite/igfs/IgfsFile;
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-interface {v8}, Lorg/apache/ignite/igfs/IgfsFile;->blockSize()I

    move-result v3

    invoke-interface {v8}, Lorg/apache/ignite/igfs/IgfsFile;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v7, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evictExclude(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v6

    invoke-interface {v8}, Lorg/apache/ignite/igfs/IgfsFile;->properties()Ljava/util/Map;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(IJZLjava/util/Map;)V

    .line 932
    .local v2, "fsInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;

    invoke-interface {v8}, Lorg/apache/ignite/igfs/IgfsFile;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->groupBlockSize()J

    move-result-wide v6

    invoke-direct {v3, v4, v2, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)V

    invoke-interface {v13, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 936
    .end local v2    # "fsInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v8    # "child":Lorg/apache/ignite/igfs/IgfsFile;
    .end local v9    # "children":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsFile;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    .line 938
    .local v12, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    if-eqz v12, :cond_6

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v15

    .line 942
    .local v15, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v15, :cond_4

    .line 943
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 945
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->groupBlockSize()J

    move-result-wide v6

    invoke-direct {v3, v4, v15, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)V

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v13

    .line 962
    .end local v13    # "files":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsFile;>;"
    .end local v15    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_4
    return-object v13

    .line 949
    .restart local v13    # "files":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsFile;>;"
    .restart local v15    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_5
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 950
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    new-instance v17, Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v3}, Lorg/apache/ignite/igfs/IgfsPath;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Ljava/lang/String;)V

    .line 952
    .local v17, "p":Lorg/apache/ignite/igfs/IgfsPath;
    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->groupBlockSize()J

    move-result-wide v6

    move-object/from16 v0, v17

    invoke-direct {v4, v0, v3, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;J)V

    invoke-interface {v13, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 956
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v17    # "p":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_6
    sget-object v3, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_4

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->checkConflictWithPrimary(Lorg/apache/ignite/igfs/IgfsPath;)V
    invoke-static {v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 959
    new-instance v3, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to list files (path not found): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
