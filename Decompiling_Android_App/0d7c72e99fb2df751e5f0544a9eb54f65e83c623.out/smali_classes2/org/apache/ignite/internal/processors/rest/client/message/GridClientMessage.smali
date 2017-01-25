.class public interface abstract Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
.super Ljava/lang/Object;
.source "GridClientMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract clientId()Ljava/util/UUID;
.end method

.method public abstract clientId(Ljava/util/UUID;)V
.end method

.method public abstract destinationId()Ljava/util/UUID;
.end method

.method public abstract destinationId(Ljava/util/UUID;)V
.end method

.method public abstract requestId()J
.end method

.method public abstract requestId(J)V
.end method

.method public abstract sessionToken([B)V
.end method

.method public abstract sessionToken()[B
.end method
