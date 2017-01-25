.class public interface abstract Lorg/apache/ignite/internal/util/lang/IgniteReducer3;
.super Ljava/lang/Object;
.source "IgniteReducer3.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteOutClosure;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E1:",
        "Ljava/lang/Object;",
        "E2:",
        "Ljava/lang/Object;",
        "E3:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteOutClosure",
        "<TR;>;"
    }
.end annotation


# virtual methods
.method public abstract collect(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE1;TE2;TE3;)Z"
        }
    .end annotation
.end method
