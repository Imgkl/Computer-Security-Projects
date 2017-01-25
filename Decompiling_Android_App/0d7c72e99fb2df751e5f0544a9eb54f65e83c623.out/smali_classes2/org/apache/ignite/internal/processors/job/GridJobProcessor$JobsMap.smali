.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;
.super Lorg/jsr166/ConcurrentLinkedHashMap;
.source "GridJobProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsr166/ConcurrentLinkedHashMap",
        "<",
        "Lorg/apache/ignite/lang/IgniteUuid;",
        "Lorg/apache/ignite/internal/processors/job/GridJobWorker;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1817
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;IFI)V
    .locals 0
    .param p2, "initCap"    # I
    .param p3, "loadFactor"    # F
    .param p4, "concurLvl"    # I

    .prologue
    .line 1823
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .line 1824
    invoke-direct {p0, p2, p3, p4}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IFI)V

    .line 1825
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;IFILorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p2, "x1"    # I
    .param p3, "x2"    # F
    .param p4, "x3"    # I
    .param p5, "x4"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;

    .prologue
    .line 1817
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;IFI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1817
    check-cast p1, Lorg/apache/ignite/lang/IgniteUuid;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;->put(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    move-result-object v0

    return-object v0
.end method

.method public put(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 1829
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1831
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jsr166/ConcurrentLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 1833
    .local v0, "old":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    if-eqz v0, :cond_1

    .line 1834
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$6800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Jobs map already contains mapping for key [key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1837
    :cond_1
    return-object v0
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1817
    check-cast p1, Lorg/apache/ignite/lang/IgniteUuid;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;->putIfAbsent(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 1842
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1844
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jsr166/ConcurrentLinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 1846
    .local v0, "old":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    if-eqz v0, :cond_1

    .line 1847
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$6900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Jobs map already contains mapping for key [key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1850
    :cond_1
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1857
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;->sizex()I

    move-result v0

    return v0
.end method
