.class Lcom/julysystems/appx/AppXLocationFinderDialog$1;
.super Ljava/lang/Object;
.source "AppXLocationFinderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXLocationFinderDialog;->loadUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXLocationFinderDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$1;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$1;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->showLoader()V

    .line 216
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$1;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    iget-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$1;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    # getter for: Lcom/julysystems/appx/AppXLocationFinderDialog;->highAccuracy:Z
    invoke-static {v1}, Lcom/julysystems/appx/AppXLocationFinderDialog;->access$2(Lcom/julysystems/appx/AppXLocationFinderDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXLocationFinderDialog;->checkFencing(Z)V

    .line 217
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$1;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    # getter for: Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->access$0(Lcom/julysystems/appx/AppXLocationFinderDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$1;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    # getter for: Lcom/julysystems/appx/AppXLocationFinderDialog;->retry:Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;
    invoke-static {v1}, Lcom/julysystems/appx/AppXLocationFinderDialog;->access$3(Lcom/julysystems/appx/AppXLocationFinderDialog;)Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    return-void
.end method
