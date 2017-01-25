.class public abstract Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
.super Ljava/lang/Object;
.source "GridAbsClosure.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteRunnable;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply()V
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridAbsClosure;->apply()V

    .line 51
    return-void
.end method
