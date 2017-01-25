.class public interface abstract Lorg/apache/ignite/plugin/security/GridSecuritySubject;
.super Ljava/lang/Object;
.source "GridSecuritySubject.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract address()Ljava/net/InetSocketAddress;
.end method

.method public abstract id()Ljava/util/UUID;
.end method

.method public abstract login()Ljava/lang/Object;
.end method

.method public abstract permissions()Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;
.end method

.method public abstract type()Lorg/apache/ignite/plugin/security/GridSecuritySubjectType;
.end method
