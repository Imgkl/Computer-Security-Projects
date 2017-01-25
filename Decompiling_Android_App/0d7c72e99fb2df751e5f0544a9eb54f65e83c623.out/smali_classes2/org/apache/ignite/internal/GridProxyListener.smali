.class public interface abstract Lorg/apache/ignite/internal/GridProxyListener;
.super Ljava/lang/Object;
.source "GridProxyListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract afterCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract beforeCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
