.class Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$1;
.super Ljava/lang/Object;
.source "GridClientPartitionAffinity.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$HashIdResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity$1;->this$0:Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHashId(Lorg/apache/ignite/internal/client/GridClientNode;)Ljava/lang/Object;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 72
    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientNode;->consistentId()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
