.class Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$2;
.super Ljava/lang/Object;
.source "GridClientPartitionAffinity.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/GridClientPredicate",
        "<",
        "Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$2;->this$0:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p1, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$2;->apply(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;)Z
    .locals 2
    .param p1, "info"    # Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$2;->this$0:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;

    # getter for: Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->backupFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;
    invoke-static {v0}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->access$000(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;)Lorg/apache/ignite/internal/client/GridClientPredicate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$2;->this$0:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;

    # getter for: Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->backupFilter:Lorg/apache/ignite/internal/client/GridClientPredicate;
    invoke-static {v0}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;->access$000(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;)Lorg/apache/ignite/internal/client/GridClientPredicate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$NodeInfo;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/client/GridClientPredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
