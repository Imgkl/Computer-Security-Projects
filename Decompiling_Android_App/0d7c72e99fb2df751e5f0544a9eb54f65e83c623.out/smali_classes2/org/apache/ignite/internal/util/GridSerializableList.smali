.class public abstract Lorg/apache/ignite/internal/util/GridSerializableList;
.super Ljava/util/AbstractList;
.source "GridSerializableList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
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
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSerializableList;, "Lorg/apache/ignite/internal/util/GridSerializableList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method
