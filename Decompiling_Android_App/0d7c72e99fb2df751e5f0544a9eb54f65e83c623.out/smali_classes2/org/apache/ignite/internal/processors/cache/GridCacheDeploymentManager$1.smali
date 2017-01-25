.class Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;
.super Ljava/lang/ThreadLocal;
.source "GridCacheDeploymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)V
    .locals 0

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager.1;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;->initialValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
