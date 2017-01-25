.class Lcom/julysystems/appx/AppXOverlay$3;
.super Ljava/lang/Object;
.source "AppXOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXOverlay;->showOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXOverlay;

.field private final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXOverlay;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXOverlay$3;->this$0:Lcom/julysystems/appx/AppXOverlay;

    iput-object p2, p0, Lcom/julysystems/appx/AppXOverlay$3;->val$root:Landroid/view/View;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/julysystems/appx/AppXOverlay$3;->this$0:Lcom/julysystems/appx/AppXOverlay;

    iget-object v1, p0, Lcom/julysystems/appx/AppXOverlay$3;->val$root:Landroid/view/View;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/julysystems/appx/AppXOverlay;->showAtLocation(Landroid/view/View;III)V

    .line 282
    return-void
.end method
