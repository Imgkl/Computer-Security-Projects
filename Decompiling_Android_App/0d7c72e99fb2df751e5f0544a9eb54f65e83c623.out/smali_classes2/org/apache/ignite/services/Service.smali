.class public interface abstract Lorg/apache/ignite/services/Service;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract cancel(Lorg/apache/ignite/services/ServiceContext;)V
.end method

.method public abstract execute(Lorg/apache/ignite/services/ServiceContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract init(Lorg/apache/ignite/services/ServiceContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
