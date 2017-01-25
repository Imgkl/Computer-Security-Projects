.class Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
.super Ljava/lang/Object;
.source "MergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/cwac/merge/MergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PieceState"
.end annotation


# instance fields
.field adapter:Landroid/widget/ListAdapter;

.field isActive:Z


# direct methods
.method constructor <init>(Landroid/widget/ListAdapter;Z)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "isActive"    # Z

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->isActive:Z

    .line 400
    iput-object p1, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->adapter:Landroid/widget/ListAdapter;

    .line 401
    iput-boolean p2, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->isActive:Z

    .line 402
    return-void
.end method
