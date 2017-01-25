.class Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$1;
.super Ljava/lang/ThreadLocal;
.source "GridCacheMvccManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/Queue",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$1;->initialValue()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method
