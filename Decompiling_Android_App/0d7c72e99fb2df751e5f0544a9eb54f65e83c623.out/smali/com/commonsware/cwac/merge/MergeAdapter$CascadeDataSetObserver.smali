.class Lcom/commonsware/cwac/merge/MergeAdapter$CascadeDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "MergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/cwac/merge/MergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CascadeDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/cwac/merge/MergeAdapter;


# direct methods
.method private constructor <init>(Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/commonsware/cwac/merge/MergeAdapter$CascadeDataSetObserver;->this$0:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/commonsware/cwac/merge/MergeAdapter;Lcom/commonsware/cwac/merge/MergeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .param p2, "x1"    # Lcom/commonsware/cwac/merge/MergeAdapter$1;

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/merge/MergeAdapter$CascadeDataSetObserver;-><init>(Lcom/commonsware/cwac/merge/MergeAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter$CascadeDataSetObserver;->this$0:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->notifyDataSetChanged()V

    .line 473
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter$CascadeDataSetObserver;->this$0:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->notifyDataSetInvalidated()V

    .line 478
    return-void
.end method
