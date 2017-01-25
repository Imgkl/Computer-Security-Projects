.class public interface abstract Lorg/apache/ignite/lang/IgniteBiClosure;
.super Ljava/lang/Object;
.source "IgniteBiClosure.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E1:",
        "Ljava/lang/Object;",
        "E2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE1;TE2;)TR;"
        }
    .end annotation
.end method
