.class Lcom/julysystems/appx/AppXLocationFinderDialog$2;
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
    iput-object p1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$2;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$2;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->dismiss()V

    .line 243
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$2;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    # getter for: Lcom/julysystems/appx/AppXLocationFinderDialog;->fenceListner:Lcom/julysystems/appx/AppXFenceListner;
    invoke-static {v0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->access$4(Lcom/julysystems/appx/AppXLocationFinderDialog;)Lcom/julysystems/appx/AppXFenceListner;

    move-result-object v0

    iget-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$2;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    # getter for: Lcom/julysystems/appx/AppXLocationFinderDialog;->fence:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;
    invoke-static {v1}, Lcom/julysystems/appx/AppXLocationFinderDialog;->access$5(Lcom/julysystems/appx/AppXLocationFinderDialog;)Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/julysystems/appx/AppXFenceListner;->onFenceUpdate(Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;)V

    .line 244
    return-void
.end method
