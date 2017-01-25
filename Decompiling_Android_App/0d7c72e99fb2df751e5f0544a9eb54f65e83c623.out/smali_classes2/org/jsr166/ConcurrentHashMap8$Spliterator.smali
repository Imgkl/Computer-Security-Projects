.class public interface abstract Lorg/jsr166/ConcurrentHashMap8$Spliterator;
.super Ljava/lang/Object;
.source "ConcurrentHashMap8.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Spliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract split()Lorg/jsr166/ConcurrentHashMap8$Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentHashMap8$Spliterator",
            "<TT;>;"
        }
    .end annotation
.end method
