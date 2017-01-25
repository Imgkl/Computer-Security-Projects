.class public abstract Lorg/apache/ignite/internal/util/GridSerializableSet;
.super Ljava/util/AbstractSet;
.source "GridSerializableSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
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
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSerializableSet;, "Lorg/apache/ignite/internal/util/GridSerializableSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method
