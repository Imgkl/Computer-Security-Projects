.class public abstract Lorg/apache/ignite/internal/util/GridSerializableMap;
.super Ljava/util/AbstractMap;
.source "GridSerializableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSerializableMap;, "Lorg/apache/ignite/internal/util/GridSerializableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method
