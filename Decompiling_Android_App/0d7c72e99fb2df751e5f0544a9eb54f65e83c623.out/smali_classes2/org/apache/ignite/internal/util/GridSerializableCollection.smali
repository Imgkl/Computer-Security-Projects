.class public abstract Lorg/apache/ignite/internal/util/GridSerializableCollection;
.super Ljava/util/AbstractCollection;
.source "GridSerializableCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
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
    .line 28
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSerializableCollection;, "Lorg/apache/ignite/internal/util/GridSerializableCollection<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method
