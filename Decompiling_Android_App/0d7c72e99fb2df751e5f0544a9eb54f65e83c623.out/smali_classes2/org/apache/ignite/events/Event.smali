.class public interface abstract Lorg/apache/ignite/events/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/events/Event;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract id()Lorg/apache/ignite/lang/IgniteUuid;
.end method

.method public abstract localOrder()J
.end method

.method public abstract message()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract node()Lorg/apache/ignite/cluster/ClusterNode;
.end method

.method public abstract shortDisplay()Ljava/lang/String;
.end method

.method public abstract timestamp()J
.end method

.method public abstract type()I
.end method
