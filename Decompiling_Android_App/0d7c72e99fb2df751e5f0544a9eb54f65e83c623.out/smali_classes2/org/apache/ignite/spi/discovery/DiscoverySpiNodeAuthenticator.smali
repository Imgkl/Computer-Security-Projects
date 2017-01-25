.class public interface abstract Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;
.super Ljava/lang/Object;
.source "DiscoverySpiNodeAuthenticator.java"


# virtual methods
.method public abstract authenticateNode(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)Lorg/apache/ignite/internal/processors/security/SecurityContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract isGlobalNodeAuthentication()Z
.end method
