.class public interface abstract Lorg/apache/ignite/compute/gridify/GridifyArgument;
.super Ljava/lang/Object;
.source "GridifyArgument.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getMethodClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getMethodName()Ljava/lang/String;
.end method

.method public abstract getMethodParameterTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getMethodParameters()[Ljava/lang/Object;
.end method

.method public abstract getTarget()Ljava/lang/Object;
.end method
