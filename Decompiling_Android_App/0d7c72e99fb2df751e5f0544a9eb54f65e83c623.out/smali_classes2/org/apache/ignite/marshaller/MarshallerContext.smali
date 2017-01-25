.class public interface abstract Lorg/apache/ignite/marshaller/MarshallerContext;
.super Ljava/lang/Object;
.source "MarshallerContext.java"


# virtual methods
.method public abstract getClass(ILjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract registerClass(ILjava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
