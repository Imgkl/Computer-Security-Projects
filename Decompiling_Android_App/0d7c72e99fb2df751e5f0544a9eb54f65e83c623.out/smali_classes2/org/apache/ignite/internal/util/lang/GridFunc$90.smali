.class final Lorg/apache/ignite/internal/util/lang/GridFunc$90;
.super Lorg/apache/ignite/internal/util/typedef/CA;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->as(Ljava/lang/Runnable;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3141
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$90;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CA;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 3143
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$90;->val$r:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3144
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$90;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3145
    :cond_0
    return-void
.end method
