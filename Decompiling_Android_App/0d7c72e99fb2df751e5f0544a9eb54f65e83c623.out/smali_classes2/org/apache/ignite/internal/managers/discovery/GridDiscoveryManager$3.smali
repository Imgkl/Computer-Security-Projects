.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$3;
.super Ljava/lang/Object;
.source "GridDiscoveryManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$3;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticateNode(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)Lorg/apache/ignite/internal/processors/security/SecurityContext;
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "cred"    # Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$3;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->authenticateNode(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public isGlobalNodeAuthentication()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$3;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->isGlobalNodeAuthentication()Z

    move-result v0

    return v0
.end method
