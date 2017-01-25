.class Lcom/julysystems/appx/AppXOverlay$2;
.super Ljava/lang/Object;
.source "AppXOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXOverlay;->loadAppXOverLay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXOverlay;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXOverlay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXOverlay$2;->this$0:Lcom/julysystems/appx/AppXOverlay;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/julysystems/appx/AppXOverlay$2;->this$0:Lcom/julysystems/appx/AppXOverlay;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXOverlay;->dismiss()V

    .line 183
    return-void
.end method
