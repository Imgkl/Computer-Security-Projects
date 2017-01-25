.class public Lorg/apache/ignite/internal/processors/security/os/GridOsSecurityProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridOsSecurityProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 39
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/ignite/plugin/security/AuthenticationContext;)Lorg/apache/ignite/internal/processors/security/SecurityContext;
    .locals 1
    .param p1, "authCtx"    # Lorg/apache/ignite/plugin/security/AuthenticationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public authenticateNode(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)Lorg/apache/ignite/internal/processors/security/SecurityContext;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "cred"    # Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public authenticatedSubject(Ljava/util/UUID;)Lorg/apache/ignite/plugin/security/GridSecuritySubject;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public authenticatedSubjects()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/plugin/security/GridSecuritySubject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public authorize(Ljava/lang/String;Lorg/apache/ignite/plugin/security/GridSecurityPermission;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "perm"    # Lorg/apache/ignite/plugin/security/GridSecurityPermission;
    .param p3, "securityCtx"    # Lorg/apache/ignite/internal/processors/security/SecurityContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/plugin/security/GridSecurityException;
        }
    .end annotation

    .prologue
    .line 71
    return-void
.end method

.method public enabled()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isGlobalNodeAuthentication()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onSessionExpired(Ljava/util/UUID;)V
    .locals 0
    .param p1, "subjId"    # Ljava/util/UUID;

    .prologue
    .line 76
    return-void
.end method
