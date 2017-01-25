.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->append(Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;
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

.field final synthetic val$bufSize:I

.field final synthetic val$create:Z

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1179
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)V
    .locals 0

    .prologue
    .line 1179
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$bufSize:I

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$create:Z

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$props:Ljava/util/Map;

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
    .line 1179
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->call()Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1181
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1182
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open file for appending [path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bufSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$bufSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", create="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$create:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", props="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$props:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1185
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v7

    .line 1189
    .local v7, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v7, v1, :cond_3

    .line 1190
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v7, v1, :cond_1

    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v7, v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1192
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->await([Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$bufSize:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->appendDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;

    move-result-object v17

    .line 1196
    .local v17, "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->out()Ljava/io/OutputStream;

    move-result-object v3

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->newBatch(Lorg/apache/ignite/igfs/IgfsPath;Ljava/io/OutputStream;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Ljava/io/OutputStream;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    move-result-object v8

    .line 1198
    .local v8, "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->info()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->parentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$bufSize:I

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getStreamBufferSize()I

    move-result v6

    :goto_0
    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/lang/IgniteUuid;ILorg/apache/ignite/igfs/IgfsMode;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)V

    .line 1240
    .end local v8    # "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .end local v17    # "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    :goto_1
    return-object v1

    .line 1198
    .restart local v8    # "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .restart local v17    # "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$bufSize:I

    goto :goto_0

    .line 1202
    .end local v8    # "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .end local v17    # "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileIds(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/List;

    move-result-object v18

    .line 1204
    .local v18, "ids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v2

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v12

    .line 1207
    .local v12, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteUuid;

    move-object v13, v1

    .line 1209
    .local v13, "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    :goto_2
    if-nez v12, :cond_8

    .line 1210
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$create:Z

    if-nez v1, :cond_5

    .line 1211
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->checkConflictWithPrimary(Lorg/apache/ignite/igfs/IgfsPath;)V
    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 1213
    new-instance v1, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1207
    .end local v13    # "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 1216
    .restart local v13    # "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_5
    if-nez v13, :cond_6

    .line 1217
    new-instance v1, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve parent directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1219
    :cond_6
    new-instance v12, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .end local v12    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getBlockSize()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evictExclude(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$props:Ljava/util/Map;

    invoke-direct {v12, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ILorg/apache/ignite/lang/IgniteUuid;ZLjava/util/Map;)V

    .line 1221
    .restart local v12    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13, v2, v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->putIfAbsent(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v19

    .line 1223
    .local v19, "oldId":Lorg/apache/ignite/lang/IgniteUuid;
    if-eqz v19, :cond_7

    .line 1224
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v12

    .line 1226
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    const/16 v2, 0x74

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1227
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/events/IgfsEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    const/16 v5, 0x74

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1230
    .end local v19    # "oldId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_8
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->$assertionsDisabled:Z

    if-nez v1, :cond_9

    if-nez v12, :cond_9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1232
    :cond_9
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1233
    new-instance v1, Lorg/apache/ignite/igfs/IgfsPathIsDirectoryException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open file (not a file): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/igfs/IgfsPathIsDirectoryException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1235
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v1

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lock(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v12

    .line 1237
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1238
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/events/IgfsEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    const/16 v5, 0x78

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1240
    :cond_b
    new-instance v9, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$bufSize:I

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getStreamBufferSize()I

    move-result v14

    :goto_3
    const/16 v16, 0x0

    move-object v15, v7

    invoke-direct/range {v9 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/lang/IgniteUuid;ILorg/apache/ignite/igfs/IgfsMode;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)V

    move-object v1, v9

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;->val$bufSize:I

    goto :goto_3
.end method
