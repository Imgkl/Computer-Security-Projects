.class Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$2;
.super Ljava/lang/Object;
.source "IgfsMetaManager.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->pendingDeletes()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;",
        "Lorg/apache/ignite/lang/IgniteUuid;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)V
    .locals 0

    .prologue
    .line 1283
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1283
    check-cast p1, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$2;->apply(Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .prologue
    .line 1285
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method
