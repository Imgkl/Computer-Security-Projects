.class Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "IgfsFragmentizerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->updateRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)Lorg/apache/ignite/lang/IgniteClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX1",
        "<",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

.field final synthetic val$range:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;->val$range:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    iput p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;->val$status:I

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 324
    check-cast p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;->applyx(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 5
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;)V

    .line 328
    .local v0, "map":Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;->val$range:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    iget v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;->val$status:I

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->updateRangeStatus(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)V

    .line 330
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated file map for range [fileId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", range="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;->val$range:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;->val$status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldMap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newMap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 334
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)V

    .line 336
    .local v1, "updated":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap(Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;)V

    .line 338
    return-object v1
.end method
