.class public interface abstract Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;
.super Ljava/lang/Object;
.source "GridSecurityProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/GridProcessor;


# virtual methods
.method public abstract authenticate(Lorg/apache/ignite/plugin/security/AuthenticationContext;)Lorg/apache/ignite/internal/processors/security/SecurityContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract authenticateNode(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)Lorg/apache/ignite/internal/processors/security/SecurityContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract authenticatedSubject(Ljava/util/UUID;)Lorg/apache/ignite/plugin/security/GridSecuritySubject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract authenticatedSubjects()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/plugin/security/GridSecuritySubject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract authorize(Ljava/lang/String;Lorg/apache/ignite/plugin/security/GridSecurityPermission;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V
    .param p3    # Lorg/apache/ignite/internal/processors/security/SecurityContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/plugin/security/GridSecurityException;
        }
    .end annotation
.end method

.method public abstract enabled()Z
.end method

.method public abstract isGlobalNodeAuthentication()Z
.end method

.method public abstract onSessionExpired(Ljava/util/UUID;)V
.end method
