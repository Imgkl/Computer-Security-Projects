.class public interface abstract Lorg/apache/ignite/internal/processors/security/SecurityContext;
.super Ljava/lang/Object;
.source "SecurityContext.java"


# virtual methods
.method public abstract cacheOperationAllowed(Ljava/lang/String;Lorg/apache/ignite/plugin/security/GridSecurityPermission;)Z
.end method

.method public abstract subject()Lorg/apache/ignite/plugin/security/GridSecuritySubject;
.end method

.method public abstract systemOperationAllowed(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)Z
.end method

.method public abstract taskOperationAllowed(Ljava/lang/String;Lorg/apache/ignite/plugin/security/GridSecurityPermission;)Z
.end method
