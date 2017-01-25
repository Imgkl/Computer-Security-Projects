.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
.super Ljava/lang/Object;
.source "GridCacheQueryBean.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final args:[Ljava/lang/Object;

.field private final qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field private final rdc:Lorg/apache/ignite/lang/IgniteReducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final trans:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/lang/IgniteClosure;[Ljava/lang/Object;)V
    .locals 1
    .param p2    # Lorg/apache/ignite/lang/IgniteReducer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/lang/IgniteClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .local p2, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p3, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    .line 51
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    .line 52
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    .line 53
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->args:[Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public arguments()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    return-object v0
.end method

.method public reducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method
