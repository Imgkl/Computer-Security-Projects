.class Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;
.super Ljava/lang/Object;
.source "IgfsMetaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathDescriptor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation
.end field

.field private parentInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

.field private parentPath:Lorg/apache/ignite/igfs/IgfsPath;

.field private final path:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2702
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/List;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "parentPath"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p4, "parentInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2723
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2724
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2725
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2726
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p3, :cond_3

    if-eqz p4, :cond_5

    :cond_3
    if-eqz p3, :cond_4

    if-nez p4, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2727
    :cond_5
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-eqz p3, :cond_7

    if-eqz p3, :cond_6

    invoke-virtual {p1, p3}, Lorg/apache/ignite/igfs/IgfsPath;->isSubDirectoryOf(Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2729
    :cond_7
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 2730
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->ids:Ljava/util/List;

    .line 2731
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->parentPath:Lorg/apache/ignite/igfs/IgfsPath;

    .line 2732
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->parentInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 2733
    return-void
.end method

.method private endId(I)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 2751
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->ids:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method private ids()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2741
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->ids:Ljava/util/List;

    return-object v0
.end method

.method private parentInfo()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 1

    .prologue
    .line 2786
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->parentInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    return-object v0
.end method

.method private parentPath()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1

    .prologue
    .line 2777
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->parentPath:Lorg/apache/ignite/igfs/IgfsPath;

    return-object v0
.end method

.method private updateParent(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V
    .locals 3
    .param p1, "newParentPath"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "newParentInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 2761
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2762
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2763
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/igfs/IgfsPath;->isSubDirectoryOf(Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2765
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->parentPath:Lorg/apache/ignite/igfs/IgfsPath;

    .line 2766
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->parentInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 2768
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;->ids:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsPath;->components()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2769
    return-void
.end method
