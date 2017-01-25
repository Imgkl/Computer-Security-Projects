.class Landroid/support/v4/app/FragmentBreadCrumbs$2;
.super Ljava/lang/Object;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentBreadCrumbs;->updateCrumbs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentBreadCrumbs;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentBreadCrumbs;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentBreadCrumbs;

    .prologue
    .line 424
    iput-object p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs$2;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs$2;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    # getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mScrollview:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$600(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 428
    return-void
.end method
